import { DialogComfirmComponent } from 'src/app/shared/dialog-comfirm/dialog-comfirm.component';
import { Component, OnInit } from '@angular/core';
import { DisplaySettingService } from 'src/app/services/display-setting.service';
import { CourseListService } from 'src/app/services/course-list.service';
import { StudyQuizService } from 'src/app/services/study-quiz.service';
import { MatDialog } from '@angular/material/dialog';
import { DialogCauhoiComponent } from 'src/app/shared/dialog-cauhoi/dialog-cauhoi.component';

@Component({
  selector: 'app-cauhoi',
  templateUrl: './cauhoi.component.html',
  styleUrls: ['./cauhoi.component.scss']
})
export class CauhoiComponent implements OnInit {

  public displayedColumns = ['Id', 'tencauhoi', 'chucnang'];
  public dataSource: any = [];
  public tencauhoi = '';
  public idKhoahoc = 0;
  public idBaihoc = 0;
  public idCapdo = 0;
  public listKhoaHoc: any[] = [];
  public listBaiHoc: any[] = [];
  public listCapdo: any[] = [];
  isInit = false;
  public isGetCauhoi = false;
  constructor(
    private displaySettingService: DisplaySettingService,
    private courseListService: CourseListService,
    private studyQuizService: StudyQuizService,
    public dialog: MatDialog,
  ) { }

  ngOnInit() {
    this.isInit = true;
    this.getDsCapDo();
    this.getDsKhoaHoc();
    console.log('xxx', this.idBaihoc);
  }

  getDsCauHoi(idbaihoc: number, idcapdo: number) {
    const request = {
      idBaiHoc: idbaihoc,
      idCapDo: idcapdo
    };
    this.studyQuizService.getDsCauHoi(request).subscribe(res => {
      if (res && res.Success) {
        this.dataSource = res.listCauHoi;
      }
    });
  }

  getDsBaiHoc(idkhoahoc: any) {
    this.courseListService.getDsBaiHoc({ id: idkhoahoc }).subscribe(res => {
      if (res && res.Success) {
        this.listBaiHoc = res.listBaiHoc;
        if (this.listBaiHoc.length > 0) {
          this.idBaihoc = this.listBaiHoc[0].id;
          this.getDsCauHoi(this.idBaihoc, this.idCapdo);
          this.isInit = false;
        }
      }
    });
  }
  getDsKhoaHoc() {
    this.displaySettingService.getDsKhoaHoc().subscribe(res => {
      if (res && res.Success) {
        this.listKhoaHoc = res.listKhoaHoc;
        this.idKhoahoc = this.listKhoaHoc[0].id;
        this.isInit = true;
        this.getDsBaiHoc(this.idKhoahoc);
      }
    });
  }

  getDsCapDo() {
    this.displaySettingService.getDsCapDo().subscribe(res => {
      if (res && res.Success) {
        this.listCapdo = res.listCapDo;
        if (this.listCapdo.length > 0) {
          this.idCapdo = this.listCapdo[0].id;
        }
      }
    });
  }

  changeKhoaHoc() {
    this.idBaihoc = 0;
    this.isGetCauhoi = false;
    this.getDsBaiHoc(this.idKhoahoc);
  }
  changeBaiHoc() {
    console.log('xxx', this.idBaihoc);
    this.isGetCauhoi = false;
    this.getDsCauHoi(this.idBaihoc, this.idCapdo);
  }
  changeCapdo() {
    this.isGetCauhoi = false;
    this.getDsCauHoi(this.idBaihoc, this.idCapdo);
  }

  getCauhoi(item) {
    this.isGetCauhoi = true;
    this.tencauhoi = item.tencauhoi;
  }

  themcauhoi() {
    const dialogRef = this.dialog.open(DialogCauhoiComponent, {
      width: '600px',
      disableClose: true,
      data: {
        idBaiHoc: this.idBaihoc,
        idCapDo: this.idCapdo,
        itemData: {}
      }
    });
  }

  suacauhoi(item) {
    const dialogRef = this.dialog.open(DialogCauhoiComponent, {
      width: '600px',
      disableClose: true,
      data: {
        idBaiHoc: this.idBaihoc,
        idCapDo: this.idCapdo,
        itemData: item
      }
    });
  }
  xoacauhoi(id) {
    const dialogRef = this.dialog.open(DialogComfirmComponent, {
      width: '350px',
      disableClose: true
    });
    dialogRef.afterClosed().subscribe(result => {
      if (result) {
        this.studyQuizService.xoaCauHoi({ ID: id }).subscribe(res => {
          if (res) {
            this.getDsCauHoi(this.idBaihoc, this.idCapdo);
          }
        });
      }
    });
  }

}
