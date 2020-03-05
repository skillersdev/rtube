import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { DetailVideosComponent } from './newest-videos/detailvideos.component';
import { SearchComponent } from './search/search.component';
import { ChannelslistComponent } from './channelslist/channelslist.component';
const routes: Routes = [
  {
    path: '',
    component: HomeComponent
  },
  {
    path: 'detail/:id',
    component: DetailVideosComponent
  },
  {
    path: 'search',
    component: SearchComponent
  },
  {
    path: 'channels',
    component: ChannelslistComponent
  },
  
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class GeneralRoutingModule { }
