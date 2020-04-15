import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { HttpModule } from '@angular/http';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

import { LoginService } from './services/login.service';
import { CommonService } from './services/common.service';
import { EventEmitterService} from './services/event-emitter.service';
import { VideosearchComponent } from './videosearch/videosearch.component';


@NgModule({
  declarations: [
    AppComponent,
    VideosearchComponent,

  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpModule
  ],
  providers: [LoginService,CommonService,EventEmitterService],
  bootstrap: [AppComponent]
})
export class AppModule { }
