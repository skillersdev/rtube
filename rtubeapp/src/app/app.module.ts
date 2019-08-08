import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { HttpModule } from '@angular/http';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

import { LoginService } from './services/login.service';
import { CommonService } from './services/common.service';
import { EventEmitterService} from './services/event-emitter.service';


@NgModule({
  declarations: [
    AppComponent,

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
