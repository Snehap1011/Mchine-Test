CREATE DATABASE SalesMonitoringSystemDB;
USE SalesMonitoringSystemDB;

CREATE TABLE TblRole(
RoleId INT IDENTITY(1,1) PRIMARY KEY,
RoleName VARCHAR(50) NOT NULL);
INSERT INTO TBLROLE(RoleName)
VALUES ('Administrator'),
('Sales Coordinator');

CREATE TABLE TblUser
(UserId INT IDENTITY(1,1) PRIMARY KEY,
UserName VARCHAR(20),
UserPassword VARCHAR(20),
RoleId INT,CONSTRAINT FK_LOGIN FOREIGN KEY(RoleId) REFERENCES TBLROLE(RoleId));
INSERT INTO TBLUSER(UserName,UserPassword,RoleId)
VALUES('Ram','Ram@123',1),
('Sneha','Sneha@123',2),
('Maya','Maya@123',1),
('Vinay','Vinay@123',2);


CREATE TABLE EmployeeRegistration
(Emp_id INT IDENTITY(1,1) PRIMARY KEY,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50),
Age INT,
Gender VARCHAR(10),
Address VARCHAR(50),
PhoneNumber NUMERIC,
UserId INT FOREIGN KEY REFERENCES TBLUSER(UserId));


CREATE TABLE VisitTable
(Visit_id INT IDENTITY(1,1) PRIMARY KEY,
Cust_Name VARCHAR(100),
Contact_Person VARCHAR(100),
Contact_No NUMERIC,
Interest_Product VARCHAR(100),
Visit_Subject VARCHAR(100),
Description VARCHAR(100),
Visit_Datetime DATETIME,
Is_Disabled BIT,
Is_Deleted BIT,
Emp_id INT FOREIGN KEY REFERENCES EmployeeRegistration(Emp_id));
