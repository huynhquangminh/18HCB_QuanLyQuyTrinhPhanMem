import { AppService } from './app-service';
import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';
@Injectable({
  providedIn: 'root'
})
export class GoalEveryDayService extends AppService {
  public goalDay = new BehaviorSubject<number>(0);
  listensChangeGoalDay(data) {
    const sum = data === 0 ? 0 : this.goalDay.value + data;
    this.goalDay.next(sum);
  }

  updateGoadDay(request: any = {}) {
    return this.CallByResquestService('/api/taikhoan/themthongtintaikhoan', request);
  }
}
