import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-display-setting',
  templateUrl: './display-setting.component.html',
  styleUrls: ['./display-setting.component.scss']
})
export class DisplaySettingComponent implements OnInit {
  public isLinear = true;
  constructor() { }

  ngOnInit() {
  }

}
