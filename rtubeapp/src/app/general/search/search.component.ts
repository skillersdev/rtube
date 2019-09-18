import { Component, OnInit } from '@angular/core';
import { AppSettings } from '../../appSettings';

@Component({
  selector: 'app-search',
  templateUrl: './search.component.html',
  styleUrls: ['./search.component.css']
})
export class SearchComponent implements OnInit {
  resultdata:any={};
  model:any={};
  websiteurl:string=AppSettings.API_BASE;
  constructor() { }

  ngOnInit() {
  	this.resultdata=[];
  	this.model.searchValue = localStorage.getItem("searchvalue");
  	this.resultdata = JSON.parse(localStorage.getItem("searchData"));
  	this.model.createdby = localStorage.getItem("user_fname");
  }

}
