import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { LoginRequestModel } from '../models/login-request.model';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {
  loginModel = new LoginRequestModel();
  formLogin: NgForm;
  constructor(
    private router: Router
  ) { }

  ngOnInit() {
  }
  submitLogin() {
    console.log('login');
    this.router.navigateByUrl('/home/display-setting');
  }

}
