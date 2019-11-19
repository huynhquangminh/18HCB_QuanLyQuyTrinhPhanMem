import { GoalEveryDayService } from './../../services/goal-every-day.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-target-day',
  templateUrl: './target-day.component.html',
  styleUrls: ['./target-day.component.scss']
})
export class TargetDayComponent implements OnInit {

  public numGoalDay = 0;
  public progessGoalDay = 0;
  public targetNumber = 50;
  constructor(
    private goalEveryDayService: GoalEveryDayService
  ) { }

  ngOnInit() {
    this.goalEveryDayService.goalDay.subscribe(result => {
      if (result && this.progessGoalDay < 100) {
        this.numGoalDay = Math.round(result) > 50 ? 50 : Math.round(result);
        this.progessGoalDay = this.numGoalDay * 2;
      }
    });
  }
}
