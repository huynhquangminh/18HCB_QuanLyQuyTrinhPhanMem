import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { TargetDayComponent } from './target-day.component';

describe('TargetDayComponent', () => {
  let component: TargetDayComponent;
  let fixture: ComponentFixture<TargetDayComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ TargetDayComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(TargetDayComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
