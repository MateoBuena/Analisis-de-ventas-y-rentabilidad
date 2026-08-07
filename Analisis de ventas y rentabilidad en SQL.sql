select * from RegistroVentas


--Que categorias generan mayor rentabilidad?
select p.Category, sum(V.Profit) as 'ganancias' from RegistroVentas v inner join Products p on v.Product_ID=p.ID_P
group by p.Category
order by 2 desc
go

--Que productos presentan perdidas?
select p.Name_P, sum(v.Profit) as 'ganancias' from RegistroVentas v inner join Products p on v.Product_ID=p.ID_P
group by p.Name_P
order by 2 asc
go

--Que regiones tienen mejor desempenio?
select c.Region, sum(v.Profit) as 'profit' from RegistroVentas v inner join Customers c on v.Customer_ID=c.ID_C
group by c.Region
order by 2 desc
go

--Por que algunos de los productos mas vendidos generan perdidas?
select p.Name_P, sum(v.Profit) as 'Ganancias' from RegistroVentas v inner join Products p on v.Product_ID=p.ID_P
group by p.Name_P
order by 2 asc
go

--Cubify CubeX 3D Printer Triple Head Print


select v.Sales, v.Profit, v.Quantity from RegistroVentas v inner join Products p on v.Product_ID=p.ID_P
inner join Customers c on v.Customer_ID=c.ID_C where p.Name_P='Cubify CubeX 3D Printer Triple Head Print'
go

select c.Region, v.Sales, v.Profit, v.Quantity from RegistroVentas v inner join Products p on v.Product_ID=p.ID_P
inner join Customers c on v.Customer_ID=c.ID_C where p.Name_P='Cubify CubeX 3D Printer Triple Head Print'
go

--South

select c.State ,v.Sales, v.Profit, v.Quantity from RegistroVentas v inner join Products p on v.Product_ID=p.ID_P
inner join Customers c on v.Customer_ID=c.ID_C where p.Name_P='Cubify CubeX 3D Printer Triple Head Print'
go

--North Carolina

select c.City,v.Sales, v.Profit, v.Quantity from RegistroVentas v inner join Products p on v.Product_ID=p.ID_P
inner join Customers c on v.Customer_ID=c.ID_C where p.Name_P='Cubify CubeX 3D Printer Triple Head Print'
go

--Burlington

select * from RegistroVentas v inner join Products p on v.Product_ID=p.ID_P
inner join Customers c on v.Customer_ID=c.ID_C where p.Name_P='Cubify CubeX 3D Printer Triple Head Print'
go

--Una sola orden del producto mas vendido


select p.Name_P, sum(v.sales) as 'ventas', sum(v.quantity) as 'Unidades', sum(v.Profit) as 'Ganancias'
from RegistroVentas v inner join Products p on v.Product_ID=p.ID_P
group by p.name_p
order by 3 desc
go

--Chromcraft Round Conference Tables-- 59 unidades, 5M en ventas, -15k de ganancias
--Chromcraft Round Conference Tables-- 22            

select c.Region, sum(v.sales) as 'Ventas', sum(v.quantity) as 'Unidades', sum(v.Profit) as 'Ganancias' from RegistroVentas v inner join Products p on v.Product_ID=p.ID_P inner join Customers c on v.Customer_ID=c.ID_C
where p.Name_P='Chromcraft Round Conference Tables'
group by c.Region
go

--South y West

select c.State, sum(v.sales) as 'Ventas', sum(v.quantity) as 'Unidades', sum(v.Profit) as 'Ganancias' from RegistroVentas v inner join Products p on v.Product_ID=p.ID_P inner join Customers c on v.Customer_ID=c.ID_C
where p.Name_P='Chromcraft Round Conference Tables'
group by c.State
go

--California, Mississippi, New York, Texas, Virginia, Washington

select c.City, sum(v.sales) as 'Ventas', sum(v.quantity) as 'Unidades', sum(v.Profit) as 'Ganancias' from RegistroVentas v inner join Products p on v.Product_ID=p.ID_P inner join Customers c on v.Customer_ID=c.ID_C
where p.Name_P='Chromcraft Round Conference Tables' and c.State in ('California', 'Mississippi', 'New York', 'Texas', 'Virginia', 'Washington')
group by c.City
go

--Dallas, Gulfport, New York City, Roseville, Seattle, Springfield

select c.Name_C, sum(v.sales) as 'Ventas', sum(v.quantity) as 'Unidades', sum(v.Profit) as 'Ganancias' from RegistroVentas v inner join Products p on v.Product_ID=p.ID_P inner join Customers c on v.Customer_ID=c.ID_C
where p.Name_P='Chromcraft Round Conference Tables' and c.City in ('Dallas', 'Gulfport', 'New York City', 'Roseville', 'Seattle', 'Springfield')
group by c.Name_C
go

--'Eva Jacobs', 'Jonathan Doherty','Karen Daniels', 'Mick Brown', 'Nona Balk', 'Nora Preis'

select c.Segment, sum(v.sales) as 'Ventas', sum(v.quantity) as 'Unidades', sum(v.Profit) as 'Ganancias' from RegistroVentas v inner join Products p on v.Product_ID=p.ID_P inner join Customers c on v.Customer_ID=c.ID_C
where p.Name_P='Chromcraft Round Conference Tables' and c.Name_C in ('Eva Jacobs', 'Jonathan Doherty','Karen Daniels', 'Mick Brown', 'Nona Balk', 'Nora Preis')
group by c.Segment
go

-- Consumer  16.5M, 15 Unidades, -41K en ganancias
-- Corporate  700K,  7 Unidades, -26k en ganancias

select v.Payment_Mode, sum(v.sales) as 'Ventas', sum(v.quantity) as 'Unidades', sum(v.Profit) as 'Ganancias' from RegistroVentas v inner join Products p on v.Product_ID=p.ID_P inner join Customers c on v.Customer_ID=c.ID_C
where p.Name_P='Chromcraft Round Conference Tables' and c.Segment in ('Corporate', 'Consumer')
group by v.Payment_Mode
go

-- Cards +300K,  7 Unidades, -2K  en ganancias
-- COD    2.7M, 23 Unidades, -46K en ganancias

select * from RegistroVentas v inner join Products p on v.Product_ID=p.ID_P
inner join Customers c on v.Customer_ID=c.ID_C where p.Name_P='Chromcraft Round Conference Tables'
go

-- 12 pedidos diferentes
