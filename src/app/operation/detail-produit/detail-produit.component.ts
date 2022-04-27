import { Component, OnInit } from '@angular/core';
// import { ThemeConstantService } from '../../shared/services/theme-constant.service';

import { LicenceService } from 'src/app/shared/services/licence/licence.service';
import { ProduitService } from 'src/app/shared/services/produit/produit.service';
// import { Licence } from 'src/app/shared/interfaces/perso/licence.type';
import { Produit } from 'src/app/shared/interfaces/perso/produit.type';
import { DetailProduit } from 'src/app/shared/interfaces/perso/structure';
import { first } from 'rxjs/operators';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { ProduitDetailService } from 'src/app/shared/services/produit-detail/produit-detail.service';
import { NotifService } from 'src/app/shared/services/notif.service';


@Component({
    templateUrl: './detail-produit.component.html',
    styles: [`      
    .save {
        margin-right: 8px;
      }

      nz-select {
        width: 100%;
    }
    `]
})

export class DetailProduitComponent implements OnInit {

    constructor(
        private notif: NotifService,
        private produitService: ProduitService,
        private produitDetailService: ProduitDetailService,
        private fb: FormBuilder,
    ) { }
    // Variable proruits
    selectedValue = null;
    listOfOption: Array<{ value: number; text: string }> = [];
    nzFilterOption = () => true;
    // End variable proruits
    T_produit = [];



    editCache: { [key: string]: { edit: boolean; data: DetailProduit } } = {};
    listOfData: DetailProduit[] = [];
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
        this.updateDetailProduit(id, this.editCache[id].data)
    }

    setValeurAffichee(id, id_ligne) {
        console.log('even :: ', id, id_ligne);
        const obj = this.T_produit.find(l => l.id == id)
        console.log('obj : ', obj)
        console.log('data : : ', this.editCache[id_ligne].data)
        this.editCache[id_ligne].data.produit = obj.nom_produit
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
        this.deleteDetailProduit(id);
    }

    ngOnInit(): void {
        this.dataForm = this.fb.group({
            extrat_titre: [null, [Validators.required]],
            description: [null, [Validators.required]],
            reference: [null, [Validators.required]],
            prix_euro: [null, [Validators.required]],
            prix_fcfa: [null, [Validators.required]],
            produit_id: [null, [Validators.required]]
        });

        this.getProduits()
        this.getProduitDetail();
    }

    addRow(): void {
        for (const i in this.dataForm.controls) {
            this.dataForm.controls[i].markAsDirty();
            this.dataForm.controls[i].updateValueAndValidity();
        }

        if (this.dataForm.invalid) {
            console.log('statut formulaire : ', this.dataForm.status);
            return;
        }
        console.log('dataToPost : ', this.dataForm.value);

        this.addProduit(this.dataForm.value)

    }

    getProduitDetail(): void {
        this.produitDetailService.getAll()
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
                    console.log(`Erreur ${error.status} : `, error);
                    this.notif.affiche('error', 'Erreur interne du serveur. ')
                }
            });
    }

    getProduits(): void {
        this.produitService.getAll()
            .pipe(first())
            .subscribe({
                next: (resp) => {
                    console.log('response : ', resp);
                    if (resp.status !== 200) {
                        console.log('response : ', resp);
                        return;
                    }
                    const listOfOption: Array<{ value: number; text: string }> = [];
                    this.T_produit = resp.contenu;
                    resp.contenu.forEach(item => {
                        listOfOption.push({
                            value: item.id,
                            text: item.nom_produit
                        });
                    });
                    this.listOfOption = listOfOption;
                },
                error: error => {
                    console.log(`Erreur ${error.status} : `, error);
                    this.notif.affiche('error', 'Erreur interne du serveur. ')
                }
            });
    }

    addProduit(data): void {
        this.produitDetailService.add(data)
            .pipe(first())
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

    updateDetailProduit(id, data): void {
        this.produitDetailService.update(id, data)
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
                    this.editCache[id].edit = false;
                }
            });
    }

    deleteDetailProduit(id): void {
        this.produitDetailService.delete(id)
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
                    this.listOfData = this.listOfData.filter((d) => {
                        console.log('d.id : ', d.id);
                        return d.id != id
                    });
                },
                error: error => {
                    console.log(`Erreur ${error.status} : `, error);
                    this.notif.affiche('error', 'Erreur interne du serveur. ')
                }
            });
    }

    get f() { return this.dataForm.controls }

}