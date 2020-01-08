import { Component, OnInit } from '@angular/core';
import { DisplaySettingService } from 'src/app/services/display-setting.service';

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
    private displaySettingService: DisplaySettingService
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
  }

}
