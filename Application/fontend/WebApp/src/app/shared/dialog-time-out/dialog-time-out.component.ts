import { Component, OnInit, Inject } from '@angular/core';
import { Router } from '@angular/router';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';

@Component({
  selector: 'app-dialog-time-out',
  templateUrl: './dialog-time-out.component.html',
  styleUrls: ['./dialog-time-out.component.scss']
})
export class DialogTimeOutComponent implements OnInit {

  constructor(
    private router: Router,
    public dialogRef: MatDialogRef<DialogTimeOutComponent>,
    @Inject(MAT_DIALOG_DATA) public data: any
  ) { }

  ngOnInit() {
  }

  clickBtn() {
    this.dialogRef.close();
    this.router.navigateByUrl('/home/main/course-list');
  }

}
