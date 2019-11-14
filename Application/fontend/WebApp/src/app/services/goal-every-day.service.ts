import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';
@Injectable({
  providedIn: 'root'
})
export class GoalEveryDayService {
  public goalDay = new BehaviorSubject<number>(0);
  constructor() { }
  listensChangeGoalDay(data) {
    const sum = this.goalDay.value + data;
    this.goalDay.next(sum);
  }
}
