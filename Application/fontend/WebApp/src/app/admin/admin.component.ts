import { Component, OnInit } from '@angular/core';
import { WebStorageSerivce } from '../services/webStorage.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.scss']
})
export class AdminComponent implements OnInit {

  constructor(
    private webStorageSerivce: WebStorageSerivce,
    private router: Router,
  ) { }

  ngOnInit() {
  }

  logout() {
    this.webStorageSerivce.clearSessionStorage();
    this.router.navigateByUrl('/login');
  }
  forgotpass() {
    this.router.navigateByUrl('/change-password');
  }
}
