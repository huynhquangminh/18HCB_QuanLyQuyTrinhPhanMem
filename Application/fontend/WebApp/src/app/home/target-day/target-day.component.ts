import { GoalEveryDayService } from './../../services/goal-every-day.service';
import { Component, OnInit } from '@angular/core';
import { Chart } from 'angular-highcharts';
import { WebStorageSerivce } from 'src/app/services/webStorage.service';
import { WebKeyStorage } from 'src/app/global/web-key-storage';
import { ChartFllowService } from 'src/app/services/chart-fllow.service';
@Component({
  selector: 'app-target-day',
  templateUrl: './target-day.component.html',
  styleUrls: ['./target-day.component.scss']
})
export class TargetDayComponent implements OnInit {

  public numGoalDay = 0;
  public progessGoalDay = 0;
  public targetNumber = 50;
  chart: Chart;
  constructor(
    private goalEveryDayService: GoalEveryDayService,
    private webStorageSerivce: WebStorageSerivce,
    private chartFllowService: ChartFllowService
  ) { }

  ngOnInit() {
    this.goalEveryDayService.goalDay.subscribe(result => {
      if (result && this.progessGoalDay < 100) {
        this.numGoalDay = Math.round(result) > this.targetNumber ? this.targetNumber : Math.round(result);
        this.progessGoalDay = this.numGoalDay * Math.round(100 / this.targetNumber);
        const setting = this.webStorageSerivce.getLocalStorage(WebKeyStorage.SettingUser);
        // tslint:disable-next-line:no-string-literal
        setting['diemKNDay'] = this.numGoalDay;
        this.webStorageSerivce.setLocalStorage(WebKeyStorage.SettingUser, setting);
        this.updateGoadDay();
      }
    });
    this.chartFllowService.dataChart.subscribe(res => {
      if (res) {
        this.renderChart();
      }
    });


  }

  updateGoadDay() {
    const setting = this.webStorageSerivce.getLocalStorage(WebKeyStorage.SettingUser);
    if (setting) {
      const request = {
        idkhoahoc: setting.idkhoahoc,
        idcapdo: setting.idcapdo,
        diemKN: setting.diemKN,
        diemKNDay: this.numGoalDay,
        idtaikhoan: setting.idtaikhoan,
        ngayhoc: setting.ngayhoc
      };
      this.goalEveryDayService.updateGoadDay(request).subscribe(res => {
        if (res) {
          console.log('update pass');
        }
      });

    }

  }

  renderChart() {
    this.chart = new Chart({
      chart: {
        height: 150
      },
      title: {
        text: ''
      },
      yAxis: {
        title: {
          text: ''
        }
      },

      xAxis: {
        categories: ['Thứ 2', 'Thứ 3', 'Thứ 4', 'Thứ 5', 'Thứ 6', 'Thứ 7', 'CN']
      },
      credits: {
        enabled: false
      },

      legend: {
        enabled: false
      },

      tooltip: {
        enabled: false
      },

      series: [{
        type: 'line',
        name: 'Điểm Kinh Nghiệm',
        data: [120, 45, 32, 56, 76, 213, 133]
      }]
    });
  }
}
