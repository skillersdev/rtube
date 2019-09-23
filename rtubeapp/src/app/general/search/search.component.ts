import { Component, OnInit } from '@angular/core';
import { AppSettings } from '../../appSettings';
import { Routes,Router,RouterModule}  from '@angular/router';
import { Http, Headers, RequestOptions, Response } from '@angular/http';

@Component({
  selector: 'app-search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css']
})
export class SearchComponent implements OnInit {
  resultdata:any={};
  model:any={};
  websiteurl:string=AppSettings.API_BASE;
  constructor(private router: Router,
    private http:Http) { }

  ngOnInit() {
  	this.resultdata=[];
  	this.model.searchValue = localStorage.getItem("searchvalue");
  	this.resultdata = JSON.parse(localStorage.getItem("searchData"));
  	this.model.createdby = localStorage.getItem("user_fname");
    // window.location.reload();
  }
   videodetail(id:any)
  {
    this.router.navigate(['videodetail/detail', id]);
    
  }
}
