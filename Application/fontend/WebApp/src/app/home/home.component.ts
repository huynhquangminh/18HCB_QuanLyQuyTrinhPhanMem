import { Router } from '@angular/router';
import { Component, OnInit } from '@angular/core';
import { WebStorageSerivce } from '../services/webStorage.service';
import { HomeService } from '../services/home.service';
import { WebKeyStorage } from '../global/web-key-storage';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {
  public countNotication = 0;
  public listNotication = [];
  constructor(
    private router: Router,
    private webStorageSerivce: WebStorageSerivce,
    private homeService: HomeService
  ) { }

  ngOnInit() {
    this.getDSThongBao();
  }

  getDSThongBao() {
    const user = this.webStorageSerivce.getLocalStorage(WebKeyStorage.AccountInfo);
    if (user) {
      this.homeService.getDsThongBao({ idaccount: user.id }).subscribe(res => {
        if (res && res.Success) {
          this.listNotication = res.lstThongBao;
          this.countNotication = this.listNotication.length;
        }
      });
    }
  }

  logout() {
    this.webStorageSerivce.clearLocalStorage();
    this.router.navigateByUrl('/login');
  }

  forgotpass() {
    this.router.navigateByUrl('/forgot-password');
  }

}
