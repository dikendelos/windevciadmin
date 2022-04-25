import { Injectable } from '@angular/core';
import { HttpRequest, HttpHandler, HttpEvent, HttpInterceptor } from '@angular/common/http';
import { Observable, throwError } from 'rxjs';

// import { AuthenticationService } from '../services/authentication.service';
import { catchError, retry } from 'rxjs/operators';

@Injectable()
export class GlobalHttpInterceptor implements HttpInterceptor {
    constructor() { }

    intercept(req: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
        return next.handle(req).pipe(
            retry(1),
            catchError(this.handleError)
        )
    }

    handleError(error: any) {
        if (error.error instanceof ProgressEvent) {
            // Erreur du client
            console.log('Une erreur est survenue : ', error.error.message);
        } else {
            console.error(`Erreur Serveur de type : ${error.status}, ` + `detail : ${error.error.message}`)
        }

        return throwError('Une erreur est survenue, veuillez réessayer plus tard.')
    }

    // intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
    //     return next.handle(request).pipe(catchError(err => {
    //         if ([401, 403].includes(err.status) && this.accountService.userValue) {
    //             // auto logout if 401 or 403 response returned from api
    //             this.accountService.logout();
    //         }

    //         const error = err.error?.message || err.statusText;
    //         console.error(err);
    //         return throwError(error);
    //     }))
    // }
}