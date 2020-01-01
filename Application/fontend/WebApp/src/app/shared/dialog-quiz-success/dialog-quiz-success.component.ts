import { Component, OnInit, Inject } from '@angular/core';
import { Router } from '@angular/router';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { ChartFllowService } from 'src/app/services/chart-fllow.service';
import { WebStorageSerivce } from 'src/app/services/webStorage.service';
import { WebKeyStorage } from 'src/app/global/web-key-storage';
import { CourseListService } from 'src/app/services/course-list.service';
import { TaiKhoanService } from 'src/app/services/tai-khoan.service';

@Component({
  selector: 'app-dialog-quiz-success',
  templateUrl: './dialog-quiz-success.component.html',
  styleUrls: ['./dialog-quiz-success.component.scss']
})
export class DialogQuizSuccessComponent implements OnInit {

  constructor(
    private router: Router,
    public dialogRef: MatDialogRef<DialogQuizSuccessComponent>,
    private chartFllowService: ChartFllowService,
    private webStorageSerivce: WebStorageSerivce,
    private courseListService: CourseListService,
    private taiKhoanService: TaiKhoanService,
    @Inject(MAT_DIALOG_DATA) public data: any
  ) { }

  ngOnInit() {
    const user = this.webStorageSerivce.getLocalStorage(WebKeyStorage.AccountInfo);
    if (user) {
      // this.chartFllowService.getChartFllow(user.idtaikhoan).subscribe(res => {
      //   if (res && res.Success) {
      //     console.log(res);
      //   }
      // });

      this.taiKhoanService.getDanhSachThongTinTaiKhoan({ idAccount: user.id}).subscribe(res => {
        if (res && res.Success) {
          const request = {
            idTTTaiKhoan: res.thongTinTaiKhoan.id,
            idBaiHoc: this.data.idBaiHoc,
          };
          this.courseListService.ThemBaiHocPass(request).subscribe(result => {
            if (result) {
              console.log('xxxxxx', res);
            }
          });
        }
      });
    }
  }

  clickBtn() {
    this.dialogRef.close();
    this.router.navigateByUrl('/home/main/course-list');
  }
}
