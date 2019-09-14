import { Component, OnInit } from '@angular/core';
import { CommonService} from '../../services/common.service';
import { AppSettings } from '../../appSettings';
import { Routes,Router,RouterModule,ActivatedRoute}  from '@angular/router';
import { Http, Headers, RequestOptions, Response } from '@angular/http';

@Component({
  selector: 'detailvideos',
  templateUrl: './detailvideos.component.html',
 // styleUrls: ['./newest-videos.component.css']
})
export class DetailVideosComponent implements OnInit {
  videolist:Array<Object>;
  videourl:string=AppSettings.videoUrl;
  websiteurl:string=AppSettings.API_BASE;
  FetchvideodataRestApiUrl: string = AppSettings.EditvideoDetail;
  alldata: any = {};
  private sub: any;
  model:any={};
  id:number;
  constructor(
  	private CommonService:CommonService,
  	private router: Router,
    private route: ActivatedRoute,
    private http:Http) { }

  ngOnInit() {

  	this.sub = this.route.params.subscribe(params => {
        this.id = +params['id']; // (+) converts string 'id' to a number
        this.edituser(this.id);
        
        });
      
  }

  edituser(id:any)
  {
    this.CommonService.editdata(this.FetchvideodataRestApiUrl,id)
        .subscribe(resultdata =>{   
          this.model = resultdata.result.video_det;
          
        });
  }

}
