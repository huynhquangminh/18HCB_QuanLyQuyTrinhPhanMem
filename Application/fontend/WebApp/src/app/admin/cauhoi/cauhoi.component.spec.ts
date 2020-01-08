import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CauhoiComponent } from './cauhoi.component';

describe('CauhoiComponent', () => {
  let component: CauhoiComponent;
  let fixture: ComponentFixture<CauhoiComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CauhoiComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CauhoiComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
