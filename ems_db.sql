drop database empdb;
create database empdb;
use empdb;


create table department(
department_id int(10) not null primary key auto_increment,
department_nm varchar(25) not null
);

create table employees(
empid int(10) not null primary key auto_increment,
firstname varchar(45),
lastname varchar(45),
dob date,
email varchar(100),
department_id int(10),
foreign key (department_id) references department(department_id)
);

create table compliance(
complianceid int(10) not null primary key auto_increment,
rltype varchar(15),
details varchar(250),
createdate date,
department_id int(10),
foreign key (department_id) references department(department_id)
);

create table statusreport(
complianceid int(10) not null,
statusrptid int(10) not null primary key auto_increment,
empid int(10) not null,
comments varchar(15) not null,
createdate date,
department_id int(10),
foreign key (complianceid) references compliance(complianceid),
foreign key (empid) references employees(empid),
foreign key (department_id) references department(department_id)
);

create table login_master(
userid int(10) not null primary key auto_increment,
password varchar(128) not null,
role varchar(20) not null,
foreign key (userid) references employees(empid)
);

insert into department(department_nm) values("Dept1");
insert into department(department_nm) values("Dept2");

insert into employees(firstname, lastname, dob, email, department_id) values("Ram", "abc", str_to_date("1998-1-1", "%Y-%m-%d"), "ram@gmail.com", 1);
insert into employees(firstname, lastname, dob, email, department_id) values("Lucky", "def", str_to_date("1998-1-2", "%Y-%m-%d"), "lucky@gmail.com", 2);

insert into login_master(password, role) values(sha2(sha2("admin", 512), 512), "admin");
insert into login_master(password, role) values(sha2(sha2("xyz", 512), 512), "user");
