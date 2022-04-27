import { Injectable } from '@angular/core';
import { HttpRequest, HttpHandler, HttpEvent, HttpInterceptor } from '@angular/common/http';
import { Observable, throwError } from 'rxjs';

import { AuthenticationService } from '../services/authentication.service';
import { catchError } from 'rxjs/operators';

@Injectable()
export class JwtInterceptor implements HttpInterceptor {
  constructor(private authenticationService: AuthenticationService) { }

  intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
    let currentUser = this.authenticationService.currentUserValue;
    // console.log('currentUser : ', this.authenticationService.currentUserValue);
    if (currentUser && currentUser.accessToken) {
      request = request.clone({
        setHeaders: {
          Authorization: `Bearer ${currentUser.accessToken}`
        }
      });
      // console.log('secur request : ', request)
    }

    return next.handle(request).pipe(
      catchError((error: any) => {
        console.log('error :: ', error)
        // 
        if ([401, 403].includes(error.status) && currentUser) {
          this.authenticationService.logout()
        }

        return throwError('Session Expired')
      })
    );
  }
}