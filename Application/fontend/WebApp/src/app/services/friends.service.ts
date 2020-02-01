import { Injectable } from '@angular/core';
import { AppService } from './app-service';

@Injectable()
export class FriendsService extends AppService {
    getListAccountSameCourse(request: any = {}) {
        return this.CallByResquestService('/api/taikhoan/GetAllAccountSameKhoaHoc', request);
    }

    getListFriends(request: any = {}) {
        return this.CallByResquestService('/api/banbe/danhsachbanbe', request);
    }

    getListRequestFriend(request: any = {}) {
        return this.CallByResquestService('/api/banbe/danhsachyeucauketban', request);
    }

    deleteFriend(request: any = {}) {
        return this.CallByResquestService('/api/banbe/xoabanbe', request);
    }

    deleteRequestFriend(request: any = {}) {
        return this.CallByResquestService('/api/banbe/xoayeucauketban', request);
    }

    insertRequestFriend(request: any = {}) {
        return this.CallByResquestService('/api/banbe/ThemYeuCauKetBan', request);
    }
}
