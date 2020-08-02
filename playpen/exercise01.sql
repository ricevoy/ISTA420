.echo on
.headers on

--Name: Rawlston Morton
--File: Quiz02.sql
--Date: July 9, 2020

--1. List the company name, the contact name and the country of all cusotmers in Poland.
select companyname, contactname, country from customers where country like "Poland";

--2. List the orderID, the order date, and the destination city of all orders shipped to Berlin.
select orderid, orderdate, shipcity from orders where shipcity = "Berlin";

--3. How many boxes of Filo Mix do we have in stock?
select unitsinstock, productname from products where productname = "Filo Mix";

--4. List the telephone numbers of all our shippers.
select phone, companyname from shippers;

--5. Who is our oldest employee? Who is our youngest employee?
select firstname, lastname, birthdate from employees order by birthdate asc limit 1;
select firstname, lastname, birthdate from employees order by birthdate desc limit 1;

--6. List the suppliers where the owner of the supplier is also the sales contact.
select supplierid, contactname, contacttitle from suppliers where contacttitle like "%Sales R%";

--7. Mailing Labels
select contacttitle || ' ' || contactname || '
' || companyname || ' 
' || address || '
' || city || ' ' || region || ' ' || postalcode || ' ' || country || '
' || '
' from customers where contacttitle like "Sales Representative" and country like "USA"; 

--8. Telephone Book
select substr(contactname, 1, instr(contactname, " ")-1) || ', ' || substr(contactname, instr(contactname, " ")+1) || ' ' || substr(contactname, 1, instr(contactname, "_ ")) || '      ' || companyname || '   ' || phone from customers;