import { NgForm } from '@angular/forms';
import { Component, OnInit } from '@angular/core';
import { ChangePassWordModel } from '../models/change-password.model';
import { Router } from '@angular/router';
import { TaiKhoanService } from '../services/tai-khoan.service';

@Component({
  selector: 'app-forgot-password',
  templateUrl: './forgot-password.component.html',
  styleUrls: ['./forgot-password.component.scss']
})
export class ForgotPasswordComponent implements OnInit {
  changePassModel = new ChangePassWordModel();
  formChangePass: NgForm;
  constructor(
    private router: Router,
    private taiKhoanService: TaiKhoanService
  ) { }

  ngOnInit() {
  }

  submitChangePass() {
    this.taiKhoanService.updatePassword(this.changePassModel).subscribe(res => {
      if (res) {
        this.router.navigateByUrl('/login');
      }
    });
  }

}
