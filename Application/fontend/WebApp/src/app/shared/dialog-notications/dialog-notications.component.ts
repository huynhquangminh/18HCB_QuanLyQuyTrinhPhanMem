import { Component, OnInit, Inject } from '@angular/core';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { ThongBaoService } from 'src/app/services/notications.service';
import { WebStorageSerivce } from 'src/app/services/webStorage.service';
import { WebKeyStorage } from '../../global/web-key-storage';

@Component({
  selector: 'app-dialog-notications',
  templateUrl: './dialog-notications.component.html',
  styleUrls: ['./dialog-notications.component.scss']
})
export class DialogNoticationsComponent implements OnInit {

  private user: any;
  listKey = [];
  constructor(
    public dialogRef: MatDialogRef<DialogNoticationsComponent>,
    @Inject(MAT_DIALOG_DATA) public data: any,
    private thongBaoService: ThongBaoService,
    private webStorageSerivce: WebStorageSerivce,
  ) { }

  ngOnInit() {
    this.user = this.webStorageSerivce.getLocalStorage(WebKeyStorage.AccountInfo);
  }

  updateNotication(idThongBao) {
    const request = {
      id: idThongBao,
      idAccount: this.user.id
    };
    if (!this.isListKeyNotications(idThongBao)) {
      this.thongBaoService.updateThongBao(request).subscribe(res => {
        if (res) {
          this.listKey.push(idThongBao);
        }
      });
    }

  }

  isListKeyNotications(id) {
    return this.listKey.find(item => item === id) ? true : false;
  }

  closeDialog() {
    this.dialogRef.close();
  }
}
