import { Component, OnInit } from '@angular/core';
// import { ThemeConstantService } from '../../shared/services/theme-constant.service';

import { LicenceService } from 'src/app/shared/services/licence/licence.service';
import { Licence } from 'src/app/shared/interfaces/perso/structure';
import { first } from 'rxjs/operators';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { NotifService } from 'src/app/shared/services/notif.service';


@Component({
    templateUrl: './licences.component.html',
    styles: [`      
    .save {
        margin-right: 8px;
      }
    `]
})

export class LicencesComponent implements OnInit {

    constructor(
        private LicenceService: LicenceService,
        private notif: NotifService,
        private fb: FormBuilder,
    ) { }

    loading = false;
    editCache: { [key: string]: { edit: boolean; data: Licence } } = {};
    listOfData: Licence[] = [];
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
        // console.log('index : ', index);
        Object.assign(this.listOfData[index], this.editCache[id].data);
        this.updateLicence(id, this.editCache[id].data)
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
        this.deleteLicence(id);
    }

    ngOnInit(): void {
        this.dataForm = this.fb.group({
            libelle: [null, [Validators.required]],
            description: [null, [Validators.required]]
        });

        this.getAllLicence()
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

        const data = {
            "libelle": this.f.libelle.value,
            "description": this.f.description.value
        }
        this.addLicence(data)

    }

    getAllLicence(): void {
        this.LicenceService.getAll()
            .pipe(first())
            .subscribe({
                next: (resp) => {
                    console.log('response : ', resp);
                    if (resp.status !== 200) {
                        console.log('licence : ', resp);
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

    addLicence(data): void {
        this.loading = true
        this.LicenceService.add(data)
            .subscribe({
                next: (resp) => {
                    this.loading = false
                    console.log('response : ', resp);
                    if (resp.status !== 201) {
                        console.log('resp : ', resp);
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
                    this.loading = false
                    console.log(`Erreur ${error.status} : `, error);
                    this.notif.affiche('error', 'Erreur interne du serveur. ')
                    // this.editCache[id].edit = false;
                }
            });
    }

    updateLicence(id, data): void {
        this.LicenceService.update(id, data)
            // .pipe(first())
            .subscribe({
                next: (resp) => {
                    console.log('response : ', resp);
                    if (resp.status !== 200) {
                        console.log('resp : ', resp);
                        return;
                    }
                    this.notif.affiche('success', resp.message)
                    // 
                    this.editCache[id].edit = false;
                },
                error: error => {
                    console.log(`Erreur ${error.status} : `, error);
                    this.notif.affiche('error', 'Erreur interne du serveur. ')
                    // this.editCache[id].edit = false;
                }
            });
    }

    deleteLicence(id): void {
        this.LicenceService.delete(id)
            .pipe(first())
            .subscribe({
                next: (resp) => {
                    console.log('response : ', resp);
                    if (resp.status !== 200) {
                        console.log('resp : ', resp);
                        return;
                    }
                    this.notif.affiche('success', resp.message)
                    this.listOfData = this.listOfData.filter((d) => {
                        console.log("d : ", d.id)
                        return d.id.toString() != id
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