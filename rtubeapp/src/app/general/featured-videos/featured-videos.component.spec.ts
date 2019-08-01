import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FeaturedVideosComponent } from './featured-videos.component';

describe('FeaturedVideosComponent', () => {
  let component: FeaturedVideosComponent;
  let fixture: ComponentFixture<FeaturedVideosComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FeaturedVideosComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FeaturedVideosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
