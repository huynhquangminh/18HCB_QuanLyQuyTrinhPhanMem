import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { LoginRequestModel } from '../models/login-request.model';
import { TaiKhoanService } from '../services/tai-khoan.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.scss']
})
export class RegisterComponent implements OnInit {
  registerModel = new LoginRequestModel();
  formRegister: NgForm;
  confirmPass: any;
  constructor(
    private router: Router,
    private taiKhoanService: TaiKhoanService
  ) { }

  ngOnInit() {
  }

  submitRegister() {
    this.taiKhoanService.register(this.registerModel).subscribe(result => {
      if (result) {
        this.router.navigateByUrl('/login');
      }
    });
  }

}
