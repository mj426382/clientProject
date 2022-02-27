import { Component, OnInit } from '@angular/core';
import {PhrasesService} from "../../services/phrases.service";
import {PhraseCategory} from "../Interfaces/PhraseCategory";
import {Phrase} from "../Interfaces/Phrase";
import {Globals} from "../../Shared/globals";

@Component({
  selector: 'app-phrases',
  templateUrl: './phrases.component.html',
  styleUrls: ['./phrases.component.css']
})
export class PhrasesComponent implements OnInit {

  phrases: PhraseCategory[] = [];

  actualCategory : number = 0;
  actualPhrases: Phrase[] = [];

  actualPage: number = 0;
  maxPage: number = 0;

  imageApi: string = Globals.imageApiURL;

  lastTranslate: any;

  constructor(private phrasesService: PhrasesService) {

    this.phrasesService.getAllPhrases().subscribe(result => {
      this.phrases = result['phrases'];

      this.setActualCategory(0);
    });


  }

  ngOnInit(): void {

  }

  setActualCategory(index: number){
    this.actualCategory = index;
    this.actualPhrases = this.phrases[index].phrases;

    this.actualPage = 0;
    this.maxPage = this.actualPhrases.length - 1;

    this.setActualPage(0);
  }

  setActualPage(index: number){

    if((index === 1 && this.actualPage >= this.maxPage) || (index === -1 && this.actualPage === 0)) return;

    this.actualPage += index;
    this.hideTranslate();
  }

  showTranslate(index: number, event: any){
    event.target.classList.remove('show-translate');
    event.target.innerHTML = this.actualPhrases[index].polish;
    this.lastTranslate = event.target;
  }

  hideTranslate(){
    this.lastTranslate.innerHTML = "Pokaż tłumaczenie";
  }

}
