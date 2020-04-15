import { Component, OnInit } from '@angular/core';
import { AppSettings } from '../../appSettings';
import { Routes,Router,RouterModule}  from '@angular/router';
import { Http, Headers, RequestOptions, Response } from '@angular/http';

@Component({
  selector: 'app-videosearch',
  templateUrl: './videosearch.component.html',
  styleUrls: ['./videosearch.component.css']
})
export class VideosearchComponent implements OnInit {
  resultdata:any={};
  model:any={};
  channellist:Array<Object>;
  websiteurl:string=AppSettings.API_BASE;
  constructor(private router: Router) { }

  ngOnInit() {
    this.model.totalchannels = 0;
    this.resultdata=[];
    this.model.imageBase = AppSettings.IMAGE_BASE;
  	this.model.searchValue = localStorage.getItem("searchvalue");
    this.channellist = JSON.parse(localStorage.getItem("searchData"));
    this.model.totalchannels = this.channellist.length;
    this.model.createdby = localStorage.getItem("user_fname");
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
