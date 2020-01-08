import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DialogCauhoiComponent } from './dialog-cauhoi.component';

describe('DialogCauhoiComponent', () => {
  let component: DialogCauhoiComponent;
  let fixture: ComponentFixture<DialogCauhoiComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DialogCauhoiComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DialogCauhoiComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
