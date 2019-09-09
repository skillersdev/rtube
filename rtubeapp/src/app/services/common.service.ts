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
        return this._http.post(apiUrl + idx , options,{headers: headers}).pipe(map((resultdata: Response) => resultdata.json()));
    }
    getdatabyid(apiUrl:any, idx:any) 
    {
    	let headers = new Headers();
        headers.append('Content-Type', 'application/x-www-form-urlencoded');
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
        var body ='model='+JSON.stringify(model);
        return this._http.post(apiUrl, body,{headers: headers}).pipe(map((model: Response) => model.json()));
    }

    insertdata(apiUrl:any, model:any)
     {
        let headers = new Headers();
        headers.append('Content-Type', 'application/x-www-form-urlencoded');
        console.log(model);
        var body ='model='+JSON.stringify(model);

        return this._http.post(apiUrl, body,{headers: headers}).pipe(map((model: Response) => model.json()));
    }
    
    checkexistdata(apiUrl:any, model:any)
    {
        let headers = new Headers();
        headers.append('Content-Type', 'application/x-www-form-urlencoded');
        var body ='model='+JSON.stringify(model);
        console.log(apiUrl);
        return this._http.post(apiUrl, body,{headers: headers}).pipe(map((model: Response) => model.json()));
    }

    deletedata(apiUrl:any, idx:any) 
    {
    	let headers = new Headers();
	    headers.append('Content-Type', 'application/json; charset=utf-8'); 
        let params = '';
        let options = new RequestOptions({
            params: new URLSearchParams()
        });
        return this._http.post(apiUrl + idx , options,{headers: headers}).pipe(map((resultdata: Response) => resultdata.json()));
    }  
    uploadFile(apiUrl:any,fileToUpload: File) 
    {
        let formData: FormData = new FormData();
        formData.append('file',fileToUpload);
        let headers = new Headers();
     
        var body = formData;
    
        return this._http.post(apiUrl, body, { headers: headers }).pipe(map((model: Response) => model.json()));
    }   
    
    chatuploadFile(apiUrl:any,fileToUpload: File) 
    {
        let formData: FormData = new FormData();
        formData.append('file',fileToUpload);
        let headers = new Headers();
     
        var body = formData;
    
        return this._http.post(apiUrl, body, { headers: headers }).pipe(map((model: Response) => model.json()));
    }   
}
