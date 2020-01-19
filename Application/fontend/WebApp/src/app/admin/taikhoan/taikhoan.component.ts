import { Component, OnInit } from '@angular/core';
import { TaiKhoanService } from 'src/app/services/tai-khoan.service';
import { MatDialog } from '@angular/material/dialog';
import { DialogComfirmComponent } from 'src/app/shared/dialog-comfirm/dialog-comfirm.component';

@Component({
  selector: 'app-taikhoan',
  templateUrl: './taikhoan.component.html',
  styleUrls: ['./taikhoan.component.scss']
})
export class TaikhoanComponent implements OnInit {
  public displayedColumns = ['Id', 'username', 'password', 'email', 'chucnang'];
  public dataSource: any = [];
  idUser = 0;
  constructor(
    private taiKhoanService: TaiKhoanService,
    public dialog: MatDialog,
  ) { }

  ngOnInit() {
    this.getDsTaiKhoanUser();
  }

  getDsTaiKhoanUser() {
    this.taiKhoanService.getDsTaiKhoanUser().subscribe(res => {
      if (res && res.Success) {
        this.dataSource = res.listAccount;
      }
    });
  }

  xoaTaiKhoan(id) {
    const dialogRef = this.dialog.open(DialogComfirmComponent, {
      width: '350px',
      disableClose: true
    });
    dialogRef.afterClosed().subscribe(result => {
      if (result) {
        const request = {
          idTaikhoan: id
        };
        this.taiKhoanService.deleteTaiKhoan(request).subscribe(res => {
          if (res) {
            this.getDsTaiKhoanUser();
          }
        });
      }
    });
  }

}
