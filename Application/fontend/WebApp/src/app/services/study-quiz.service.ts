import { Injectable } from '@angular/core';
import { AppService } from './app-service';
@Injectable()
export class StudyQuizService extends AppService {
    getDsCauHoi(request: any = {}) {
        return this.CallByResquestService('/api/cauhoi/getdscauhoi', request);
    }
    getDsDapAn(request: any = {}) {
        return this.CallByResquestService('/api/dapan/listdapan', request);
    }

    themCauHoi(request: any = {}) {
        return this.CallByResquestService('/api/cauhoi/themcauhoibyidbaihoc', request);
    }

    xoaCauHoi(request: any = {}) {
        return this.CallByResquestService('/api/cauhoi/DeleteCauHoiByID', request);
    }

    xoaDapAn(request: any = {}) {
        return this.CallByResquestService('/api/dapan/DeleteDapAnByIDCauHoi', request);
    }

    getDapAnByCauHoi(request: any = {}) {
        return this.CallByResquestService('/api/dapan/GetDapAnByCauHoi', request);
    }

    xoaDapAnById(request: any = {}) {
        return this.CallByResquestService('/api/dapan/DeleteDapAnByID', request);
    }

    themDapAnByIdCauHoi(request: any = {}) {
        return this.CallByResquestService('/api/dapan/ThemDapAnByIDCauHoi', request);
    }

    suaCauHoiById(request: any = {}) {
        return this.CallByResquestService('/api/cauhoi/UpdateCauHoiById', request);
    }
}
