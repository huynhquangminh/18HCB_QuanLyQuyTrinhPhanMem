import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { StudyQuizComponent } from './study-quiz.component';

describe('StudyQuizComponent', () => {
  let component: StudyQuizComponent;
  let fixture: ComponentFixture<StudyQuizComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ StudyQuizComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(StudyQuizComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
