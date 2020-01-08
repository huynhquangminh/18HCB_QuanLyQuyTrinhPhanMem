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
  idkhoahoc = 0;
  img = '';

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
  save() {
    const request = {
      id: 0,
      tenkhoahoc: this.tenkhoahoc,
      imgkhoahoc: 'xxxx'
    };
    this.displaySettingService.insertKhoaHoc(request).subscribe(res => {
      if (res) {
        this.getDsKhoaHoc();
      }
    });
  }

  update() {
    const request = {
      id: this.idkhoahoc,
      tenkhoahoc: this.tenkhoahoc,
      imgkhoahoc: this.img
    };
    this.displaySettingService.updateKhoaHoc(request).subscribe(res => {
      if (res) {
        this.tenkhoahoc = '';
        this.isSuaKhoaHoc = false;
        this.getDsKhoaHoc();
      }
    });
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
    this.idkhoahoc = item.id;
    this.img = item.imgKhoaHoc;
  }
  xoakhoahoc(id) {
    const dialogRef = this.dialog.open(DialogComfirmComponent, {
      width: '350px',
      disableClose: true
    });
    dialogRef.afterClosed().subscribe(result => {
      if (result) {
        const request = {
          ID: id
        };
        this.displaySettingService.deleteKhoaHoc(request).subscribe(res => {
          if (res) {
            this.getDsKhoaHoc();
          }
        });
      }
    });
  }

}
