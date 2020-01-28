import { Component, OnInit, Inject } from '@angular/core';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { StudyQuizService } from 'src/app/services/study-quiz.service';

@Component({
  selector: 'app-dialog-cauhoi',
  templateUrl: './dialog-cauhoi.component.html',
  styleUrls: ['./dialog-cauhoi.component.scss']
})
export class DialogCauhoiComponent implements OnInit {

  public dsCauTraLoi = [
    { tencautl: '', isDapAn: false }
  ];
  public textBtnCauHoi = 'Thêm câu hỏi';
  public tencauhoi = '';
  private isTaoMoi = false;
  public isCauHoi = false;
  private idCauHoiMoi = 0;
  private isThemDapAn = false;
  private isInitDialog = false;

  constructor(
    private studyQuizService: StudyQuizService,
    public dialogRef: MatDialogRef<DialogCauhoiComponent>,
    @Inject(MAT_DIALOG_DATA) public data: any,
  ) { }

  ngOnInit() {
    this.isTaoMoi = JSON.stringify(this.data.itemData) === '{}' ? true : false;
    this.textBtnCauHoi = this.isTaoMoi ? 'Thêm câu hỏi' : 'Cập nhập câu hỏi';
    if (!this.isTaoMoi) {
      this.isCauHoi = true;
      this.tencauhoi = this.data.itemData.tencauhoi;
      this.getThongTinCapNhap();
    } else {
      this.isInitDialog = true;
    }
  }

  themDapAn() {
    const request = {
      idcauhoi: this.idCauHoiMoi,
      cautraloi: this.dsCauTraLoi[this.dsCauTraLoi.length - 1].tencautl,
      dapan: this.dsCauTraLoi[this.dsCauTraLoi.length - 1].isDapAn
    };
    this.studyQuizService.themDapAnByIdCauHoi(request).subscribe(res => {
      if (res) {
        this.isThemDapAn = !this.checkDapAnDung() ? true : false;
        this.dsCauTraLoi.push({ tencautl: '', isDapAn: false });
      }
    });
  }

  xoaDapAn(item) {
    if (item.id) {
      const request = {
        ID: item.id
      };
      this.studyQuizService.xoaDapAnById(request).subscribe(res => {
        if (res) {
          const index = this.dsCauTraLoi.findIndex(el => el.tencautl === item.tencautl);
          if (index > -1) {
            this.dsCauTraLoi.splice(index, 1);
          }
          this.isThemDapAn = !this.checkDapAnDung() ? true : false;
        }
      });
    }
  }

  checkDapAnRequired() {
    let isRequired = false;
    this.dsCauTraLoi.forEach(item => {
      if (item.tencautl === '' || item.tencautl === null) {
        isRequired = true;
      }
    });
    return isRequired;
  }

  checkDapAnDung() {
    let isDapAn = true;
    this.dsCauTraLoi.forEach(item => {
      if (item.isDapAn === true) {
        isDapAn = false;
      }
    });
    return isDapAn;
  }
  huy() {
    this.dialogRef.close(true);
  }

  actionCauHoi() {
    if (this.isTaoMoi) {
      this.themCauHoi();
    }
    if (!this.isTaoMoi) {
      this.suaCauHoi();
    }
  }

  suaCauHoi() {
    const request = {
      id: this.data.itemData.id,
      tencauhoi: this.tencauhoi,
      idbaihoc: this.data.idBaiHoc,
      idcapdo: this.data.idCapDo
    };
    this.studyQuizService.suaCauHoiById(request).subscribe(res => {
      if (res) {
        console.log('res update ', res);
      }
    });
  }

  themCauHoi() {
    const request = {
      tencauhoi: this.tencauhoi,
      idbaihoc: this.data.idBaiHoc,
      idcapdo: this.data.idCapDo
    };
    this.studyQuizService.themCauHoi(request).subscribe(res => {
      if (res) {
        this.isInitDialog = false;
        this.isCauHoi = true;
        const param = {
          idBaiHoc: request.idbaihoc,
          idCapDo: request.idcapdo
        };
        this.studyQuizService.getDsCauHoi(param).subscribe(result => {
          if (result && result.Success) {
            this.idCauHoiMoi = result.listCauHoi[result.listCauHoi.length - 1].id;
          }
        });
      }
    });
  }

  getThongTinCapNhap() {
    const request = {
      idCauHoi: this.data.itemData.id
    };
    this.idCauHoiMoi = request.idCauHoi;
    this.studyQuizService.getDapAnByCauHoi(request).subscribe(res => {
      if (res && res.Success) {
        this.dsCauTraLoi = this.getListCauTL(res.listDapAn);
        this.dsCauTraLoi.push({ tencautl: '', isDapAn: false });
        this.isThemDapAn = !this.checkDapAnDung() ? true : false;
        this.isCauHoi = true;
      }
    });
  }

  getListCauTL(data) {
    const arr = [];
    data.forEach(el => {
      const item = { id: el.id, tencautl: el.cautraloi, isDapAn: el.dapan };
      arr.push(item);
    });
    return arr;
  }

  checkBtnClose() {
    if ((this.isCauHoi && this.isThemDapAn) || this.isInitDialog) {
      return false;
    }
    return true;
  }

}
