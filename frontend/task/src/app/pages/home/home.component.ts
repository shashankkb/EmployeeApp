import { Component, OnInit } from '@angular/core';
import {HttpClient} from '@angular/common/http';
@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  constructor( private http: HttpClient) { }
  Company:any;
  ngOnInit(): void {
    this.http.get('http://localhost:8080').subscribe((data)=>{
      console.log(data);
      this.Company = data
    })
  }

  toArray(employees: object) {
    return Object.keys(employees).map(key => employees[key])
  }

}
