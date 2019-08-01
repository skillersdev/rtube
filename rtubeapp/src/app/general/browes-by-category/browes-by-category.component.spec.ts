import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { BrowesByCategoryComponent } from './browes-by-category.component';

describe('BrowesByCategoryComponent', () => {
  let component: BrowesByCategoryComponent;
  let fixture: ComponentFixture<BrowesByCategoryComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ BrowesByCategoryComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(BrowesByCategoryComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
