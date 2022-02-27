import {NgModule} from '@angular/core';
import {BrowserModule} from '@angular/platform-browser';
import {AppRoutingModule} from './app-routing.module';
import {AppComponent} from './app.component';
import {NavBarComponent} from './nav-bar/nav-bar.component';
import {TimesComponent} from './times/times.component';
import {RouterModule} from "@angular/router";
import {SingleTimeComponent} from './single-time/single-time.component';
import {NgbModule} from '@ng-bootstrap/ng-bootstrap';
import {PhrasesComponent} from './phrases/phrases.component';
import {NgxSpinnerModule} from "ngx-spinner";
import {HttpClientModule} from "@angular/common/http";
import {BrowserAnimationsModule} from "@angular/platform-browser/animations";
import { QuizComponent } from './quiz/quiz.component';
import {FlexModule} from "@angular/flex-layout";
import { GrammarComponent } from './grammar/grammar.component';

@NgModule({
  declarations: [
    AppComponent,
    NavBarComponent,
    TimesComponent,
    SingleTimeComponent,
    PhrasesComponent,
    QuizComponent,
    GrammarComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    RouterModule.forRoot([
      {
        path: '',
        component: TimesComponent
      },
	  {
        path: 'times',
        component: TimesComponent
      },
      {
        path: 'phrases',
        component: PhrasesComponent
      },
      {
        path: 'quiz',
        component: QuizComponent
      },
      {
        path: 'grammar',
        component: GrammarComponent
      }
    ]),
    NgbModule,
    HttpClientModule,
    BrowserAnimationsModule,
    NgxSpinnerModule,
    FlexModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule {
}
