import { Component, OnInit } from '@angular/core';
import { MatDialogRef } from '@angular/material/dialog';

@Component({
  selector: 'app-dialog-comfirm',
  templateUrl: './dialog-comfirm.component.html',
  styleUrls: ['./dialog-comfirm.component.scss']
})
export class DialogComfirmComponent implements OnInit {

  constructor(public dialogRef: MatDialogRef<DialogComfirmComponent>, ) { }

  ngOnInit() {
  }

  huy() {
    this.dialogRef.close(false);
  }

  dongy() {
    this.dialogRef.close(true);
  }

}
