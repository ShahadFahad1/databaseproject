CREATE TABLE Book (
ISBN CHAR(10) NOT NULL,
nameb VARCHAR (30) NOT NULL,
Author VARCHAR (30) NOT NULL,
Locationb VARCHAR (20) NOT NULL,
stateb VARCHAR (20) NOT NULL,
PRIMARY KEY(ISBN));


CREATE TABLE Member (
ID CHAR (9) NOT NULL,
mname VARCHAR (20) NOT NULL,
joinDate DATE, 
endDate DATE, 
address VARCHAR (20) NOT NULL,
PRIMARY KEY(ID));

CREATE TABLE Room(
Roomno number(5) NOT NULL, 
State VARCHAR (30) NOT NULL, 
type VARCHAR (30) NOT NULL,
LocationR VARCHAR (30) NOT NULL,
PRIMARY KEY (Roomno));

create table  Department (
DepNo NUMBER(4) not null ,
DepName varchar2 (20) not null ,
primary key (DepNo));

create table Fineb (
NameOfMember varchar2(30) not null ,
Amount number(30) not null  ,
NumberOfDay number(30) not null );

create table employeelib(
empId number(10) not null ,
empName VARCHAR(20) not null ,
Email varchar(20) not null ,
Locationemp VARCHAR (30) NOT NULL,
salary number(5) not null ,
DEPNo number(10) not null ,
primary key (empId),
FOREIGN key (DEPNo) REFERENCES Department (DepNo));

CREATE TABLE Loanb (
LoanNo number(10) NOT NULL, 
IdMember CHAR (9) not null ,
ISBNofBook CHAR(10) not null ,
StateL VARCHAR(30) NOT NULL, 
endLo date not null ,
DateLoaned DATE NOT NULL,
PRIMARY KEY(LoanNo),
 FOREIGN key (ISBNofBook) REFERENCES Book (ISBN),
 FOREIGN key (IdMember) REFERENCES Member (ID));

create table Author (
ISBNA CHAR(10) NOT NULL,
Email varchar(20) not null ,
IDNo CHAR (9) NOT NULL,
AuName VARCHAR(20) not null ,
Phone number(10),
primary key (IDNO),
 FOREIGN key (ISBNA) REFERENCES Book (ISBN)
);

create table publisher (
IDNOP CHAR (9) NOT NULL,
Namep VARCHAR(20) not null,
ISBNofPublisher char(10) not null,
primary key (IDNOP),
 FOREIGN key (ISBNofPublisher) REFERENCES Book (ISBN));





