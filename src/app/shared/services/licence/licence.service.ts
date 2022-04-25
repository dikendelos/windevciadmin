import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { map } from 'rxjs/operators';
import { environment } from 'src/environments/environment';
// import { Licence } from "../../interfaces/perso/licence.type";
import { Retour } from "../../interfaces/retour.type";

@Injectable({
  providedIn: 'root'
})
export class LicenceService {

  constructor(
    private http: HttpClient,
  ) { }

  getAll() {
    return this.http.get<Retour>(`${environment.baseUrl}/licence`);
  }

  add(data) {
    return this.http.post<Retour>(`${environment.baseUrl}/licence`, data);
  }



  update(id, body) {
    return this.http.put<Retour>(`${environment.baseUrl}/licence/${id}`, body)
  }

  delete(id) {
    return this.http.delete<Retour>(`${environment.baseUrl}/licence/${id}`)
  }

}
