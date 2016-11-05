--select onum, odate, amt from Orders

--select cnum, city, rating from Customers

--select * from Customers
--	where Customers.snum = 1001

--select * from Orders
--	where Orders.snum	=	1001

--select city, sname, snum, comm from Salespeople

--select city, snum, cname, cnum, rating from Customers

--select rating, cname from Customers
--	where Customers.city = 'San Jose'

--select sname, N' из города' as fromCity, city from Salespeople

--select * from Salespeople
--	where	Salespeople.comm > 0.12

--select sname, comm from Salespeople
--	where Salespeople.city = 'London'

--select distinct city from Salespeople

--select distinct snum from Orders

--select distinct cnum from Orders

--select * from Orders
--	where Orders.amt > 1000

--select * from Customers
--	where Customers.rating >150

--select sname, city from salespeople
--	where salespeople.city = 'london'	and	salespeople.comm > 0.10

--select cname, city from Customers
--	where Customers.city = 'San Jose' AND Customers.rating > 150

--select * from Customers
--	where Customers.city != 'Rome' AND Customers.rating <= 150

--select * from Salespeople	
--	where Salespeople.city != 'London' AND Salespeople.comm > 0.11

--select * from Salespeople
--	where (Salespeople.city = 'London' AND Salespeople.comm <= 0.11) or (Salespeople.city != 'London' AND Salespeople.comm > 0.13)

--select * from Customers
--	where	cnum in (2001, 2003, 2007)

--select * from Customers
--	where cnum between 2002 AND 2005

--select * from Customers
--	where cname between 'C' AND 'H'

--select * from Customers
--	where cname like 'C%'

--select * from Customers
--	where cname like 'L__'


