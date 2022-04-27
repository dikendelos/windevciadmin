import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { BehaviorSubject, Observable } from 'rxjs';
import { catchError, map } from 'rxjs/operators';

import { User } from '../interfaces/user.type';
import { Token } from '../interfaces/token.type';
import { Router } from '@angular/router';
import { environment } from 'src/environments/environment';
import { ErrorHandlerService } from './error-handler.service';



const AUTH_API_URL = '/login';
const REGISTER_API_URL = '/register';

@Injectable()
export class AuthenticationService {
    private currentUserSubject: BehaviorSubject<Token>;
    public currentUser: Observable<Token>;

    constructor(
        private http: HttpClient,
        private errorHandlerService: ErrorHandlerService,
        private router: Router
    ) {
        this.currentUserSubject = new BehaviorSubject<Token>(JSON.parse(localStorage.getItem('currentUser')));
        this.currentUser = this.currentUserSubject.asObservable();
    }

    public get currentUserValue(): Token {
        return this.currentUserSubject.value;
    }

    register(login: string, password: string) {
        return this.http.post(`${environment.baseUrl}${REGISTER_API_URL}`, { login, password });
    }

    login(login: string, password: string) {
        return this.http.post<any>(`${environment.baseUrl}${AUTH_API_URL}`, { login, password })
            .pipe(map(user => {
                if (user && user.accessToken) {
                    localStorage.setItem('currentUser', JSON.stringify(user));
                    this.currentUserSubject.next(user);
                }
                return user;
            })
            );
    }

    logout() {
        localStorage.removeItem('currentUser');
        this.currentUserSubject.next(null);
        this.router.navigate(['/authentication/login-1'])
            .then(() => {
                window.location.reload();
            });
    }

    // getAll() {
    //     return this.http.get<User[]>(`${environment.baseUrl}/users`);
    // }

    // getById(id: string) {
    //     return this.http.get<User>(`${environment.baseUrl}/users/${id}`);
    // }

    // update(id, params) {
    //     return this.http.put(`${environment.baseUrl}/users/${id}`, params)
    //         .pipe(map(x => {
    //             // update stored user if the logged in user updated their own record
    //             if (id == this.currentUserValue.id) {
    //                 // update local storage
    //                 const user = { ...this.currentUserValue, ...params };
    //                 localStorage.setItem('user', JSON.stringify(user));

    //                 // publish updated user to subscribers
    //                 this.currentUserSubject.next(user);
    //             }
    //             return x;
    //         }));
    // }

    // delete(id: string) {
    //     return this.http.delete(`${environment.baseUrl}/users/${id}`)
    //         .pipe(map(x => {
    //             // auto logout if the logged in user deleted their own record
    //             if (id == this.currentUserValue.id) {
    //                 this.logout();
    //             }
    //             return x;
    //         }));
    // }

}