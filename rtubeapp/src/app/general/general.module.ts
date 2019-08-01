import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { GeneralRoutingModule } from './general-routing.module';
import { TopbarComponent } from './topbar/topbar.component';
import { HomeComponent } from './home/home.component';
import { FeaturedVideosComponent } from './featured-videos/featured-videos.component';
import { WatchMoviesComponent } from './watch-movies/watch-movies.component';
import { MostPopularVideosComponent } from './most-popular-videos/most-popular-videos.component';
import { NewestVideosComponent } from './newest-videos/newest-videos.component';
import { BrowesByCategoryComponent } from './browes-by-category/browes-by-category.component';
import { FooterComponent } from './footer/footer.component';


@NgModule({
  declarations: [TopbarComponent, HomeComponent, FeaturedVideosComponent, WatchMoviesComponent, MostPopularVideosComponent, NewestVideosComponent, BrowesByCategoryComponent, FooterComponent],
  imports: [
    CommonModule,
    GeneralRoutingModule,
  ],
  providers: [
    ],
   exports: [
     
      TopbarComponent
     
    ]
})
export class GeneralModule { }
