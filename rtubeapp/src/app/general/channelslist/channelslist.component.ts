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
  constructor(private loginService: LoginService,private CommonService: CommonService,private router: Router,private http:Http) { 
    document.body.className="theme-red";

}

  ngOnInit() {
    this.model.totalchannels = 0;
    this.userdata.usergroup =1;
    this.model.imageBase = AppSettings.IMAGE_BASE;
    this.CommonService.insertdata(AppSettings.getChannellist,this.userdata)
    .subscribe(resultdata =>{   
      this.channellist=resultdata.result;  
      this.model.totalchannels = resultdata.result.length;  
    });
  }
  navigateTochanneldetail(channelId:any,website:any,channelName:any)
  {
    this.router.navigate(['channel/'+website+'/'+channelName,channelId])
  }

  // href="http://localhost:4200/channel/websitenamecomehere/channelnamecomehere"

}
