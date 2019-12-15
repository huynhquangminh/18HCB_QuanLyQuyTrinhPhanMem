import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DialogTimeOutComponent } from './dialog-time-out.component';

describe('DialogTimeOutComponent', () => {
  let component: DialogTimeOutComponent;
  let fixture: ComponentFixture<DialogTimeOutComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DialogTimeOutComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DialogTimeOutComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
