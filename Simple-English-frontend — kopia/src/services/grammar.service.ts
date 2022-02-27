import { Injectable } from '@angular/core';
import {HttpClient} from "@angular/common/http";
import {NgxSpinnerService} from "ngx-spinner";
import {Observable} from "rxjs";
import {Globals} from "../Shared/globals";
import {map} from "rxjs/operators";

@Injectable({
  providedIn: 'root'
})
export class GrammarService {

  constructor(private http: HttpClient, protected spinner: NgxSpinnerService) {

  }

  getGrammarTables() : Observable<any>{
    this.spinner.show();
    return this.http.get(Globals.apiURL + "grammar")
      .pipe(
        map(result => {
          this.spinner.hide();
          return result;
        })
      );
  }
}
