
--SORU1:
SELECT * FROM Production.Product  P JOIN Production.ProductModel  PM ON P.ProductModelID=PM.ProductModelID
WHERE Color='Black'AND P.ListPrice BETWEEN 65 AND 300 ORDER BY P.Name ASC 

SELECT P.ProductID,P.Name FROM Production.Product  P JOIN Sales.SalesOrderDetail S ON P.ProductID=S.ProductID 
group by P.ProductID,P.Name
--SORU2-2: 
SELECT P.Name, COUNT(*) AS SATUS_ADEDÝ FROM Production.Product  P JOIN Sales.SalesOrderDetail S ON P.ProductID=S.ProductID
GROUP BY P.Name ORDER BY SATUS_ADEDÝ

SELECT P.Color,COUNT(*) AS SATÝS_SAYISI,CONCAT('on binde ',10000*AVG(S.UnitPriceDiscount)) FROM Production.Product  P JOIN Sales.SalesOrderDetail S ON P.ProductID=S.ProductID 
where P.Color is not null GROUP BY P.Color

SELECT * FROM Production.ProductSubcategory
SELECT * from Production.Product
SELECT * FROM Production.ProductModel
SELECT SU.Name, COUNT(*) FROM Production.Product P join Production.ProductModel M on p.ProductModelID=m.ProductModelID 
join  Production.ProductSubcategory SU ON SU.ProductSubcategoryID=P.ProductSubcategoryID GROUP BY SU.Name HAVING LEN(SU.Name)>8
 ORDER BY COUNT(*) DESC

 --SORU 5
 --Production.Product P, Production.ProductModel P2, Production.ProductCategory P3, Production.ProductSubcategory P4
SELECT PC.Name,COUNT(*) AS ADET FROM Production.Product P join Production.ProductModel M on p.ProductModelID=m.ProductModelID 
join  Production.ProductSubcategory SU ON SU.ProductSubcategoryID=P.ProductSubcategoryID inner join Production.ProductCategory PC
ON SU.ProductCategoryID=PC.ProductCategoryID GROUP BY PC.Name

--SORU6:
Production.Product P, Sales.SalesOrderDetail D, Sales.Customer C, Sales.SalesOrderHeader H, 
SELECT PP.FirstName+ ' '+PP.LastName, COUNT(*) AS ADET, min(D.UnitPrice) AS MÝN FROM Production.Product P 
inner join Sales.SalesOrderDetail D on p.ProductID=d.ProductID 
inner join Sales.SalesOrderHeader h on d.SalesOrderID=h.SalesOrderID 
 inner join Sales.Customer C on h.CustomerID=C.CustomerID 
 inner join  Person.Person PP on PP.BusinessEntityID=C.PersonID GROUP BY PP.FirstName+ ' '+PP.LastName
 having count(*) between 90 and 100
  ORDER BY count(*)


