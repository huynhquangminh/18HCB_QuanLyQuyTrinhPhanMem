import { Injectable } from '@angular/core';
import { AppService } from './app-service';


// npm install rxjs@6 rxjs-compat@6 --save
@Injectable()
export class TaiKhoanService extends AppService {
    login(request: any) {
        return this.CallByResquestService('/api/taikhoan/login', request);
    }
    register(request: any) {
        return this.CallByResquestService('/api/taikhoan/themtaikhoan', request);
    }

    getDanhSachThongTinTaiKhoan(idAccount) {
        return this.CallByResquestService('/api/taikhoan/thongtintaikhoan', idAccount);
    }
}
