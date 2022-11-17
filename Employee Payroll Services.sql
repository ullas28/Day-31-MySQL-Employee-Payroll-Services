create database payroll_service;  
show databases;           
use payroll_service;              
 create table employee_payroll (id INT unsigned NOT NULL AUTO_INCREMENT, name VARCHAR(30) NOT NULL,
 salary Double NOT NULL, start DATE NOT NULL, PRIMARY KEY (id));
select * from employee_payroll where start between CAST('2018-01-01' AS DATE)AND DATE(NOW());
alter table employee_payroll add gender char(1) after name; 
alter table payroll_service.employee_payroll add phone_number varchar(25) after name;
alter table payroll_service.employee_payroll add address varchar(100) DEFAULT 'TBD' after phone_number;
alter table payroll_service.employee_payroll add department varchar(150) not null after address;
select * from payroll_service.employee_payroll;
Delete from  payroll_service.employee_payroll where department;
ALTER table payroll_service.employee_payroll rename column salary to basic_pay;
ALTER table payroll_service.employee_payroll add deductions int not null after basic_pay; 
ALTER table payroll_service.employee_payroll add taxablePay int not null after deductions;
ALTER table payroll_service.employee_payroll add netPay int not null after taxablePay;