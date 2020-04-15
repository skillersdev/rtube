import {Location, LocationStrategy, PathLocationStrategy} from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { Routes,Router,RouterModule,ActivatedRoute}  from '@angular/router';
import { Http, Headers, RequestOptions, Response } from '@angular/http';
import { NgModule } from '@angular/core';

import { AppSettings } from '../../appSettings';
import { LoginService } from '../../services/login.service';
import { CommonService} from '../../services/common.service';

@Component({
  selector: 'app-topheader',
  templateUrl: './topheader.component.html',
  providers:[Location],
  styleUrls: ['./topheader.component.css']
})
export class TopheaderComponent implements OnInit {
  searchModel:any={};
  location: Location;
  currentlocation:any;
  model:any={};
  constructor(private loginService: LoginService,private CommonService: CommonService,private router: Router,private http:Http,private route: ActivatedRoute,location: Location) {
    // document.body.className="theme-red ls-closed";
  }

  ngOnInit() {

    this.loginService.viewsActivate();
  }
   getSearchresults(value:any)
  {
   this.currentlocation = location.pathname;

   this.route.paramMap.subscribe(params => {
    this.model.currentwebsite = params.get('id1'); // (+) converts string 'id' to a number
    this.model.currentchannel = params.get('id2'); // (+) converts string 'id' to a number
 
    });
    // console.log(this.currentlocation);
    // return false;
  
   /*If search is from Channels*/
   if(this.currentlocation=='/channels' || (this.model.currentwebsite && this.model.currentchannel))
   {
    this.searchModel.searchKey = value;
    localStorage.setItem("searchvalue",this.searchModel.searchword);

      //console.log(this.searchModel);
      this.CommonService.insertdata(AppSettings.getchannelSearchresultAPI,this.searchModel)
      .subscribe(package_det =>{       
          this.searchModel = package_det.result;
          //this.searchModel.searchKey = value;
          localStorage.setItem("searchData", JSON.stringify(this.searchModel));
          this.router.navigate(['videodetail/channelsearch']).then(() => {
            window.location.reload();
          });
          //this.window.location.reload();
      });
   }
   /*If search is from home page*/
   else{
    this.searchModel.searchKey = value;
    localStorage.setItem("searchvalue",this.searchModel.searchword);

      //console.log(this.searchModel);
      this.CommonService.insertdata(AppSettings.getSearchresultAPI,this.searchModel)
      .subscribe(package_det =>{       
          this.searchModel = package_det.result;
          //this.searchModel.searchKey = value;
          localStorage.setItem("searchData", JSON.stringify(this.searchModel));
        this.router.navigate(['videodetail/search']).then(() => {
            window.location.reload();
          });
          //this.window.location.reload();
      });
   }

    
  }
}
