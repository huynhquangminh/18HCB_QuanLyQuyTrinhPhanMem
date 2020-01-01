import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DialogNoticationsComponent } from './dialog-notications.component';

describe('DialogNoticationsComponent', () => {
  let component: DialogNoticationsComponent;
  let fixture: ComponentFixture<DialogNoticationsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DialogNoticationsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DialogNoticationsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
