.echo on
.headers on

--Name: myfamily.sql
--Author: Rawlston Morton
--Date: July 2, 2020

drop table if exists myfamily;

create table if exists myfamily;

create table myfamily (
id integer,
name text,
sex integer,
role text,
age integer,
);

insert into myfamily values (1,"Rawlston",1,"Child",22)
insert into myfamily values (2,"Cole",1,"Child",17)
insert into myfamily values (3,"Alex",1,"Child",14)
insert into myfamily values (4, "Alyssa",0,"Child",11)
insert into myfamily values (5, "Raquel",0, "Parent",42)

.schema family

select * from myfamily;
select * from myfamily where sex = 1;
select * from myfamily where role like "Parent";
select * from myfamily where role like "Child";
select name from myfamily 
select avg(age) from myfamily;
select sum(age) from myfamily;