import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { NewestVideosComponent } from './newest-videos.component';

describe('NewestVideosComponent', () => {
  let component: NewestVideosComponent;
  let fixture: ComponentFixture<NewestVideosComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ NewestVideosComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(NewestVideosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
