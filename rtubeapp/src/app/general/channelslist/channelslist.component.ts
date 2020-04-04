import { Component, OnInit } from '@angular/core';
import { Routes,Router,RouterModule}  from '@angular/router';
import { Http, Headers, RequestOptions, Response } from '@angular/http';
import { AppSettings } from '../../appSettings';
import { LoginService } from '../../services/login.service';
import { CommonService } from '../../services/common.service';

@Component({
  selector: 'app-channelslist',
  templateUrl: './channelslist.component.html',
  styleUrls: ['./channelslist.component.css']
})
export class ChannelslistComponent implements OnInit {

  userdata:any={};
  model:any={};
  channellist:Array<Object>;
  videolist:Array<Object>;
  constructor(private loginService: LoginService,private CommonService: CommonService,private router: Router,private http:Http) { 
    document.body.className="theme-red";

}

  ngOnInit() {
    this.model.totalchannels = 0;
    this.userdata.usergroup =1;
    this.model.imageBase = AppSettings.IMAGE_BASE;
    (<HTMLElement>document.querySelector('.preloader')).style.visibility = "visible";
    this.CommonService.insertdata(AppSettings.getChannellist,this.userdata)
    .subscribe(resultdata =>{   
      this.channellist=resultdata.result;  
      this.model.totalchannels = resultdata.result.length;  
      (<HTMLElement>document.querySelector('.preloader')).style.visibility = "hidden";
    });
    /*Roodab vidos category*/
    this.CommonService.getdata(AppSettings.getRtubevideolist)
    .subscribe(det =>{    
        if(det.result!="")
        { 
          this.videolist=det.result;
        } 
         
    });
  }
  navigateTochanneldetail(channelId:any,website:any,channelName:any)
  {
    localStorage.setItem('channelId',channelId);
    this.router.navigate(['channel',website,channelName])
  }

  videodetail(id:any)
  {
    this.router.navigate(['videodetail/detail', id]);
  }

  // href="http://localhost:4200/channel/websitenamecomehere/channelnamecomehere"

}
