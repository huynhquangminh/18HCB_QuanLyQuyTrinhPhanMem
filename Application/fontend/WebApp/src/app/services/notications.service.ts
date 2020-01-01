import { Injectable } from '@angular/core';
import { AppService } from './app-service';

@Injectable()
export class ThongBaoService extends AppService {
    updateThongBao(request: any = {}) {
        return this.CallByResquestService('/api/thongbao/updatethongbao', request);
    }
}
