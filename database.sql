Use turf;

CREATE TABLE IF NOT EXISTS account1 (
	id int NOT NULL AUTO_INCREMENT,
  	username varchar(50) NOT NULL,
  	passw varchar(255) NOT NULL,
  	email varchar(100) NOT NULL,
    phone varchar(100) NOT NULL,
    PRIMARY KEY (id)
) ;

INSERT INTO account1 VALUES (NULL,'Pratik','pratik','pd@gmail.com','1234567890');
INSERT INTO account1 VALUES (NULL,'Trevor','tre','td@gmail.com','1233567890');

CREATE TABLE IF NOT EXISTS account2 (
	id int(11) NOT NULL AUTO_INCREMENT,
  	username varchar(50) NOT NULL,
  	`password` varchar(255) NOT NULL,
  	email varchar(100) NOT NULL,
    phone varchar(100) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO account2 VALUES(1, 'Trevor','tre', 'dcosta@gmail.com','999999999'),(2, 'Pratik','dhamaal', 'dhamaal@gmail.com','999999999'),(3, 'Pranit','sir', 'sir@gmail.com','999999999');
INSERT INTO account2 VALUES(4, 'CHEMBUR KARNATAKA','ckt', 'ck@gmail.com','999999999'),(5, 'ACRES CLUB','acc', 'accr@gmail.com','999999999'),(6, 'NMSA','nmsa', 'nmsa@gmail.com','999999999');
INSERT INTO account2 VALUES(7, 'GOALBOX SAINATH','gst', 'gst@gmail.com','999999999'),(8, 'URBAN SPORTS','uss', 'uss@gmail.com','999999999'),(9, 'BOUNCE FOOTBALL','bfl', 'bfl@gmail.com','999999999');
select * from account2;

create table location(
lid int auto_increment not null,
l_name varchar(40),
primary key(lid)
);

insert into location (l_name) values('Vashi'),('Thane'),('Chembur');

create table turf(
tid int auto_increment not null,
t_name varchar(20),
ltid int,
primary key(tid),
foreign key(ltid) references location(lid)
);

insert into turf(t_name,ltid)
			values('NMSA',1),('GOALBOX SAINATH ',1),('URBAN SPORTS',2),('BOUNCE FOOTBALL',2),('ACRES CLUB',3),('CHEMBUR KARNATAKA',3);

create table dates(
did int auto_increment not null,
t_date varchar(10),
tdid int,
start_time time ,
end_time time,
sta enum('booked','not booked'),
primary key(did),
foreign key(tdid) references turf(tid)
);


create table bookings(
b_id int auto_increment not null,
customer_name varchar(40),
cust_phone int,
locat varchar(40) not null,
turf_name varchar(40) not null,
b_date date,
starttime time ,
endtime time,
primary key(b_id)
);


insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-24',1,'10:00:00','11:00:00');            
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-24',1,'11:15:00','12:15:00');
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-24',1,'18:00:00','19:00:00');
            
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-25',1,'10:00:00','11:00:00');            
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-25',1,'11:15:00','12:15:00');
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-25',1,'18:00:00','19:00:00');
 
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-24',2,'10:00:00','11:00:00');            
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-24',2,'11:15:00','12:15:00');
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-24',2,'18:00:00','19:00:00');
            
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-25',2,'10:00:00','11:00:00');            
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-25',2,'11:15:00','12:15:00');
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-25',2,'18:00:00','19:00:00');
 
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-24',3,'10:00:00','11:00:00');            
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-24',3,'11:15:00','12:15:00');
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-24',3,'18:00:00','19:00:00');
            
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-25',3,'10:00:00','11:00:00');            
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-25',3,'11:15:00','12:15:00');
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-25',3,'18:00:00','19:00:00');
            
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-24',4,'10:00:00','11:00:00');            
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-24',4,'11:15:00','12:15:00');
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-24',4,'18:00:00','19:00:00');
            
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-25',4,'10:00:00','11:00:00');            
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-25',4,'11:15:00','12:15:00');
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-25',4,'18:00:00','19:00:00');

insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-24',5,'10:00:00','11:00:00');            
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-24',5,'11:15:00','12:15:00');
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-24',5,'18:00:00','19:00:00');
            
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-25',5,'10:00:00','11:00:00');            
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-25',5,'11:15:00','12:15:00');
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-25',5,'18:00:00','19:00:00');
            
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-24',6,'10:00:00','11:00:00');            
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-24',6,'11:15:00','12:15:00');
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-24',6,'18:00:00','19:00:00');
            
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-25',6,'10:00:00','11:00:00');            
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-25',6,'11:15:00','12:15:00');
insert into dates(t_date,tdid,start_time,end_time)
			values('2021-03-25',6,'18:00:00','19:00:00');
