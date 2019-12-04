import { NgForm } from '@angular/forms';
import { Component, OnInit } from '@angular/core';
import { ChangePassWordModel } from '../models/change-password.model';
import { Router } from '@angular/router';

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
  ) { }

  ngOnInit() {
  }

}
