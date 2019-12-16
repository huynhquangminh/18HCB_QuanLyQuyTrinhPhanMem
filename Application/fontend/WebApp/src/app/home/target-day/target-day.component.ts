import { GoalEveryDayService } from './../../services/goal-every-day.service';
import { Component, OnInit } from '@angular/core';
import { Chart } from 'angular-highcharts';
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
    private goalEveryDayService: GoalEveryDayService
  ) { }

  ngOnInit() {
    this.goalEveryDayService.goalDay.subscribe(result => {
      if (result && this.progessGoalDay < 100) {
        this.numGoalDay = Math.round(result) > 50 ? 50 : Math.round(result);
        this.progessGoalDay = this.numGoalDay * 2;
      }
    });
    this.renderChart();
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
