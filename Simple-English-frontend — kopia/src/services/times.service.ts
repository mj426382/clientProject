import { Injectable } from '@angular/core';
import {Observable} from "rxjs";
import {Globals} from "../Shared/globals";
import {HttpClient} from "@angular/common/http";
import {map} from "rxjs/operators";
import {NgxSpinnerService} from "ngx-spinner";

@Injectable({
  providedIn: 'root'
})
export class TimesService {

  constructor(private http: HttpClient, protected spinner: NgxSpinnerService) {

  }

  getAllTimes() : Observable<any>{
    this.spinner.show();
    return this.http.get(Globals.apiURL + "times")
      .pipe(
        map(result => {
          this.spinner.hide();
          return result;
        })
      );
  }
}
