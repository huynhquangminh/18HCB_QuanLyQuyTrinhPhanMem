import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DialogFriendsComponent } from './dialog-friends.component';

describe('DialogFriendsComponent', () => {
  let component: DialogFriendsComponent;
  let fixture: ComponentFixture<DialogFriendsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DialogFriendsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DialogFriendsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
