import { HttpErrorResponse } from "@angular/common/http";
import { ErrorHandler } from "@angular/core";

export class GlobalErrorHandler implements ErrorHandler {

    handleError(error: any): void {
        if (error instanceof HttpErrorResponse) {
            this.handleHttpError(error)
        } else {
            this.handleClientError(error)
        }
    }

    handleHttpError(resp: HttpErrorResponse) {
        switch (resp.status) {
            case 401:
                // Non autorisé
                console.log('error 401 : ', resp.message)
                break;
            case 400:
                // Mauvaise demande
                console.log('error 400 : ', resp.message)
                break;
            case 404:
                // Ressource introuvable
                console.log('error 404 : ', resp.message)
                break;
            case 500:
                // Erreur interne du serveur
                console.log('error 500 : ', resp.message)
                break;

            default:
                break;
        }
    }


    handleClientError(error) {
        console.groupCollapsed(`GlobalErrorHandler => ${error}`);
        console.error(error.stack);
        console.groupEnd();
    }
}