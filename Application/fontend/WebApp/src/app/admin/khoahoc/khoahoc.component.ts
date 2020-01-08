import { Component, OnInit } from '@angular/core';
import { DisplaySettingService } from 'src/app/services/display-setting.service';
import { MatDialog } from '@angular/material/dialog';
import { DialogComfirmComponent } from 'src/app/shared/dialog-comfirm/dialog-comfirm.component';

@Component({
  selector: 'app-khoahoc',
  templateUrl: './khoahoc.component.html',
  styleUrls: ['./khoahoc.component.scss']
})
export class KhoahocComponent implements OnInit {
  public displayedColumns = ['Id', 'tenkhoahoc', 'chucnang'];
  public dataSource: any = [];
  isThemKhoaHoc = false;
  isSuaKhoaHoc = false;
  public tenkhoahoc = '';

  constructor(
    private displaySettingService: DisplaySettingService,
    public dialog: MatDialog,
  ) { }

  ngOnInit() {
    this.getDsKhoaHoc();
  }

  themkhoahoc() {
    this.isThemKhoaHoc = true;
    this.isSuaKhoaHoc = false;
    this.tenkhoahoc = '';
  }
  getDsKhoaHoc() {
    this.displaySettingService.getDsKhoaHoc().subscribe(res => {
      if (res && res.Success) {
        console.log(res.listKhoaHoc);
        this.dataSource = res.listKhoaHoc;
      }
    });
  }
  suakhoahoc(item) {
    this.isSuaKhoaHoc = true;
    this.isThemKhoaHoc = false;
    this.tenkhoahoc = item.tenkhoahoc;
  }
  xoakhoahoc(id) {
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
