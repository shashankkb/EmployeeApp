var express = require('express')
var app = express()
var cors = require('cors')
const Mysql = require('sync-mysql') 
var connection = new Mysql({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'testdb'
})
var corsOptions = {
  origin: '*',
  optionsSuccessStatus: 200 // some legacy browsers (IE11, various SmartTVs) choke on 204
}
//connection.connect()
app.get('/',  cors(corsOptions),function (req, res) {
var a = []
var data;
var company =  connection.query('SELECT * from company');
for(let i = 0 ; i < company.length; i++){
  data = {
    CompanyName: company[i].name,
    Employees:[]
  }
  var employees = connection.query('SELECT * from employee where company_id='+company[i].id);
  for(let j = 0; j < employees.length; j++){
    data.Employees.push({
      Name: employees[j].name,
      details: employees[j]

    })
  }
  a.push(data);
} 
res.send(a)
})
//connection.end()
app.listen("8080")