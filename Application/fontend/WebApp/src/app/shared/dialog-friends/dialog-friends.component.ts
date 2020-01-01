import { Component, OnInit, Inject } from '@angular/core';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { FriendsService } from 'src/app/services/friends.service';

@Component({
  selector: 'app-dialog-friends',
  templateUrl: './dialog-friends.component.html',
  styleUrls: ['./dialog-friends.component.scss']
})
export class DialogFriendsComponent implements OnInit {

  public listAccountSameCoures = [];
  public pathImg = '../../../assets/image/';
  constructor(
    public dialogRef: MatDialogRef<DialogFriendsComponent>,
    @Inject(MAT_DIALOG_DATA) public data: any,
    private friendsService: FriendsService
  ) { }

  ngOnInit() {
    this.getListAccountSameCourse();
  }

  getListAccountSameCourse() {
    this.friendsService.getListAccountSameCourse(this.data).subscribe(res => {
      if (res && res.Success) {
        this.listAccountSameCoures = res.lstAccSameKH;
      }
    });
  }

  closeDialog() {
    this.dialogRef.close();
  }

}
