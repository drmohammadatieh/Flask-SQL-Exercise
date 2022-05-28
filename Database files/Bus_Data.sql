/* Bus_Data.sql*/

/*load Depot with data*/

insert into Depot values
('101','Holloway','Camden Road');

insert into Depot values
('102','Hornsey','High Road');

insert into Depot values
('104','Islington','Upper Street');


/*load BusType with data*/

insert into BusType values
('1','double-decker');

insert into BusType values
('2','metrobus');

insert into BusType values
('3','midibus');

insert into BusType values
('4','bendy bus');

insert into BusType values
('5','open top');


/*load BusDriver with data*/

insert into BusDriver values
('001','Jane Brown',1800,'1985-02-09','101');

insert into BusDriver values
('006','Sally Smith',1750,'1996-03-09',null);

insert into BusDriver values
('007','James Bond',1500,'1999-01-09','102');

insert into BusDriver values
('008','Maggie May',2200,'2000-01-09','102');

insert into BusDriver values
('009','Jack Jones',1400,'2001-08-09','101');

insert into BusDriver values
('010','Peter Piper',3500,'2004-06-09','104');

insert into BusDriver values
('011','John Peel',2000,'2005-02-09','102');



/*load Cleaner with data*/

insert into Cleaner values
('110','John',2550,'101');

insert into Cleaner values
('111','Jean',2500,'101');

insert into Cleaner values
('112','Betty',2400,'102');

insert into Cleaner values
('113','Vince',2800,'102');

insert into Cleaner values
('114','Jay',3000,'102');

insert into Cleaner values
('115','Doug',2000,'102');

insert into Cleaner values
('116','Geeta',4000,null);


/*load Route with data */

insert into Route values
('10','Tottenham/Angel','102');

insert into Route values
('11','Islington/Highgate','102');

insert into Route values
('6','Camden/Golders Green','101');

insert into Route values
('7','Finchley/Tottenham','101');

insert into Route values
('8','Hendon/Muswell Hill','101');


/*load Bus with data */

insert into Bus values
('A123ABC','Routemaster','1','101','110');

insert into Bus values
('D678FGH','Volvo 8700','2','101','110');

insert into Bus values
('D345GGG','Volvo 8500','1','101','112');

insert into Bus values
('H259IJK','Daf SB220','3','102','114');

insert into Bus values
('P200IJK','Mercedes 709D','2','102','113');

insert into Bus values
('P300RTY','Mercedes Citaro','4','102','113');

insert into Bus values
('R678FDS','Daf SB220','1',null,'110');



/*load Ability with data*/

insert into Ability values
('001','6');

insert into Ability values
('001','7');

insert into Ability values
('001','8');

insert into Ability values
('007','6');

insert into Ability values
('007','10');

insert into Ability values
('008','10');

insert into Ability values
('008','11');

insert into Ability values
('009','7');


/* load Training with data */

insert into Training values 
('001','1','2006-01-09');

insert into Training values 
('001','2','2006-01-09');

insert into Training values 
('006','2','2006-02-09');

insert into Training values 
('007','1','2006-02-09');

insert into Training values 
('007','2','2006-02-09');

insert into Training values 
('007','3','2006-03-09');

insert into Training values 
('008','2','2006-03-09');

insert into Training values 
('008','3','2006-03-09');

insert into Training values 
('008','4','2006-04-09');

insert into Training values 
('009','3','2006-04-09');

insert into Training values 
('009','4','2006-05-09');

insert into Training values 
('011','1','2006-05-09');

insert into Training values 
('011','2','2006-05-09');

insert into Training values 
('011','3','2006-06-09');

insert into Training values 
('011','4','2006-06-09');

insert into Training values 
('011','5','2006-06-09');


/*load Restriction with data*/

insert into Restriction values
('6','1');

insert into Restriction values
('6','2');

insert into Restriction values
('6','3');

insert into Restriction values
('6','4');

insert into Restriction values
('7','1');

insert into Restriction values
('7','2');

insert into Restriction values
('8','3');

insert into Restriction values
('8','4');

insert into Restriction values
('10','1');

insert into Restriction values
('10','2');

insert into Restriction values
('10','3');

insert into Restriction values
('10','4');

insert into Restriction values
('11','1');

insert into Restriction values
('11','2');

insert into Restriction values
('11','3');

insert into Restriction values
('11','4');
commit;

select * from Ability;
select * from Training;
select * from Restriction;
select * from Busdriver;
select * from Route;
select * from Bus;
select * from Cleaner;
select * from BusType;
select * from Depot;
*/