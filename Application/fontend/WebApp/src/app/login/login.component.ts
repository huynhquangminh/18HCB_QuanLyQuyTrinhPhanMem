import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { LoginRequestModel } from '../models/login-request.model';
import { Router } from '@angular/router';
import { TaiKhoanService } from '../services/tai-khoan.service';
import { WebStorageSerivce } from '../services/webStorage.service';
import { WebKeyStorage } from '../global/web-key-storage';
import { GoalEveryDayService } from '../services/goal-every-day.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {
  loginModel = new LoginRequestModel();
  formLogin: NgForm;
  isLoginPass = true;
  constructor(
    private router: Router,
    private taiKhoanService: TaiKhoanService,
    private webStorageSerivce: WebStorageSerivce,
    private goalEveryDayService: GoalEveryDayService,
  ) { }

  ngOnInit() {
    const user = this.webStorageSerivce.getLocalStorage(WebKeyStorage.AccountInfo);
    const setting = this.webStorageSerivce.getLocalStorage(WebKeyStorage.SettingUser);
    if (user) {
      if (setting) {
        this.router.navigateByUrl('/home/main/course-list');
      }
      this.router.navigateByUrl('/home/display-setting');
    }
  }
  submitLogin() {
    this.taiKhoanService.login(this.loginModel).subscribe(result => {
      if (result && result.Success) {
        this.webStorageSerivce.setLocalStorage(WebKeyStorage.AccountInfo, result.accountLogin);
        this.taiKhoanService.getDanhSachThongTinTaiKhoan({ idAccount: result.accountLogin.id }).subscribe(res => {
          if (res && res.Success) {
            // const dateNow = new Date().toDateString();
            const dateNow = new Date().toJSON().slice(0, 10).replace(/-/g, '/');
            const datedb = new Date(res.thongTinTaiKhoan.ngayhoc).toJSON().slice(0, 10).replace(/-/g, '/');
            res.thongTinTaiKhoan.ngayhoc = dateNow;
            if (datedb !== dateNow) {
              res.thongTinTaiKhoan.diemKNDay = 0;
            }
            this.goalEveryDayService.listensChangeGoalDay(res.thongTinTaiKhoan.diemKNDay);
            this.webStorageSerivce.setLocalStorage(WebKeyStorage.SettingUser, res.thongTinTaiKhoan);
            this.router.navigateByUrl('/home/main/course-list');
          } else {
            this.router.navigateByUrl('/home/display-setting');
          }
        });
        this.isLoginPass = true;
      } else {
        this.isLoginPass = false;
      }
    });
  }

}
