import {QuizAnswer} from "./QuizAnswer";

export interface QuizQuestion{
  id:number;
  text:string;
  answers:QuizAnswer[];
}
