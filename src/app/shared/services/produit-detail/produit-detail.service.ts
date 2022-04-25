import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { environment } from 'src/environments/environment';
import { Retour } from '../../interfaces/retour.type';

@Injectable({
  providedIn: 'root'
})
export class ProduitDetailService {

  constructor(
    private http: HttpClient,
  ) { }

  getAll() {
    return this.http.get<Retour>(`${environment.baseUrl}/produit-detail`);
  }

  add(data) {
    return this.http.post<Retour>(`${environment.baseUrl}/produit-detail`, data);
  }



  update(id, body) {
    return this.http.put<Retour>(`${environment.baseUrl}/produit-detail/${id}`, body)
  }

  delete(id) {
    return this.http.delete<Retour>(`${environment.baseUrl}/produit-detail/${id}`)
  }
  
}
