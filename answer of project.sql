 create database assignment;
 use assignment;
 select s.saleid,sr.firstname,sr.lastname,sr.SalesRepID,s.TotalAmount as total_amount from sale s
 join
 sales_reprentatives sr
 on s.SalesRepID=sr.SalesRepID
 group by s.saleid,sr.firstname,sr.lastname,sr.SalesRepID,s.TotalAmount;
 
 select distinct (p.ProductID),p.ProductName,s.saleid,s.StoreLocation,sum(s.Quantity) as total_sell from product p
 join sale s
 on p.ProductID=s.ProductID
 group by p.ProductID,p.ProductName,s.saleid,s.StoreLocation;
 
 select distinct (p.ProductID),p.ProductName,s.saleid,s.StoreLocation,sum(s.Quantity) as total_sell from product p
 join sale s
 on p.ProductID=s.ProductID
 group by p.ProductID,p.ProductName,s.saleid,s.StoreLocation;
 
 
 select distinct (p.ProductID),p.ProductName,s.saleid,s.StoreLocation,sum(s.Quantity) as total_sell from product p
 join sale s
 on p.ProductID=s.ProductID
 group by p.ProductID,p.ProductName,s.saleid,s.StoreLocation;
 
 
 select p.ProductID,p.ProductName,s.saleid,p.Category,max(s.totalamount) as max_sell from product p
 join sale s
 on p.ProductID=s.ProductID
 group by p.ProductID,p.ProductName,s.saleid,p.Category;
 
 
 select distinct p.ProductID,p.ProductName,s.saleid,avg(Quantity) as avg_quantity from product p
 join sale s
 on p.ProductID=s.ProductID
 group by p.ProductID,p.ProductName,s.saleid;
 
 
 select c.customerid,c.firstname,c.lastname,s.saleid,max(s.TotalAmount) as highest_sale from customer c
 join
 sale s
 on s.customerid=c.customerid
 group by c.customerid,c.firstname,c.lastname,s.saleid
 order  by highest_sale desc limit 1;
 
 select s.saleid,s.TotalAmount,s.date,sr.SalesRepID,sr.FirstName,sr.LastName from sale s
 join
 sales_reprentatives sr
 on sr.SalesRepID=s.SalesRepID
 group by s.saleid,s.TotalAmount,s.date,sr.SalesRepID,sr.FirstName,sr.LastName;
 
select s.saleid,s.TotalAmount,sr.Region  as  diff_reg from sale s
join
sales_reprentatives sr
on sr.SalesRepID=s.SalesRepID
group by  s.saleid,s.TotalAmount,sr.Region
order by  diff_reg;

select p.ProductID,p.ProductName,p.Category,s.SaleID,s.TotalAmount from product p
join
sale s
on p.productid=s.productid;

select s.saleid,avg(s.totalamount) as avg_amt from sale s
join
sales_reprentatives sr
on sr.salesrepid=s.salesrepid 
group by s.saleid;

select s.saleid,sr.firstname,sr.lastname,count(s.totalamount) as cnt_amt from sale s
join
sales_reprentatives sr
on sr.salesrepid=s.salesrepid 
group by s.saleid,sr.firstname,sr.lastname
order by cnt_amt desc;

select c.customerid,c.firstname,c.lastname,avg(s.totalamount) from customer c
join 
sale s
on s.CustomerID=c.customerid
group by c.customerid,c.firstname,c.lastname;

select c.customerid,p.productname,p.productid,s.saleid from customer c
join
sale s
on c.customerid=s.customerid
join
product p
on p.productid=s.productid
order by saleid  desc limit 1;

select count(distinct c.customerid),c.FirstName,c.LastName,c.city,s.saleid from customer c
join
sale s
on c.customerid=s.customerid
group by c.FirstName,c.LastName,c.city,s.saleid
order by city desc;
use assignment;

