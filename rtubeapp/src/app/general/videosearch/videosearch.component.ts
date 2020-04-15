import { Component, OnInit } from '@angular/core';
import { AppSettings } from '../../appSettings';
import { Routes,Router,RouterModule}  from '@angular/router';
import { Http, Headers, RequestOptions, Response } from '@angular/http';
import { CommonService} from '../../services/common.service';

@Component({
  selector: 'app-videosearch',
  templateUrl: './videosearch.component.html',
  styleUrls: ['./videosearch.component.css']
})
export class VideosearchComponent implements OnInit {
  resultdata:any={};
  model:any={};
  videolist:Array<Object>;
  channellist:Array<Object>;
  websiteurl:string=AppSettings.API_BASE;
  constructor(private router: Router,private CommonService:CommonService) { }

  ngOnInit() {
    this.model.totalchannels = 0;
    this.resultdata=[];
    this.model.imageBase = AppSettings.IMAGE_BASE;
  	this.model.searchValue = localStorage.getItem("searchvalue");
    this.channellist = JSON.parse(localStorage.getItem("searchData"));
    this.model.totalchannels = this.channellist.length;
    this.model.createdby = localStorage.getItem("user_fname");
    this.CommonService.getdata(AppSettings.getRtubevideolist)
        .subscribe(det =>{
          //return false;
            if(det.result!="")
            { 
              this.videolist=det.result;
              (<HTMLElement>document.querySelector('.preloader')).style.visibility = "hidden";
             // this.loginService.viewCommontdataTable('dataTable','adsinfo_table');
            } 
             
        });
  }
  videodetail(id:any)
  {
    this.router.navigate(['videodetail/detail', id]);
  }
  navigateTochanneldetail(channelId:any,website:any,channelName:any)
  {
    localStorage.setItem('channelId',channelId);
    this.router.navigate(['channel',website,channelName])
  }
}
