.echo on
.headers on

--Name: Rawlston Morton
--File: lab02b-carter.sql
--Date: July 9, 2020

--1. Who are our customers in North America?
select customerid, companyname, country from customers where country in ('USA', 'Mexico', 'Canada');

--2. What orders were placed in April, 1998?
select orderID, orderdate from orders where orderdate like "%1998-04-%";

--3. What sauces do we sell?
select productid, productname from products where productname like "%sauc%";

--4. You sell some kind of dried up fruit that I liked very much. What its name?
select productid, productname from products where productname like "%dried%";

--10. 'I need a report telling me the most common pairing of customers and employees with the greatest order volume. (by the number of orders places) Exclude pairings with minimal orders.
select customerid, employeeid, count(orderid) as volume from orders group by customerid, employeeid having count (orderid) > 3;

--11. I need a report listing the highets average seeling product by product id, The average is determined by the total sales of each product id divided by the quantity of the product sold. Include only the highest 20.

