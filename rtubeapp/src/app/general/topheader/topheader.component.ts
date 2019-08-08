import { Component, OnInit } from '@angular/core';
import { Routes,Router,RouterModule}  from '@angular/router';
import { Http, Headers, RequestOptions, Response } from '@angular/http';

import { AppSettings } from '../../appSettings';
import { LoginService } from '../../services/login.service';

@Component({
  selector: 'app-topheader',
  templateUrl: './topheader.component.html',
  styleUrls: ['./topheader.component.css']
})
export class TopheaderComponent implements OnInit {

  constructor(private loginService: LoginService,private router: Router,private http:Http) {
    // document.body.className="theme-red ls-closed";
  }

  ngOnInit() {

    this.loginService.viewsActivate();
  }

}
