import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DialogComfirmComponent } from './dialog-comfirm.component';

describe('DialogComfirmComponent', () => {
  let component: DialogComfirmComponent;
  let fixture: ComponentFixture<DialogComfirmComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DialogComfirmComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DialogComfirmComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
