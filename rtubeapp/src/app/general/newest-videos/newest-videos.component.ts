import { Component, OnInit } from '@angular/core';
import { CommonService} from '../../services/common.service';
import { AppSettings } from '../../appSettings';
import { Routes,Router,RouterModule}  from '@angular/router';
import { Http, Headers, RequestOptions, Response } from '@angular/http';

@Component({
  selector: 'app-newest-videos',
  templateUrl: './newest-videos.component.html',
  styleUrls: ['./newest-videos.component.css']
})
export class NewestVideosComponent implements OnInit {
  videolist:Array<Object>;
  websiteurl:string=AppSettings.API_BASE;
  constructor(
  	private CommonService:CommonService,
  	private router: Router,
    private http:Http) { }

  ngOnInit() {

  	 this.CommonService.getdata(AppSettings.getRtubevideolist)
        .subscribe(det =>{
            if(det.result!="")
            { 
              this.videolist=det.result;
             // this.loginService.viewCommontdataTable('dataTable','adsinfo_table');
            } 
             
        });
  }

  videodetail(id:any)
  {
    this.router.navigate(['videodetail/detail', id]);
  }

}
