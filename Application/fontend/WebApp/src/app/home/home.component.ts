import { Router } from '@angular/router';
import { Component, OnInit } from '@angular/core';
import { GoalEveryDayService } from '../services/goal-every-day.service';
import { WebStorageSerivce } from '../services/webStorage.service';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss']
})
export class HomeComponent implements OnInit {
  public numGoalDay = 0;
  public progessGoalDay = 0;
  constructor(
    private goalEveryDayService: GoalEveryDayService,
    private router: Router,
    private webStorageSerivce: WebStorageSerivce
  ) { }

  ngOnInit() {
    this.goalEveryDayService.goalDay.subscribe(result => {
      if (result) {
        this.numGoalDay = Math.round(result);
        this.progessGoalDay = this.numGoalDay * 2;
      }
    });
  }

  logout() {
    this.webStorageSerivce.clearLocalStorage();
    this.router.navigateByUrl('/login');
  }

}
