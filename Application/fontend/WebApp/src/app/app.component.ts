import { Component } from '@angular/core';
import { WebStorageSerivce } from './services/webStorage.service';
import { GoalEveryDayService } from './services/goal-every-day.service';
import { WebKeyStorage } from 'src/app/global/web-key-storage';
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent {
  title = 'WebApp';
  constructor(
    private webStorageSerivce: WebStorageSerivce,
    private goalEveryDayService: GoalEveryDayService,
  ) {
    const setting = this.webStorageSerivce.getLocalStorage(WebKeyStorage.SettingUser);
    this.goalEveryDayService.listensChangeGoalDay(setting ? setting.diemKNDay : 0);
  }
}
