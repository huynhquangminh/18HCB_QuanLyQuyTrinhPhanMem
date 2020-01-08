import { Component, OnInit } from '@angular/core';
import { LoginRequestModel } from '../models/login-request.model';
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-login-admin',
  templateUrl: './login-admin.component.html',
  styleUrls: ['./login-admin.component.scss']
})
export class LoginAdminComponent implements OnInit {
  loginModel = new LoginRequestModel();
  formLogin: NgForm;
  isLoginPass = true;
  constructor() { }

  ngOnInit() {
  }
  submitLogin() {
  }

}
