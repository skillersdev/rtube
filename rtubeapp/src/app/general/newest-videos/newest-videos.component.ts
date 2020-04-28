import { Component, OnInit } from '@angular/core';
import { CommonService} from '../../services/common.service';
import { LoginService } from '../../services/login.service';
import { AppSettings } from '../../appSettings';
import { Routes,Router,RouterModule}  from '@angular/router';
import { Http, Headers, RequestOptions, Response } from '@angular/http';
declare var $: any;
declare var jQuery: any;

@Component({
  selector: 'app-newest-videos',
  templateUrl: './newest-videos.component.html',
  styleUrls: ['./newest-videos.component.css']
})
export class NewestVideosComponent implements OnInit {
  videolist:Array<Object>;
  premium_video_list:Array<Object>;
  searchModel:any={}; 
  websiteurl:string=AppSettings.API_BASE;
  constructor(
    private CommonService:CommonService,
    private LoginService:LoginService,
    private router: Router,
    private http:Http) { }

  ngOnInit() {
    this.videolist=[];
    this.premium_video_list=[];
    jQuery(document).ready(function() {
      jQuery("#owl-demo").owlCarousel({
      });
    });

  jQuery(document).ready(function () { jQuery("#owl-demo").owlCarousel(); });
    (<HTMLElement>document.querySelector('.preloader')).style.visibility = "visible";
     this.CommonService.getdata(AppSettings.getRtubevideolist)
        .subscribe(det =>{
          //return false;
            if(det.result!="")
            { 
              this.videolist=det.result.videos;
              this.premium_video_list=det.result.premium_videos;
              this.LoginService.viewsActivate();
              (<HTMLElement>document.querySelector('.preloader')).style.visibility = "hidden";
             // this.loginService.viewCommontdataTable('dataTable','adsinfo_table');
            } 
            
        });
  }

  videodetail(id:any)
  {
    this.router.navigate(['videodetail/detail', id]);
  }
 
}
