import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DisplaySettingComponent } from './display-setting.component';

describe('DisplaySettingComponent', () => {
  let component: DisplaySettingComponent;
  let fixture: ComponentFixture<DisplaySettingComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DisplaySettingComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DisplaySettingComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
