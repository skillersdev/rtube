import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { MostPopularVideosComponent } from './most-popular-videos.component';

describe('MostPopularVideosComponent', () => {
  let component: MostPopularVideosComponent;
  let fixture: ComponentFixture<MostPopularVideosComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ MostPopularVideosComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(MostPopularVideosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
