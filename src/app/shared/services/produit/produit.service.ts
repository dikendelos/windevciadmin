import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { Retour } from '../../interfaces/retour.type';

@Injectable({
  providedIn: 'root'
})
export class ProduitService {

  constructor(
    private http: HttpClient,
  ) { }

  getAll() {
    return this.http.get<Retour>(`${environment.baseUrl}/produit`);
  }

  add(data) {
    return this.http.post<Retour>(`${environment.baseUrl}/produit`, data);
  }



  update(id, body) {
    return this.http.put<Retour>(`${environment.baseUrl}/produit/${id}`, body)
  }

  delete(id) {
    return this.http.delete<Retour>(`${environment.baseUrl}/produit/${id}`)
  }
  
}
