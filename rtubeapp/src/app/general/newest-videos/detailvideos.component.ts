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
  websiteurl:string=AppSettings.IMAGE_BASE;
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
    this.model.total_likes=0;
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
  videolike()
  {
    this.CommonService.editdata(AppSettings.likevideodataRestApiUrl,this.id)
    .subscribe(resultdata =>{ 
      if(resultdata.likes)
      {
        this.model.total_likes=resultdata.likes;
      }else if(resultdata.status!=='failure' && this.model.total_likes>0){
        this.model.total_likes=this.model.total_likes
      }
      // this.model.total_likes=(resultdata.likes || this.model.total_likes>0)?resultdata.likes:0;     
    });
  }

}
