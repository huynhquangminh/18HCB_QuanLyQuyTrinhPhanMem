import { Router } from '@angular/router';
import { Component, OnInit } from '@angular/core';
import { GoalEveryDayService } from '../services/goal-every-day.service';
import { WebStorageSerivce } from '../services/webStorage.service';
import { HomeService } from '../services/home.service';
import { WebKeyStorage } from '../global/web-key-storage';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {
  public numGoalDay = 0;
  public progessGoalDay = 0;
  public countNotication = 0;
  public listNotication = [];
  constructor(
    private goalEveryDayService: GoalEveryDayService,
    private router: Router,
    private webStorageSerivce: WebStorageSerivce,
    private homeService: HomeService
  ) { }

  ngOnInit() {
    this.goalEveryDayService.goalDay.subscribe(result => {
      if (result) {
        this.numGoalDay = Math.round(result);
        this.progessGoalDay = this.numGoalDay * 2;
      }
    });
    this.getDSThongBao();

  }

  getDSThongBao() {
    const user = this.webStorageSerivce.getLocalStorage(WebKeyStorage.AccountInfo);
    if (user) {
      this.homeService.getDsThongBao({idaccount: user.id}).subscribe(res => {
        if (res && res.Success) {
          this.listNotication = res.lstThongBao;
          console.log(this.listNotication);
          this.countNotication = this.listNotication.length;
        }
      });
    }
  }

  logout() {
    this.webStorageSerivce.clearLocalStorage();
    this.router.navigateByUrl('/login');
  }

}
