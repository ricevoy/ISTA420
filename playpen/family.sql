.echo on
.headers on

-- Name: Rawlston Morton
-- File: family.sql
-- Date: July 2, 2020

drop table if exists family;

create table family (
id integer primary key,
 name text,
 sex int,
 role text
 );
 
insert into family values (1,"charles",1,"parent");
insert into family values (2,"bonnie",0,"parent");
insert into family values (3,"casie",0,"child");
insert into family values (4,"jackson",1,"child");
insert into family values (5,"max",1,"pet");
insert into family values (6,"midnight",0,"pet");

select * from family;
select * from family where sex = 1;
select * from family where role like "child";
select * from family where role like "pet";
select * from family where id = (id % 2 = 0);