--Select
--ANSII
Select ContactName Adi,CompanyName SirketAdi,City Sehir  from Customers
--verilen girdilere göre müşterileri getirir

Select * from Customers where City = 'Berlin'
--berlin de ki müşterileri getirir 

Select* from Products where categoryId=1 or categoryId=3
--ürünler içinde kategori numarası 1 yada 3 olanları getirir

Select* from Products where categoryId=1 and UnitPrice>=10
--ürünler içinde kategori numarası bir olan ve fyat 10 ve 10 dan buyuk lanları getirir

Select * from Products order by ProductName --orderby isme göre sırala
-- ürünler içerisinde isme göre sıralama yapar

Select * from Products order by CategoryID,ProductName
--kategori ıd ve urun ismine göre sıralama yapar

Select * from Products order by UnitPrice desc --ascending artan descending azalan
--ürünler içrisnide fiyatları azalan olarak sıralar

Select * from Products where CategoryID=1 order by UnitPrice desc
--ürünler içerisnide categori ıd sibir olan ürünleri azalan olarak sıralar

Select count(*) from Products
--kaç ürün varsa sayar ve söyler

Select count(*) Adet from Products where CategoryID=2
--kategori numarası 2 olan ürünlerin sayısını söyler

Select CategoryID,count(*) from products group by CategoryId
-- her kategoride kaç ürünün oldugunun sayısını söyler

Select CategoryID,count(*) from products group by CategoryId having count(*)<10
-- ürün sayısı 10 dan az ola kategorileri gösterir

Select CategoryID,count(*) from products where UnitPrice>20
group by CategoryId having count(*)<10
-- fiyatı 20 den fazla olanları kategoride 10 dan az olanları lisele

Select Products.ProductID, Products.ProductName,
Products.UnitPrice, Categories.CategoryName
from Products inner join Categories--inner join iki tabloda eşleşenleri getirir
on Products.CategoryID = Categories.CategoryID
where Products.UnitPrice>10
--fiyatı 10 dan buyuk olan ürünleri kategori isimleri ile beraber getir

select * from Products p left join [Order Details] od -- left eşleşmeyenleri solda olup sada olmayanları getirir
on p.ProductID = od.ProductID

select * from Products p inner join [Order Details] od
on p.ProductID = od.ProductID
inner join Orders o
on o.OrderID = od.OrderID
-- birden fazla inner


select * from Customers c left join Orders o
on c.CustomerID = o.CustomerID
where o.CustomerID is null
--müşteri olup alışveriş yapmayan listeleme