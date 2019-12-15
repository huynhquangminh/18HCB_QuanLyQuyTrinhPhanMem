import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DialogQuizSuccessComponent } from './dialog-quiz-success.component';

describe('DialogQuizSuccessComponent', () => {
  let component: DialogQuizSuccessComponent;
  let fixture: ComponentFixture<DialogQuizSuccessComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DialogQuizSuccessComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DialogQuizSuccessComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
