import { Injectable } from '@angular/core';
import { AppService } from './app-service';
import { BehaviorSubject } from 'rxjs';
@Injectable()
export class ChartFllowService extends AppService {
    public dataChart = new BehaviorSubject<any>({});
    listensDataChart(data) {
        console.log(data);
        // this.dataChart = data;
        this.dataChart.next(data);
    }

    getChartFllow(id: number) {
        return this.CallByResquestService('/api/bieudotheodoi/getbieudotheodoi', { idTaiKhoan: id });
    }
}
