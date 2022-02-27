import { Component, OnInit } from '@angular/core';
import {GrammarService} from "../../services/grammar.service";

@Component({
  selector: 'app-grammar',
  templateUrl: './grammar.component.html',
  styleUrls: ['./grammar.component.css']
})
export class GrammarComponent implements OnInit {

  tables: any = [];

  constructor(private grammarService: GrammarService) {



    this.grammarService.getGrammarTables().subscribe(result => {
      this.tables = result;
    });

  }

  ngOnInit(): void {
  }

  showStaticVerbsTable(){
    let table = document.getElementById('static-table');

    this.openCloseTable(table);
  }

  showContextVerbsTable(){
    let table = document.getElementById('context-table');

    this.openCloseTable(table);
  }

  showIrregularVerbsTable(){
    let table = document.getElementById('irregular-table');

    this.openCloseTable(table);
  }

  showPersonalTable(){
    let table = document.getElementById('personal-table');

    this.openCloseTable(table);
  }

  showNumeralsTable(){
    let table = document.getElementById('numerals-table');

    this.openCloseTable(table);
  }

  showConditionalTable(){
    let table = document.getElementById('conditional-table');

    this.openCloseTable(table);
  }

  showDemonstrativeTable(){
    let table = document.getElementById('demonstrative-table');

    this.openCloseTable(table);
  }

  showInterrogativeTable(){
    let table = document.getElementById('interrogative-table');

    this.openCloseTable(table);
  }

  showRelativeTable(){
    let table = document.getElementById('relative-table');

    this.openCloseTable(table);
  }

  showMutualTable(){
    let table = document.getElementById('mutual-table');

    this.openCloseTable(table);
  }

  openCloseTable(table: any){
    if(table!.classList.contains('hide')){
      table!.classList.remove('hide');
      table!.classList.add('show');
    }else{
      table!.classList.add('hide');
      table!.classList.remove('show');
    }
  }

}
