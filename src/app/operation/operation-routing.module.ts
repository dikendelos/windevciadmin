import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { DetailProduitComponent } from './detail-produit/detail-produit.component';
import { FormationsComponent } from './formations/formations.component';
import { LicencesComponent } from './licences/licences.component';
import { LstComponent } from './lst/lst.component';
import { ProduitsComponent } from './produits/produits.component';
import { UtilisateurComponent } from './utilisateur/utilisateur.component';

// import { ProjectsDashboardComponent } from './projects/projects-dashboard.component';


const routes: Routes = [
    {
        path: 'licences',
        component: LicencesComponent,
        data: {
            title: 'Gestion des licences',
            headerDisplay: "none"
        }
    },
    {
        path: 'produits',
        component: ProduitsComponent,
        data: {
            title: 'Gestion des produits',
            headerDisplay: "none"
        }
    },
    {
        path: 'detail-produit',
        component: DetailProduitComponent,
        data: {
            title: 'Gestion des details de produit',
            headerDisplay: "none"
        }
    },
    {
        path: 'lst',
        component: LstComponent,
        data: {
            title: 'Gestion des lst',
            headerDisplay: "none"
        }
    },
    {
        path: 'formations',
        component: FormationsComponent,
        data: {
            title: 'Gestion des formations',
            headerDisplay: "none"
        }
    },
    {
        path: 'utilisateur',
        component: UtilisateurComponent,
        data: {
            title: 'Gestion des utilisateurs',
            headerDisplay: "none"
        }
    },
    // {
    //     path: 'projects',
    //     component: ProjectsDashboardComponent,
    //     data: {
    //         title: 'Projects Dashboard ',
    //         headerDisplay: "none"
    //     }
    // },
];

@NgModule({
    imports: [RouterModule.forChild(routes)],
    exports: [RouterModule],
})
export class OperationRoutingModule { }
