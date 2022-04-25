export interface Licence {
    id: number,
    libelle: string,
    description: string
}

export interface Produit {
    id: number,
    extrat_titre: string,
    nom_produit: string,
    description: string,
    licence_id: number
    lience: string
}

export interface DetailProduit {
    id: number,
    extrat_titre: string,
    description: string,
    reference: string,
    prix_euro: string,
    prix_fcfa: string,
    produit_id: number,
    produit: string
}