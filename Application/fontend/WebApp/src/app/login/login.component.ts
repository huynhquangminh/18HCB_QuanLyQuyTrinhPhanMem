import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { LoginRequestModel } from '../models/login-request.model';
import { Router } from '@angular/router';
import { TaiKhoanService } from '../services/tai-khoan.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {
  loginModel = new LoginRequestModel();
  formLogin: NgForm;
  constructor(
    private router: Router,
    private taiKhoanService: TaiKhoanService
  ) { }

  ngOnInit() {
  }
  submitLogin() {
    this.taiKhoanService.login(this.loginModel).subscribe(result => {
      if (result && result.Success) {
        this.router.navigateByUrl('/home/display-setting');
        // this.taiKhoanService.getDanhSachThongTinTaiKhoan(result.accountLogin.id).subscribe(res => {
        //   if (res && result.Success) {
        //     // this.router.navigateByUrl('/home/main/');
        //   } else {
        //     // this.router.navigateByUrl('/home/display-setting');
        //   }
        // });
      }
    });
  }

}
