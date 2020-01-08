import { Component, OnInit, Inject } from '@angular/core';
import { MatDialogRef, MAT_DIALOG_DATA } from '@angular/material/dialog';
import { FriendsService } from 'src/app/services/friends.service';
import { forkJoin, of } from 'rxjs';
@Component({
  selector: 'app-dialog-friends',
  templateUrl: './dialog-friends.component.html',
  styleUrls: ['./dialog-friends.component.scss']
})
export class DialogFriendsComponent implements OnInit {

  public listAccountSameCoures = [];
  public pathImg = '../../../assets/image/';
  public listFriend = [];
  public listRequest = [];
  constructor(
    public dialogRef: MatDialogRef<DialogFriendsComponent>,
    @Inject(MAT_DIALOG_DATA) public data: any,
    private friendsService: FriendsService
  ) { }

  ngOnInit() {
    this.getListAccountSameCourse();
    this.getListFriends();
    this.getListRequestFriend();
  }

  getListAccountSameCourse() {
    this.friendsService.getListAccountSameCourse(this.data).subscribe(res => {
      if (res && res.Success) {
        this.listAccountSameCoures = res.lstAccSameKH;
      }
    });
  }

  getListFriends() {
    this.friendsService.getListFriends({ idAccount: this.data.idTaiKhoan }).subscribe(res => {
      if (res && res.Success) {
        this.listFriend = res.listBanBe;
      }
    });
  }

  getListRequestFriend() {
    this.friendsService.getListRequestFriend({ idAccount: this.data.idTaiKhoan }).subscribe(res => {
      if (res && res.Success) {
        this.listRequest = res.listBanBe
      }
    });
  }

  closeDialog() {
    this.dialogRef.close();
  }

  deleteRequest(idbanbe, idaccount) {
    const request1 = {
      idbanbe: idaccount,
      idaccount: idbanbe
    };
    const request2 = {
      idbanbe: idbanbe,
      idaccount: idaccount
    };
    forkJoin(
      this.friendsService.deleteFriend(request1),
      this.friendsService.deleteRequestFriend(request2)
    ).subscribe(([res1, res2]) => {
      if (res1 && res2) {
        this.getListFriends();
        this.getListRequestFriend();
      }
      return of([]);
    });
  }

}
