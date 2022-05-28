/* Bus_schema.sql*/

/*drop existing tables when necessary */

/*
drop table Ability;
drop table Training;
drop table Restriction;
drop table BusDriver;
drop table Route;
drop table Bus;
drop table Cleaner;
drop table BusType;
drop table Depot;
*/

/* create statements for the Bus Drivers' database*/

Create table Depot
	(dno		varchar(5),
	dname		varchar(20),
	daddress	varchar(20),
	constraint pk_dno primary key(dno)	);


Create table BusType
	(tno	varchar(5), 
	tdescript	varchar(20), 
	constraint pk_tno primary key(tno)	);


Create table BusDriver
	(bdno		varchar(5), 
	bdname		varchar(20),
	bdsalary	numeric(6,2),
	pcvdate		date,	
	dno		varchar(5),
	constraint pk_bdno primary key(bdno),		
	constraint fk_dno foreign key(dno) references Depot(dno));

		
Create table Cleaner
	(cno		varchar(5), 
	cname		varchar(20), 		
	csalary		numeric(6,2),
	dno		varchar(5),
	constraint pk_cno primary key(cno),
	constraint fk_dno1 foreign key(dno) references Depot(dno));
			

Create table Route
	(rno		varchar(5), 	
	rdescript	varchar(30), 
	dno		varchar(5), 
	constraint pk_rno primary key(rno),		
	constraint fk_dno2 foreign key(dno) references Depot(dno));


Create table Bus
	(regno		varchar(10), 
	model		varchar(20), 
	tno		varchar(5), 
	dno		varchar(5), 
	cno		varchar(5), 
	constraint pk_reg_no primary key(regno),		
	constraint fk_tno foreign key(tno) references BusType(tno),
	constraint fk_dno3 foreign key(dno) references Depot(dno),
	constraint fk_cno foreign key(cno) references Cleaner(cno));
  

Create table Ability
	(bdno		varchar(5),
	rno		varchar(5),
	constraint pk_drroute primary key(bdno, rno),
	constraint fk_bdno foreign key(bdno) references BusDriver(bdno),
	constraint fk_rno foreign key(rno) references Route(rno)	);

Create table Training
	(bdno		varchar(5),
	tno		varchar(5),
	trainingdate	date,
	constraint pk_drbustype primary key(bdno, tno),	
	constraint fk_bdno2 foreign key(bdno) references BusDriver(bdno),
	constraint fk_tno2 foreign key(tno) references BusType(tno));

Create table Restriction
	(rno	varchar(5),
	tno	varchar(5),
	constraint pk_rbustype primary key(rno, tno),
	constraint fk_rno2 foreign key(rno) references Route(rno),
	constraint fk_tno3 foreign key(tno) references BusType(tno));


select table_name from user_tables;