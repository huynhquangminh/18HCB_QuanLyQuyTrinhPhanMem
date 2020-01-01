import { Injectable } from '@angular/core';
import { AppService } from './app-service';

@Injectable()
export class FriendsService extends AppService {
    getListAccountSameCourse(request: any = {}) {
        return this.CallByResquestService('/api/taikhoan/GetAllAccountSameKhoaHoc', request)
    }
}
