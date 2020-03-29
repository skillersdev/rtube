import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewchannelComponent } from './viewchannel.component';

describe('ViewchannelComponent', () => {
  let component: ViewchannelComponent;
  let fixture: ComponentFixture<ViewchannelComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ViewchannelComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewchannelComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
