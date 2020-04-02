import { Component, OnInit } from '@angular/core';
import { Routes,Router,RouterModule,ActivatedRoute}  from '@angular/router';
import { AppComponent } from '../../app.component';
import { Http, Headers, RequestOptions, Response } from '@angular/http';
import { AppSettings } from '../../appSettings';
import { LoginService } from '../../services/login.service';
import { CommonService } from '../../services/common.service';
//import { url } from 'inspector';

@Component({
  selector: 'app-viewchannel',
  templateUrl: './viewchannel.component.html',
  styleUrls: ['./viewchannel.component.css']
})
export class ViewchannelComponent implements OnInit {
  channelId:any;
  editchannelModel:any={};
  videodetails:Array<Object>;
  constructor(private loginService: LoginService,private CommonService: CommonService,
    private route: ActivatedRoute,private router: Router,private http:Http) { }

  ngOnInit() {
    this.editchannelModel.websiteurl = AppSettings.weburl;
    this.editchannelModel.total_views=0;
    this.videodetails=[];
    this.getchannelDetails(localStorage.getItem('channelId'));
  }
  getchannelDetails(channelId:any)
  {
    this.CommonService.editdata(AppSettings.editchannel,channelId)
        .subscribe(resultdata =>{   
          this.editchannelModel = resultdata.result;  
          this.videodetails = resultdata.total_videos;  
          this.editchannelModel.imageBase = AppSettings.IMAGE_BASE;               
        });
  }
  videodetail(id:any)
  {
    this.router.navigate(['videodetail/detail', id]);
  }
  setBackground()
  {
    let styles = {'background-position':'center center','background-repeat':'no-repeat','background-attachment':'fixed','background-size':'cover','background-image':'url('+this.editchannelModel.imageBase+this.editchannelModel.channel_banner_img+')'};   
    return styles;
  }
  // navigateToWebsite(websiteName:any)
  // {
  //   let url= this.router.createUrlTree(["/website/"+websiteName]);
  //   window.open(url.toString(), '_blank');
  // }

}
