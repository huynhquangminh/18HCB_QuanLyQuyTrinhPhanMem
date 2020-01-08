import { Component, OnInit } from '@angular/core';
import { NgForm } from '@angular/forms';
import { ThongBaoService } from 'src/app/services/notications.service';

@Component({
  selector: 'app-contact',
  templateUrl: './contact.component.html',
  styleUrls: ['./contact.component.scss']
})
export class ContactComponent implements OnInit {
  formContcat: NgForm;
  public email = '';
  public noidung = '';
  isPhanHoi = false;
  constructor(
    private thongBaoService: ThongBaoService
  ) { }

  ngOnInit() {
  }

  submitContact() {
    this.thongBaoService.themphanhoi({ email: this.email, noidung: this.noidung }).subscribe(res => {
      if (res) {
        console.log(res);
        this.isPhanHoi = res;
        this.email = '';
        this.noidung = '';
      }
    });
  }

}
