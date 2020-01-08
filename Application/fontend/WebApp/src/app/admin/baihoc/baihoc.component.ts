import { Component, OnInit } from '@angular/core';
import { DisplaySettingService } from 'src/app/services/display-setting.service';
import { CourseListService } from 'src/app/services/course-list.service';
import { MatDialog } from '@angular/material/dialog';
import { DialogComfirmComponent } from 'src/app/shared/dialog-comfirm/dialog-comfirm.component';

@Component({
  selector: 'app-baihoc',
  templateUrl: './baihoc.component.html',
  styleUrls: ['./baihoc.component.scss']
})
export class BaihocComponent implements OnInit {
  public displayedColumns = ['Id', 'tenbaihoc', 'chucnang'];
  public dataSource: any = [];
  public isThemBaiHoc = false;
  public isSuaBaiHoc = false;
  public tenbaihoc = '';
  public idKhoahoc = 0;
  public listKhoaHoc: any[] = [];
  constructor(
    private displaySettingService: DisplaySettingService,
    private courseListService: CourseListService,
    public dialog: MatDialog,
  ) { }

  ngOnInit() {
    this.getDsKhoaHoc();
  }

  getDsBaiHoc(idkhoahoc: any) {
    this.courseListService.getDsBaiHoc({ id: idkhoahoc }).subscribe(res => {
      if (res && res.Success) {
        this.dataSource = res.listBaiHoc;
      }
    });
  }
  getDsKhoaHoc() {
    this.displaySettingService.getDsKhoaHoc().subscribe(res => {
      if (res && res.Success) {
        this.listKhoaHoc = res.listKhoaHoc;
        if (this.listKhoaHoc.length > 0) {
          this.idKhoahoc = this.listKhoaHoc[0].id;
          this.getDsBaiHoc(this.idKhoahoc);
        }
      }
    });
  }

  changeKhoaHoc(id) {
    this.getDsBaiHoc(id);
  }

  thembaihoc() {
    this.isThemBaiHoc = true;
    this.isSuaBaiHoc = false;
    this.tenbaihoc = '';
  }

  suabaihoc(item) {
    this.isSuaBaiHoc = true;
    this.isThemBaiHoc = false;
    this.tenbaihoc = item.tenbaihoc;
  }
  xoabaihoc(id) {
    const dialogRef = this.dialog.open(DialogComfirmComponent, {
      width: '350px',
      disableClose: true
    });
    dialogRef.afterClosed().subscribe(result => {
      if (result) {
        this.getDsKhoaHoc();
      }
    });
  }
}
