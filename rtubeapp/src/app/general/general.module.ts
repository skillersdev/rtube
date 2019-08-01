import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { GeneralRoutingModule } from './general-routing.module';
import { TopbarComponent } from './topbar/topbar.component';
import { HomeComponent } from './home/home.component';


@NgModule({
  declarations: [TopbarComponent, HomeComponent],
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
