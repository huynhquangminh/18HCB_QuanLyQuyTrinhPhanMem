import { Component, OnInit } from '@angular/core';
import { WebStorageSerivce } from '../services/webStorage.service';
import { Router } from '@angular/router';
import { WebKeyStorage } from '../global/web-key-storage';

@Component({
  selector: 'app-admin',
  templateUrl: './admin.component.html',
  styleUrls: ['./admin.component.scss']
})
export class AdminComponent implements OnInit {

  public userAccount: any = {};
  constructor(
    private webStorageSerivce: WebStorageSerivce,
    private router: Router,
  ) { }

  ngOnInit() {
    this.userAccount = this.webStorageSerivce.getSessionStorage(WebKeyStorage.AccountInfo);
  }

  logout() {
    this.webStorageSerivce.clearSessionStorage();
    this.router.navigateByUrl('/login');
  }
  forgotpass() {
    this.router.navigateByUrl('/change-password');
  }
}
