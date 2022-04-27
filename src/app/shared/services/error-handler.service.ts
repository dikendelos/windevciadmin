import { HttpErrorResponse } from "@angular/common/http";
import { ErrorHandler } from "@angular/core";

export class ErrorHandlerService implements ErrorHandler {

    handleError(error: any) {
        if (error instanceof HttpErrorResponse) {
            return this.handleHttpError(error)
        } else {
            return this.handleClientError(error)
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
        return resp.message;
    }


    handleClientError(error) {
        // console.groupCollapsed(`GlobalErrorHandler => ${error}`);
        // console.error(error.stack);
        // console.groupEnd();
        return error;
    }
}