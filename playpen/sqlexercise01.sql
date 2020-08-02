.echo on
.headers on

--Name: SQLExcercise01.sql
--Author: Rawlston Morton
--Date: July 3,2020

drop table if exists mycars;

create table mycars (
id int,
make text,
wheels int,
model text,
transmission int,
color text
);

insert into mycars values (1,"Jeep",4,"Cherokee",0,"Green");
insert into mycars values (2,"Dodge",4,"Charger",0,"Grey");
insert into mycars values (3,"Ford",4,"Taurus",1,"Blue");
insert into mycars values (4,"Ford",4,"Expedition",0,"White");
insert into mycars values (5,"Toyota",4,"Camry",1,"White");

select * from mycars;
select * from mycars where wheels = 4;
select * from mycars where color like "White";
select * from mycars where model like "Ford";
select * from mycars where transmission = 1;
select sum(wheels) from mycars;
 
