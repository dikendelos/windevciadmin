import { HttpClient, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { NzMessageService } from 'ng-zorro-antd/message';

@Injectable()
export class NotifService {

    constructor(private message: NzMessageService) {
    }

    affiche(type: string, mess: string): void {
        this.message.create(type, mess);
    }




}