import { Injectable } from '@angular/core';
import { AppService } from './app-service';
import { forkJoin, of } from 'rxjs';
@Injectable()
export class DisplaySettingService extends AppService {
    listDSKhoaHoc: any;
    listCapDo: any;
    listDiemKN: any;

    getDsKhoaHoc() {
        return this.CallAllService('/api/khoahoc/GetDSKhoaHoc');
    }
    updateKhoaHoc(request: any = {}) {
        return this.CallByResquestService('/api/khoahoc/suakhoahoc', request);
    }
    insertKhoaHoc(request: any = {}) {
        return this.CallByResquestService('/api/khoahoc/themkhoahoc', request);
    }
    getDsCapDo() {
        return this.CallAllService('/api/CapDo/GetCapDo');
    }

    getDsDiemKinhNghiem() {
        return this.CallAllService('/api/LoaiDiemKN/GetDSLoaiDiemKN');
    }

    getDisplaySetting() {
        return forkJoin(
            this.getDsKhoaHoc(),
            this.getDsCapDo(),
            this.getDsDiemKinhNghiem()
        ).subscribe(([res1, res2, res3]) => {
            this.listDSKhoaHoc = res1;
            this.listCapDo = res2;
            this.listDiemKN = res3;
            return of([this.listDSKhoaHoc, this.listCapDo, this.listDiemKN]);
        });
    }
}
