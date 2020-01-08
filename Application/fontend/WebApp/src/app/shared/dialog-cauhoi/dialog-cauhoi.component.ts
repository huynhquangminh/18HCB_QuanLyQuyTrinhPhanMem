import { Component, OnInit, Inject } from '@angular/core';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';

@Component({
  selector: 'app-dialog-cauhoi',
  templateUrl: './dialog-cauhoi.component.html',
  styleUrls: ['./dialog-cauhoi.component.scss']
})
export class DialogCauhoiComponent implements OnInit {

  constructor(
    public dialogRef: MatDialogRef<DialogCauhoiComponent>,
    @Inject(MAT_DIALOG_DATA) public data: any,
  ) { }

  ngOnInit() {
  }

}
