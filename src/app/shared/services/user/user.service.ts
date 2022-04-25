import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Router } from '@angular/router';
import { environment } from "../../../../environments/environment";

@Injectable({
  providedIn: 'root'
})
export class UserService {

  constructor(
    private router: Router,
    private http: HttpClient
  ) { }

  register(data: any) {
    return this.http.post(`${environment.baseUrl}/register`, data);
  }
}
