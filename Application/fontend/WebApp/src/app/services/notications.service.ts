import { Injectable } from '@angular/core';
import { AppService } from './app-service';

@Injectable()
export class ThongBaoService extends AppService {
    updateThongBao(request: any = {}) {
        return this.CallByResquestService('/api/thongbao/updatethongbao', request);
    }

    themphanhoi(request: any = {}) {
        return this.CallByResquestService('/api/phanhoi/insertphanhoi', request);
    }

    themThongBao(request: any = {}) {
        return this.CallByResquestService('/api/thongbao/InsertThongBao', request);
    }
}
