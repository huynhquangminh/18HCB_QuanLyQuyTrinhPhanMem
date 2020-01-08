import { Router } from '@angular/router';
import { Component, OnInit } from '@angular/core';
import { WebStorageSerivce } from '../services/webStorage.service';
import { HomeService } from '../services/home.service';
import { WebKeyStorage } from '../global/web-key-storage';
import { ChartFllowService } from '../services/chart-fllow.service';
import { MatDialog } from '@angular/material/dialog';
import { DialogNoticationsComponent } from '../shared/dialog-notications/dialog-notications.component';
import { DialogFriendsComponent } from '../shared/dialog-friends/dialog-friends.component';
import { FriendsService } from '../services/friends.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {
  public countNotication = 0;
  public listNotication = [];
  public listFriend = [];
  public pathImg = '../../assets/image/';
  constructor(
    private router: Router,
    private webStorageSerivce: WebStorageSerivce,
    private homeService: HomeService,
    private chartFllowService: ChartFllowService,
    public dialog: MatDialog,
    private friendsService: FriendsService
  ) { }

  ngOnInit() {
    this.getDataChart();
    this.getDSThongBao();
    this.getListFriends();
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

  getDataChart() {
    const user = this.webStorageSerivce.getLocalStorage(WebKeyStorage.AccountInfo);
    if (user) {
      this.chartFllowService.getChartFllow(user.id).subscribe(res => {
        if (res && res.Success && res.lstBieuDoTheoDoi.length > 0) {
          // console.log('xxx', res);
          this.chartFllowService.listensDataChart(res.lstBieuDoTheoDoi[0]);
        }
      });
    }
  }

  logout() {
    this.webStorageSerivce.clearLocalStorage();
    this.router.navigateByUrl('/login');
  }

  forgotpass() {
    this.router.navigateByUrl('/change-password');
  }

  openListNotication() {
    const dialogRef = this.dialog.open(DialogNoticationsComponent, {
      width: '500px',
      disableClose: true,
      data: this.listNotication
    });
    dialogRef.afterClosed().subscribe(result => {
      this.getDSThongBao();
    });
  }

  setting() {
    this.router.navigateByUrl('/home/display-setting');
  }

  openDialogFriend() {
    const user = this.webStorageSerivce.getLocalStorage(WebKeyStorage.AccountInfo);
    const setting = this.webStorageSerivce.getLocalStorage(WebKeyStorage.SettingUser);
    if (user && setting) {
      const dialogRef = this.dialog.open(DialogFriendsComponent, {
        width: '600px',
        disableClose: true,
        data: { idTaiKhoan: user.id, idKhoaHoc: setting.idkhoahoc }
      });
      dialogRef.afterClosed().subscribe(res => {
        this.getListFriends();
      });
    }

  }

  getListFriends() {
    const user = this.webStorageSerivce.getLocalStorage(WebKeyStorage.AccountInfo);
    this.friendsService.getListFriends({ idAccount: user.id }).subscribe(res => {
      if (res && res.Success) {
        this.listFriend = res.listBanBe.filter(item => item.yeucau === true);
      }
    });
  }

}
