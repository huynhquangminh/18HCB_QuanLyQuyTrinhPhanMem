import { Injectable } from '@angular/core';
import { AppService } from './app-service';
@Injectable()
export class CourseListService extends AppService {
    getDsBaiHoc(request: any) {
        return this.CallByResquestService('/api/baihoc/danhsachbaihoc', request);
    }
}
