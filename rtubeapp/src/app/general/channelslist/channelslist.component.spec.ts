import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ChannelslistComponent } from './channelslist.component';

describe('ChannelslistComponent', () => {
  let component: ChannelslistComponent;
  let fixture: ComponentFixture<ChannelslistComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ChannelslistComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ChannelslistComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
