import { Injectable } from '@angular/core'; 
import { HttpClient } from '@angular/common/http'; 
 
@Injectable({   
  providedIn: 'root' 
  }) 
  
  export class AppService { 
 
    getUsers() {     
      return this.http.get('http://v-edcaroexpressapi.azurewebsites.net/users');
//      return this.http.get('http://<alias>-nodejsbootcampapi.azurewebsites.net/users');
    }
  
    constructor(     
      private http: HttpClient   
      ) {} 
  }