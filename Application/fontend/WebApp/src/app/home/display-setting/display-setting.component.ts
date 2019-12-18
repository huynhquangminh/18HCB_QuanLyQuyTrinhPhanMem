import { Component, OnInit, ViewChild } from '@angular/core';
import { Router } from '@angular/router';
import { MatStepper } from '@angular/material/stepper';
import { DisplaySettingService } from 'src/app/services/display-setting.service';
import { Subscription } from 'rxjs';
import { ThongTinTaiKhoanModel } from 'src/app/models/thong-tin-tai-khoan.model';
import { WebStorageSerivce } from 'src/app/services/webStorage.service';
import { WebKeyStorage } from 'src/app/global/web-key-storage';
import { TaiKhoanService } from 'src/app/services/tai-khoan.service';

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
  resultSetting = new ThongTinTaiKhoanModel();
  public isBtnSetting = false;
  listDisplaySetting: Subscription;
  constructor(
    private router: Router,
    private displaySettingService: DisplaySettingService,
    private webStorageSerivce: WebStorageSerivce,
    private taiKhoanService: TaiKhoanService
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
      }
    });
    this.displaySettingService.getDsCapDo().subscribe(res => {
      if (res && res.Success) {
        this.listLevel = res.listCapDo;
      }
    });
    this.displaySettingService.getDsDiemKinhNghiem().subscribe(res => {
      if (res && res.Success) {
        this.listGoalDay = res.listLoaiDiemKinhNghiem;
      }
    });

  }
  settingLanguage(id) {
    this.resultSetting.idkhoahoc = id;
    this.myStepper.next();

  }
  settingLevel(id) {
    this.resultSetting.idcapdo = id;
    this.myStepper.next();
  }
  settingGoalDay(id) {
    this.resultSetting.diemKN = id;
    // this.myStepper.next();
  }

  saveSetting() {
    this.resultSetting.diemKNDay = 0;
    const taikhoanInfo = this.webStorageSerivce.getLocalStorage(WebKeyStorage.AccountInfo);
    if (taikhoanInfo) {
      this.resultSetting.idtaikhoan = taikhoanInfo.id;
    }
    this.taiKhoanService.themThongTinTaiKhoan(this.resultSetting).subscribe(res => {
      if (res) {
        this.webStorageSerivce.setLocalStorage(WebKeyStorage.SettingUser, this.resultSetting);
        this.router.navigateByUrl('/home/main');
      }
    });
  }
}
