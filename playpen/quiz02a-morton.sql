.echo on
.headers on

--Name: Rawlston Morton
--File: Quiz02.sql
--Date: July 9, 2020

--1. How many seafood products do we have?
select count(categoryid) as products from products where categoryid = 8;

--2. What are the name and IDs of our seafood products?
select productid, productname from products where categoryid = 8;

--3. What is the average price of our seafood products?
select avg(unitprice) from products where categoryid = 8;

--4. What is our highest priced seafood product, and how much does it cost?
select productid, productname, unitprice from products where categoryid = 8 order by unitprice desc limit 1;

--5. What is our lowest priced seafood product, and how much does it cost?
select productid, productname, unitprice from products where categoryid = 8 order by unitprice asc limit 1;

--6. How many customers do we have in Denmark?
select customerid, companyname, country from customers where country in ('Denmark');

--7. What are the customers names and IDs of our Danish customers?
select customerid, companyname, country from customers where country in ('Denmark');

--8. Which customers do not have a fax number?
select customerid, contactname, fax from customers where fax like "";
