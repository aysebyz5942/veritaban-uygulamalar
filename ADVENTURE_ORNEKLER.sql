SELECT * from Production.Product
SELECT * FROM Production.ProductModel

--SORU1:
SELECT * FROM Production.Product JOIN Production.ProductModel ON Production.Product.ProductModelID=Production.ProductModel.ProductModelID
WHERE Color='Black'AND Production.Product.ListPrice BETWEEN 65 AND 300 ORDER BY Production.Product.Name ASC 

SELECT * FROM Sales.SalesOrderDetail
-- SORU2-1:
SELECT P.ProductID,P.Name FROM Production.Product  P JOIN Sales.SalesOrderDetail S ON P.ProductID=S.ProductID
UNION SELECT P.ProductID,P.Name FROM Production.Product  P JOIN Sales.SalesOrderDetail S ON P.ProductID=S.ProductID WHERE S.OrderQty>0

--SORU2-2: 
SELECT P.Name, COUNT(*) AS SATUS_ADEDÝ FROM Production.Product  P JOIN Sales.SalesOrderDetail S ON P.ProductID=S.ProductID
GROUP BY P.Name ORDER BY SATUS_ADEDÝ

 --SORU3: ????
 SELECT P.Color,COUNT(*) AS SATÝS_SAYISI FROM Production.Product  P JOIN Sales.SalesOrderDetail S ON P.ProductID=S.ProductID 
 GROUP BY P.Color

--SORU 4:
SELECT * FROM Production.ProductSubcategory
SELECT * from Production.Product
SELECT * FROM Production.ProductModel
SELECT SU.Name FROM Production.ProductSubcategory SU WHERE LEN(SU.Name)>8
-- SORU 5:??
SELECT * FROM Production.ProductCategory
 SELECT P3.Name FROM Production.Product P, Production.ProductModel P2, Production.ProductCategory P3, Production.ProductSubcategory P4
 WHERE P.ProductModelID=P2.ProductModelID AND P3.ProductCategoryID=P4.ProductCategoryID GROUP BY P3.Name

 --SORU6:


 --SORU7:

 use AdventureWorks2008R2

SELECT * FROM Production.ProductModel

SELECT * FROM Production.Product P, Production.ProductModel P2  WHERE P.ProductModelID = P2.ProductModelID

SELECT * FROM Production.Product P JOIN Production.ProductModel P2  ON P.ProductModelID = P2.ProductModelID AND P.Weight IS NOT NULL


SELECT * FROM Production.Product P LEFT OUTER JOIN Production.ProductModel P2  ON P.ProductModelID = P2.ProductModelID

SELECT * FROM Production.Product P RIGHT OUTER JOIN Production.ProductModel P2  ON P.ProductModelID = P2.ProductModelID AND (P.Color) LIKE '%A%'

SELECT P2.Color, COUNT(*) AS RENK_SAYISI FROM Production.Product P2 JOIN Production.ProductModel P  ON P.ProductModelID = P2.ProductModelID GROUP BY P2.Color

SELECT P.Name, COUNT(*) AS MODEL_SAYISI FROM Production.Product P2 JOIN Production.ProductModel P  ON P.ProductModelID = P2.ProductModelID GROUP BY P.Name


SELECT * FROM Production.Product P, Production.ProductProductPhoto P2  WHERE P.ProductID=P2.ProductID

SELECT * FROM Production.Product P, Production.ProductProductPhoto P2, Production.ProductDocument P3 WHERE P.ProductID=P2.ProductID AND P3.ProductID= P.ProductID

SELECT * FROM Production.Product P JOIN Production.ProductProductPhoto P2 ON P.ProductID=P2.ProductID JOIN Production.ProductDocument P3 ON  P3.ProductID= P.ProductID

SELECT * FROM Production.Product P RIGHT JOIN Production.ProductProductPhoto P2 ON P.ProductID=P2.ProductID RIGHT JOIN Production.ProductDocument P3 ON  P3.ProductID= P.ProductID

SELECT * FROM Production.Product P, Production.ProductProductPhoto P2 ,Production.ProductDocument P3, Production.ProductReview P4 WHERE P.ProductID=P2.ProductID AND P3.ProductID= P.ProductID AND P4.ProductID=P.ProductID

SELECT * FROM Production.Product P, Production.ProductProductPhoto P2, Production.ProductPhoto P3  WHERE P.ProductID=P2.ProductID AND P2.ProductPhotoID= P3.ProductPhotoID

SELECT * FROM Production.Product P, Production.ProductDocument P2, Production.Document P3 WHERE P.ProductID=P2.ProductID AND P3.DocumentNode= P2.DocumentNode AND P.ListPrice >12.45 ORDER BY P.ListPrice

SELECT P.Color, SUM(P.ListPrice) FROM Production.Product P, Production.ProductDocument P2, Production.Document P3 WHERE P.ProductID=P2.ProductID AND P3.DocumentNode= P2.DocumentNode AND P.ListPrice >120.45 GROUP BY P.Color ORDER BY SUM(P.ListPrice) 

SELECT P.Color, SUM(P.ListPrice) FROM Production.Product P, Production.ProductDocument P2, Production.Document P3 WHERE P.ProductID=P2.ProductID AND P3.DocumentNode= P2.DocumentNode GROUP BY P.Color HAVING SUM(P.ListPrice)>500 ORDER BY SUM(P.ListPrice) 
