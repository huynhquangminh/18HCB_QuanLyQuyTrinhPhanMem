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
}
