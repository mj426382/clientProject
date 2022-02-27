import {Component, OnInit} from '@angular/core';
import {TimesService} from "../../services/times.service";
import {Globals} from "../../Shared/globals";

@Component({
  selector: 'app-times',
  templateUrl: './times.component.html',
  styleUrls: ['./times.component.css']
})
export class TimesComponent implements OnInit {

  times: any;

  constructor(private timesService : TimesService) {

    this.timesService.getAllTimes().subscribe(result => {

      this.times = [];

      for(let time of result['times']){
        let newTime = { 'title': "", 'images': [] };
        newTime.title = time.name;
        for(let image of time.images){
          // @ts-ignore
          newTime.images.push(Globals.imageApiURL +  image.image);
        }

        this.times.push(newTime);
        console.log(this.times);
      }

    });

  }

  ngOnInit(): void {

  }

}
