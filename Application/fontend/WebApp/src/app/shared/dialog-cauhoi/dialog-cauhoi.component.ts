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

  constructor(
    private studyQuizService: StudyQuizService,
    public dialogRef: MatDialogRef<DialogCauhoiComponent>,
    @Inject(MAT_DIALOG_DATA) public data: any,
  ) { }

  ngOnInit() {
    this.isTaoMoi = JSON.stringify(this.data.itemData) === '{}' ? true : false;
    this.textBtnCauHoi = this.isTaoMoi ? 'Thêm câu hỏi' : 'Cập nhập câu hỏi';
  }

  themDapAn() {
    this.dsCauTraLoi.push({ tencautl: '', isDapAn: false });
  }
  xoaDapAn(item) {
    const index = this.dsCauTraLoi.findIndex(el => el.tencautl === item.tencautl);
    if (index > -1) {
      this.dsCauTraLoi.splice(index, 1);
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
    this.dialogRef.close(false);
  }
  dongy() {

  }

  themCauHoi() {
    const request = {
      tencauhoi: this.tencauhoi,
      idbaihoc: this.data.idBaihoc,
      idcapdo: this.data.idCapDo
    };
    this.studyQuizService.themCauHoi(request).subscribe(res => {
      if (res) {
        this.isCauHoi = true;
      }
    });
  }

}
