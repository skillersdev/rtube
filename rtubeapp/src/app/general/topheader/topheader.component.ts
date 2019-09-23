import { Component, OnInit } from '@angular/core';
import { Routes,Router,RouterModule}  from '@angular/router';
import { Http, Headers, RequestOptions, Response } from '@angular/http';
import { NgModule } from '@angular/core';

import { AppSettings } from '../../appSettings';
import { LoginService } from '../../services/login.service';
import { CommonService} from '../../services/common.service';

@Component({
  selector: 'app-topheader',
  templateUrl: './topheader.component.html',
  styleUrls: ['./topheader.component.css']
})
export class TopheaderComponent implements OnInit {
  searchModel:any={};
  constructor(private loginService: LoginService,private CommonService: CommonService,private router: Router,private http:Http) {
    // document.body.className="theme-red ls-closed";
  }

  ngOnInit() {

    this.loginService.viewsActivate();
  }
   getSearchresults(value:any)
  {
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
