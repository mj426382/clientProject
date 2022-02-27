import { Component, OnInit } from '@angular/core';
import {QuizService} from "../../services/quiz.service";
import {QuizQuestion} from "../Interfaces/QuizQuestion";
import {QuizAnswer} from "../Interfaces/QuizAnswer";

@Component({
  selector: 'app-quiz',
  templateUrl: './quiz.component.html',
  styleUrls: ['./quiz.component.css']
})
export class QuizComponent implements OnInit {

  questions: QuizQuestion[] = [];
  questionsToShow: QuizQuestion[] = [];
  page: number = 0;

  constructor(private quizService: QuizService) {

    quizService.getAllQuestions().subscribe(result => {
      this.questions = result['questions'];
      this.getNewQuestions();
    });

  }

  ngOnInit(): void {
  }

  onAnswerSelected(question: QuizQuestion, answer: QuizAnswer, event: any, position: number){

    let buttons = [];
    let answers = document.getElementsByClassName(String(question.text));

    for(let i = 0; i < 3; i++){
      let button = document.getElementById(String(question.answers[i].id));
      // @ts-ignore
      button.classList.add('disabled');
      buttons.push(button);
    }

    for(let i = 0; i < 3; i++){
      answers[i].classList.remove('correct-answer');
      answers[i].classList.remove('incorrect-answer');
    }

    if(answer.is_right){
      answers[position].classList.add('correct-answer');
      buttons[position]!.classList.remove('disabled');
      // @ts-ignore
      buttons[position]!.src = "assets/images/correct.svg";
    }else{
      answers[position].classList.add('incorrect-answer');
      buttons[position]!.classList.remove('disabled');
      // @ts-ignore
      buttons[position]!.src = "assets/images/incorrect.svg";

      let rightPosition = question.answers.indexOf(question.answers.find(a => a.is_right)!);
      buttons[rightPosition]!.classList.remove('disabled');
      // @ts-ignore
      buttons[rightPosition]!.src = "assets/images/correct.svg";

      answers[rightPosition].classList.add('correct-answer');
    }
  }

  clearAllAnswers(){
    for(let question of this.questionsToShow){
      let buttons = [];
      let answers = document.getElementsByClassName(String(question.text));

      for(let i = 0; i < 3; i++){
        let button = document.getElementById(String(question.answers[i].id));
        // @ts-ignore
        button.classList.add('disabled');
        buttons.push(button);
      }

      for(let i = 0; i < 3; i++){
        answers[i].classList.remove('correct-answer');
        answers[i].classList.remove('incorrect-answer');
        // @ts-ignore
        answers[i].childNodes[0].checked = false;
      }
    }
  }

  getNewQuestions(){
    this.questionsToShow = [];

    if(this.page * 4 >= this.questions.length) this.page = 0;

    this.questionsToShow = this.questions.slice(this.page * 4, this.page * 4 + 4);
    this.page += 1;

  }

}
