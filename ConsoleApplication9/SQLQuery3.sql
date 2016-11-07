--select * from orders
--	where odate in('03.10.2015','04.10.2015')

--select * from orders
--	where snum in(1001, 1003, 1007)

--select sum(amt) from Orders
--	where  odate = '03.10.2015'

--select count(distinct city) from Customers

--select cnum, min(amt) minAmt from Orders
--	group by cnum

--select cname from Customers
--	where cname like ('G%')
--		order by cname asc

--select city, max(rating) from Customers
--	group by city

--select count(distinct cnum), odate from orders
--	group by odate

--select 'For the city', city, 'the highest rating is:', max(rating) from Customers
--	group by city

--select cname, cnum, rating from Customers
--	order by rating desc

--select sum(amt) as sumAmt, odate from Orders
--	group by odate
--		order by sumAmt desc

--select onum, orders.snum, (comm*amt) as commAmt from orders
--	join Salespeople
--		on Salespeople.snum = Orders.snum

--select onum, cname from Orders, Customers
--	where Orders.cnum = Customers.cnum

--select onum, cname, odate, amt from Orders
--	join Customers 
--		on Orders.cnum = Customers.cnum

--select onum, sname, cname from Orders	
--	join Salespeople 
--		on Salespeople.snum = Orders.snum
--	join Customers
--		on Customers.cnum = Orders.cnum

--select cname, sname, comm from Customers
--	join Salespeople
--		on Salespeople.snum = Customers.snum
--			where comm > 0.12
	
--select Salespeople.snum, sum(comm*amt) as sumComm from Orders
--	join Salespeople 
--		on Salespeople.snum = Orders.snum
--	join Customers
--		on Customers.cnum = Orders.cnum
--			where rating > 100
--	group by Salespeople.snum

--select s1.city, s1.sname, s2.sname from Salespeople as s1
--	join Salespeople as s2
--		on s1.city = s2.city
--			where s1.snum < s2.snum


--select cname, o1.onum, o2.onum from Orders as o1
--	join Orders as o2 
--		on o1.cnum = o2.cnum
--	join Customers
--		on Customers.cnum = o1.cnum
--	where o1.onum < o2.onum

--select c.cname, c.city, c.rating from Customers as c
--	join Customers as cH
--		on cH.rating = c.rating
--			where cH.cnum = 2001 and c.cnum != cH.cnum
--	--where rating = (select rating from Customers where cnum = 2001)


-----------------------------------------10-----------------------------------

--select * from Orders
--	where cnum in (select cnum from Customers where cname = 'Cisneros')

--select cname, rating from Customers
--	where cnum in(select cnum from orders where amt > (select AVG(amt) from Orders))

--select snum, sum(amt) as sumAmt from Orders
--	group by snum
--	having sum(amt) > (select max(amt) from Orders)

---------------------------------11-----------------------------------------------

--select c1.city, c1.rating, c1.cnum, c1.cname from Customers as c1
--	join (select city, max(rating) as rating from Customers group by city) as c2
--		on c1.city = c2.city
--	where c1.rating = c2.rating

--select cname, rating from Customers as c
--	where 0 <(select count(snum) from Orders as o where c.cnum = o.cnum and o.snum != c.snum)

--select * from Customers as c
--	where exists (select o.cnum from Orders as o where c.cnum = o.cnum and o.amt > 4000)

--select * from Orders as o1
--	where o1.cnum in (select o2.cnum  from Orders as o2
--						where o1.cnum = o2.cnum
--						group by o2.cnum
--						having count(o2.onum) > 1)

--select * from Customers as c
--	where exists(select * from Orders as o  where c.cnum != o.cnum and c.snum = o.snum )

select cname, rating,
case rating
	when 100 then 'Low'
	when 200 then 'Medium'
	--when 300 then 'Hight'
	else 'Hight'
end as lev, city from Customers