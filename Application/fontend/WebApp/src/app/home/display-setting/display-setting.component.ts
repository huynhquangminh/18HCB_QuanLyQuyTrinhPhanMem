import { Component, OnInit, ViewChild } from '@angular/core';
import { Router } from '@angular/router';
import { MatStepper } from '@angular/material/stepper';
import { DisplaySettingService } from 'src/app/services/display-setting.service';
import { Subscription } from 'rxjs';

@Component({
  selector: 'app-display-setting',
  templateUrl: './display-setting.component.html',
  styleUrls: ['./display-setting.component.scss']
})
export class DisplaySettingComponent implements OnInit {
  @ViewChild('stepper', { static: true }) myStepper: MatStepper;
  public isLinear = true;
  public listLanguage: any[];
  public listLevel: any[];
  public listGoalDay: any[];
  resultSetting = {
    launguage: 0,
    level: 0,
    goalday: 0
  };
  public isBtnSetting = false;
  listDisplaySetting: Subscription;
  constructor(
    private router: Router,
    private displaySettingService: DisplaySettingService
  ) { }

  ngOnInit() {
    this.getDisplaySetting();
  }

  getDisplaySetting() {
    // this.listDisplaySetting = this.displaySettingService.getDisplaySetting();
    // console.log('listDisplaySetting', this.listDisplaySetting);
    this.displaySettingService.getDsKhoaHoc().subscribe(res => {
      if (res && res.Success) {
        this.listLanguage = res.listKhoaHoc;
        console.log('listLanguage', this.listLanguage);
      }
    });
    this.displaySettingService.getDsCapDo().subscribe(res => {
      if (res && res.Success) {
        this.listLevel = res.listCapDo;
        console.log('listLevel', this.listLevel);
      }
    });
    this.displaySettingService.getDsDiemKinhNghiem().subscribe(res => {
      if (res && res.Success) {
        this.listGoalDay = res.listLoaiDiemKinhNghiem;
        console.log('listGoalDay', this.listGoalDay);
      }
    });

  }
  settingLanguage(id) {
    this.resultSetting.launguage = id;
    this.myStepper.next();

  }
  settingLevel(id) {
    this.resultSetting.level = id;
    this.myStepper.next();
  }
  settingGoalDay(id) {
    this.resultSetting.goalday = id;
    // this.myStepper.next();
  }

  saveSetting() {
    this.router.navigateByUrl('/home/main');
  }
}
