import { Component, OnInit, Inject } from '@angular/core';
import { Router } from '@angular/router';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';

@Component({
  selector: 'app-dialog-quiz-success',
  templateUrl: './dialog-quiz-success.component.html',
  styleUrls: ['./dialog-quiz-success.component.scss']
})
export class DialogQuizSuccessComponent implements OnInit {

  constructor(
    private router: Router,
    public dialogRef: MatDialogRef<DialogQuizSuccessComponent>,
    @Inject(MAT_DIALOG_DATA) public data: any
  ) { }

  ngOnInit() {
  }

  clickBtn() {
    this.dialogRef.close();
    this.router.navigateByUrl('/home/main/course-list');
  }
}
