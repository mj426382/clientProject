import {Component, Input, OnInit} from '@angular/core';

@Component({
  selector: 'app-single-time',
  templateUrl: './single-time.component.html',
  styleUrls: ['./single-time.component.css']
})
export class SingleTimeComponent implements OnInit {

  @Input('title')
  title: string = "Czasy przeszłe";

  @Input('images')
  images:[] = [];

  constructor() {

  }

  ngOnInit(): void {
    console.log(this.images);
  }

}
