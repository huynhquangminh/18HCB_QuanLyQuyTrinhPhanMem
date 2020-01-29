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
  dataChart = [];
  objDataChart: any = {};
  chart: Chart;
  constructor(
    private goalEveryDayService: GoalEveryDayService,
    private webStorageSerivce: WebStorageSerivce,
    private chartFllowService: ChartFllowService
  ) { }

  ngOnInit() {
    this.chartFllowService.dataChart.subscribe(res => {
      if (res) {
        this.objDataChart = res;
        this.dataChart = this.formatDataChart(res);
        this.renderChart(this.dataChart);
      }
    });
    this.goalEveryDayService.goalDay.subscribe(result => {
      if (result && this.progessGoalDay < 100) {
        this.numGoalDay = Math.round(result) > this.targetNumber ? this.targetNumber : Math.round(result);
        this.progessGoalDay = this.numGoalDay * Math.round(100 / this.targetNumber);
        const setting = this.webStorageSerivce.getLocalStorage(WebKeyStorage.SettingUser);
        setting['diemKNDay'] = this.numGoalDay;
        this.webStorageSerivce.setLocalStorage(WebKeyStorage.SettingUser, setting);
        this.updateGoadDay();
        this.objDataChart[this.getDate()] = this.numGoalDay;
        this.chartFllowService.listensDataChart(this.objDataChart);
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
          const requestUpdateChart = {
            idTaikhoan: this.objDataChart['idTaikhoan'],
            Thu2: this.objDataChart['Thu2'],
            Thu3: this.objDataChart['Thu3'],
            Thu4: this.objDataChart['Thu4'],
            Thu5: this.objDataChart['Thu5'],
            Thu6: this.objDataChart['Thu6'],
            Thu7: this.objDataChart['Thu7'],
            ChuNhat: this.objDataChart['ChuNhat'],
            NgayHienTai: new Date().toJSON().slice(0, 10).replace(/-/g, '-')
          };
          this.chartFllowService.updateChartFllow(requestUpdateChart).subscribe(result => {
            if (result) {
            }
          });
        }
      });
    }
  }

  renderChart(dataChart: any = [0, 0, 0, 0, 0, 0, 0]) {
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
        data: dataChart
      }]
    });
  }

  formatDataChart(data: any) {
    const arr = [];
    arr.push(data.Thu2);
    arr.push(data.Thu3);
    arr.push(data.Thu4);
    arr.push(data.Thu5);
    arr.push(data.Thu6);
    arr.push(data.Thu7);
    arr.push(data.ChuNhat);
    return arr;
  }

  getDate() {
    const currentDay = new Date().getDay();
    switch (currentDay) {
      case 1: return 'Thu2';
      case 2: return 'Thu3';
      case 3: return 'Thu4';
      case 4: return 'Thu5';
      case 5: return 'Thu6';
      case 6: return 'Thu7';
      case 0: return 'ChuNhat';
    }
    return '';
  }
}
