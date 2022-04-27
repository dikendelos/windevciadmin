import { Component, OnInit } from '@angular/core';
// import { ThemeConstantService } from '../../shared/services/theme-constant.service';

import { LicenceService } from 'src/app/shared/services/licence/licence.service';
import { ProduitService } from 'src/app/shared/services/produit/produit.service';
// import { Licence } from 'src/app/shared/interfaces/perso/licence.type';
import { Produit } from 'src/app/shared/interfaces/perso/structure';
import { first } from 'rxjs/operators';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { NotifService } from 'src/app/shared/services/notif.service';


@Component({
    templateUrl: './produits.component.html',
    styles: [`      
    .save {
        margin-right: 8px;
      }

      nz-select {
        width: 100%;
    }
    `]
})

export class ProduitsComponent implements OnInit {

    constructor(
        private LicenceService: LicenceService,
        private produitService: ProduitService,
        private notif: NotifService,
        private fb: FormBuilder,
    ) { }
    // Variable proruits
    selectedValue = null;
    invalid = 'FormControl';
    loading = false
    listOfOption: Array<{ value: number; text: string }> = [];
    nzFilterOption = () => true;
    // End variable proruits
    T_licence = [];



    editCache: { [key: string]: { edit: boolean; data: Produit } } = {};
    listOfData: Produit[] = [];
    dataForm: FormGroup;

    startEdit(id: string): void {
        console.log('data.id : ', id);
        this.editCache[id].edit = true;
    }

    cancelEdit(id: string): void {
        const index = this.listOfData.findIndex(item => item.id.toString() == id);
        this.editCache[id] = {
            data: { ...this.listOfData[index] },
            edit: false
        };
    }

    saveEdit(id: string): void {
        console.log('index : ', id);
        const index = this.listOfData.findIndex((item) => {
            // console.log('item ==> ', item);
            return item.id.toString() == id
        });
        console.log('data adding : ', this.editCache[id].data);

        Object.assign(this.listOfData[index], this.editCache[id].data);
        this.updateProduit(id, this.editCache[id].data)
    }

    setValeurAffichee(id, id_ligne) {
        console.log('even :: ', id, id_ligne);
        const obj = this.T_licence.find(l => l.id == id)
        console.log('obj : ', obj)
        console.log('data : : ', this.editCache[id_ligne].data)
        this.editCache[id_ligne].data.lience = obj.libelle
        //  = 
        // libelle
    }

    updateEditCache(): void {
        this.listOfData.forEach(item => {
            this.editCache[item.id] = {
                edit: false,
                data: { ...item }
            };
        });
    }

    deleteRow(id: string): void {
        console.log('id : ', id);
        this.deleteProduit(id);
    }

    ngOnInit(): void {
        this.dataForm = this.fb.group({
            extrat_titre: [null, [Validators.required]],
            nom_produit: [null, [Validators.required]],
            description: [null, [Validators.required]],
            licence_id: [null, [Validators.required]]
        });

        this.getAllLicence()
        this.getProduits();
    }

    addRow(): void {
        for (const i in this.dataForm.controls) {
            this.dataForm.controls[i].markAsDirty();
            this.dataForm.controls[i].updateValueAndValidity();
        }

        if (this.dataForm.invalid) {
            console.log('statut formulaire : ', this.dataForm.status);
            this.invalid = 'error'
            return;
        }


        const data = this.dataForm.value;
        console.log('dataToPost : ', data);

        this.addProduit(data)

    }

    getProduits(): void {
        this.produitService.getAll()
            // .pipe(first())
            .subscribe({
                next: (resp) => {
                    console.log('response : ', resp);
                    if (resp.status !== 200) {
                        console.log('response : ', resp);
                        return;
                    }
                    this.listOfData = resp.contenu;
                    this.updateEditCache();
                },
                error: error => {
                    console.log(`Erreur : `, error);
                    this.notif.affiche('error', 'Erreur interne du serveur. ')
                }
            });
    }

    getAllLicence(): void {
        this.LicenceService.getAll()
            // .pipe(first())
            .subscribe({
                next: (resp) => {
                    this.loading = false
                    console.log('response : ', resp);
                    if (resp.status !== 200) {
                        console.log('licence : ', resp);
                        return;
                    }

                    // {id: 1, libelle: 'Licences simples', description: 'Licences simples'}
                    const listOfOption: Array<{ value: number; text: string }> = [];
                    this.T_licence = resp.contenu;
                    resp.contenu.forEach(item => {
                        listOfOption.push({
                            value: item.id,
                            text: item.libelle
                        });
                    });
                    this.listOfOption = listOfOption;
                },
                error: error => {
                    console.log(`Erreur : `, error);
                    this.notif.affiche('error', 'Erreur interne du serveur. ')
                }
            });
    }

    addProduit(data): void {
        this.produitService.add(data)
            // .pipe(first())
            .subscribe({
                next: (resp) => {
                    console.log('response : ', resp);
                    if (resp.status !== 201) {
                        console.log('resp : ', resp);
                        alert('resp ')
                        return;
                    }
                    this.notif.affiche('success', resp.message)
                    const dataAdded = resp.contenu[0]
                    console.log('dataAdded : ', dataAdded)
                    this.listOfData = [
                        ...this.listOfData,
                        dataAdded
                    ];
                    this.dataForm.reset()

                    console.log('listOfData : ', this.listOfData)
                    this.updateEditCache();

                    // // 
                    // this.editCache[dataAdded.id].edit = false;
                },
                error: error => {
                    console.log(`Erreur ${error.status} : `, error);
                    this.notif.affiche('error', 'Erreur interne du serveur. ')
                    // this.editCache[id].edit = false;
                }
            });
    }

    updateProduit(id, data): void {
        this.produitService.update(id, data)
            .pipe(first())
            .subscribe({
                next: (resp) => {
                    console.log('response : ', resp);
                    if (resp.status !== 200) {
                        console.log('resp : ', resp);
                        return;
                    }
                    this.notif.affiche('success', resp.message)
                    // this.getProduits()
                    this.editCache[id].edit = false;
                },
                error: error => {
                    console.log(`Erreur ${error.status} : `, error);
                    this.notif.affiche('error', 'Erreur interne du serveur. ')
                    // this.editCache[id].edit = false;
                }
            });
    }

    deleteProduit(id): void {
        this.produitService.delete(id)
            .pipe(first())
            .subscribe({
                next: (resp) => {
                    console.log('response : ', resp);
                    if (resp.status !== 200) {
                        console.log('resp : ', resp);
                        return;
                    }
                    this.notif.affiche('success', resp.message)
                    console.log('listOfData : ', this.listOfData);
                    console.log('id rech : ', id);
                    this.listOfData = this.listOfData.filter(d => d.id.toString() != id);
                },
                error: error => {
                    console.log(`Erreur : `, error);
                    this.notif.affiche('error', 'Erreur interne du serveur. ')
                }
            });
    }

    get f() { return this.dataForm.controls }

}