select count(distinct(c.customerid)),c.firstname,c.lastname from customer c
join
sale s
on s.customerid=c.customerid 
group by c.firstname,c.lastname;
select avg(UnitPrice) from product;
select c.customerid,c.city,c.state,s.saleid,s.quantity,s.totalamount from customer c
join
sale s
on s.customerid=c.customerid;

select p.productid,s.SupplierID,s.SupplierName,max(p.ProductName) from product p
join
supplier s
on s.SupplierID=p.SupplierID 
group by p.productid,s.SupplierID,s.SupplierName
order by s.SupplierName limit 1;
select p.productid,p.Category,c.customerid from product p
join 
sale s
on s.productid=p.productid
join
customer c
on s.customerid=c.customerid order by  category  limit 1;

select max(p.productid),p.Category,p.ProductName,c.firstname,c.lastname,count(c.CustomerID) from customer c
join
sale s
on s.customerid=c.customerid
join
product p
on s.productid=p.productid
group by p.Category,p.ProductName,c.firstname,c.lastname
order by count(c.CustomerID) desc;
select s.saleid,s.TotalAmount,sl.SupplierID,sl.SupplierName from sale s
join
product p
on s.productid=p.productid
join supplier sl
on p.SupplierID=sl.SupplierID order by SupplierName desc;

select s.SupplierID,s.SupplierName,p.productid,p.ProductName,avg(p.UnitPrice) from product p
join
supplier s
on p.SupplierID=s.SupplierID
group by s.SupplierID,s.SupplierName,p.productid,p.ProductName order by SupplierName limit 1;
use assignment;
select s.SupplierID,s.SupplierName,p.ProductName,count(p.ProductID) from product p
join
supplier s
on s.SupplierID=p.SupplierID 
group by s.SupplierID,s.SupplierName,p.ProductName
order by suppliername desc;

select p.ProductID,p.ProductName,sp.SupplierID,sp.SupplierName,s.saleid,avg(s.TotalAmount) from sale s
join
product p
on s.ProductID=p.ProductID
join
supplier sp
on sp.SupplierID=p.SupplierID
group by p.ProductID,p.ProductName,sp.SupplierID,sp.SupplierName,s.saleid
order by avg(s.totalamount) desc;

select p.ProductID,p.ProductName,sp.SupplierID,sp.SupplierName,s.saleid,sum(s.Quantity) from sale s
join
product p
on s.ProductID=p.ProductID
join
supplier sp
on sp.SupplierID=p.SupplierID
group by p.ProductID,p.ProductName,sp.SupplierID,sp.SupplierName,s.saleid
order by sum(s.Quantity);

select  distinct (p.Category),p.ProductID,p.ProductName,s.supplierid,s.SupplierName from product p
join
supplier s
on p.SupplierID=s.SupplierID;

select p.ProductID,p.ProductName,p.Category,s.SupplierID,s.SupplierName,s.ContactPerson from product p
inner join
supplier s
on p.SupplierID=s.SupplierID
order by productid;

select s.SupplierID,s.SupplierName,p.ProductID,p.ProductName,count(p.Category) from product p
join
supplier s
on p.SupplierID=s.SupplierID
group by s.SupplierID,s.SupplierName,p.ProductID,p.ProductName
order by count(p.Category) desc;

select distinct s.SupplierName,s.SupplierID,p.ProductID,p.Category,count(p.ProductName) from product p
join
supplier s
on p.SupplierID=s.SupplierID
group by s.SupplierID,s.SupplierName,p.ProductID,p.Category
order by count(p.ProductName)limit 10;

select (s.SupplierID),s.SupplierName,p.ProductID,p.ProductName,p.Category,avg(p.UnitPrice) from product p
 inner join
supplier s
on p.SupplierID=s.SupplierID 
group by  s.SupplierID,s.SupplierName,p.ProductID,p.ProductName,p.Category order by avg(p.UnitPrice) desc






 



 
 