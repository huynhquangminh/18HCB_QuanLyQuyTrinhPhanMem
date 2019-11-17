import { Component, OnInit, ViewChild } from '@angular/core';
import { Router } from '@angular/router';
import { MatStepper } from '@angular/material/stepper';

@Component({
  selector: 'app-display-setting',
  templateUrl: './display-setting.component.html',
  styleUrls: ['./display-setting.component.scss']
})
export class DisplaySettingComponent implements OnInit {
  @ViewChild('stepper', { static: true }) myStepper: MatStepper;
  public isLinear = true;
  public listLanguage = [
    { id: 1, name: 'C#' },
    { id: 2, name: 'Angular' },
    { id: 3, name: 'Sql Serve' },
    { id: 4, name: 'TypeScript' },
    { id: 5, name: 'TypeScript' },
  ];

  public listLevel = [
    { id: 1, name: 'Basic' },
    { id: 2, name: 'Medium' },
    { id: 3, name: 'Advanced' },
  ];

  public listGoalDay = [
    { id: 1, name: '30 Điểm KN' },
    { id: 2, name: '65 Điểm KN' },
    { id: 3, name: '95 Điểm KN' },
  ];

  resultSetting = {
    launguage: 0,
    level: 0,
    goalday: 0
  };
  public isBtnSetting = false;
  constructor(private router: Router) { }

  ngOnInit() {
  }

  settingLanguage(id) {
    // tslint:disable-next-line:no-string-literal
    this.resultSetting['launguage'] = id;
    this.myStepper.next();

  }
  settingLevel(id) {
    // tslint:disable-next-line:no-string-literal
    this.resultSetting['level'] = id;
    this.myStepper.next();
  }
  settingGoalDay(id) {
    // tslint:disable-next-line:no-string-literal
    this.resultSetting['goalday'] = id;
    // this.myStepper.next();
  }

  saveSetting() {
    this.router.navigateByUrl('/home/main');
  }

}
