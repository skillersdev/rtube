import { Injectable } from '@angular/core';
import { Http, Response,  RequestOptions, URLSearchParams, Headers } from '@angular/http';
import {Observable} from 'rxjs';
import { map } from "rxjs/operators";
// import 'rxjs/add/operator/map';
// import 'rxjs/add/operator/catch';
// import 'rxjs/add/observable/throw';

//BEGIN-REGION - USERSERVICE
@Injectable()
export class CommonService 
{
    constructor(private _http: Http) {
    }

    private _serverError(err: any) 
    {
        console.log('sever error:', err); 
        if(err instanceof Response) {
          return Observable.throw(err.json().error || 'backend server error');
        }
        return Observable.throw(err || 'backend server error');
    }

    getdata(apiUrl:any) 
    {
        let headers = new Headers();
        headers.append('Content-Type', 'application/json; charset=utf-8');

        let params = '';
        let options = new RequestOptions({
            params: new URLSearchParams()
        });
        
        return this._http.get(apiUrl, options).pipe(map((allusers: Response) => allusers.json()));         
    }
    editdata(apiUrl:any, idx:any) 
    {
        let headers = new Headers();
        headers.append('Content-Type', 'application/x-www-form-urlencoded');
        let params = '';
        let options = new RequestOptions({
        // Have to make a URLSearchParams with a query string
        params: new URLSearchParams()
          });
        return this._http.get(apiUrl + idx ,{headers: headers}).pipe(map((resultdata: Response) => resultdata.json()));
    }
    deletedata(apiUrl:any, model:any)
    {
        let headers = new Headers();
        headers.append('Content-Type','application/json; charset=utf-8');
        return this._http.post(apiUrl ,model, {headers:headers}).pipe(map((model: Response) => model.json()));
        
    }

    getdatabyid(apiUrl:any, model:any)
    {
        let headers = new Headers();
        headers.append('Content-Type','application/json; charset=utf-8');
        return this._http.post(apiUrl ,model, {headers:headers}).pipe(map((model: Response) => model.json()));

    }


    deletedatabyid(apiUrl:any, idx:any)
    {
        let headers = new Headers();
        headers.append('Content-Type', 'application/x-www-form-urlencoded');
        let params = '';
        let options = new RequestOptions({
        // Have to make a URLSearchParams with a query string
        params: new URLSearchParams() 
          });
        return this._http.delete(apiUrl + idx ,{headers: headers}).pipe(map((resultdata: Response) => resultdata.json()));
    }
    getdatabyurlid(apiUrl:any, idx:any) 
    {
    	let headers = new Headers();
        headers.append('Content-Type', 'application/json; charset=utf-8');
        let params = '';
        let options = new RequestOptions({
            params: new URLSearchParams()
        });
        return this._http.get(apiUrl + "/" + idx , options).pipe(map((resultdata: Response) => resultdata.json()));
    }

    updatedata(apiUrl:any, model:any) 
     {
    	let headers = new Headers();
        headers.append('Content-Type', 'application/x-www-form-urlencoded');
       // let User= [];
        let params = '';
        let options = new RequestOptions({
        // Have to make a URLSearchParams with a query string
        params: new URLSearchParams()
          });
        return this._http.put(apiUrl + model.id ,model,{headers: headers}).pipe(map((resultdata: Response) => resultdata.json()));
    }
    
   
   
 
}
