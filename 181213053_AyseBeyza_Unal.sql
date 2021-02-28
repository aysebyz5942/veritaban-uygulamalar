use AdventureWorks2008R2

select * From Person.Person PAU
select * from HumanResources.Employee HAU
select * from  Sales.SalesPerson
 --SORU1
select  PAU.BusinessEntityID,PAU.FirstName,pau.LastName, HAU.Gender,HAU.VacationHours,SAU.Bonus From Person.Person PAU 
INNER JOIN HumanResources.Employee HAU 
ON PAU.BusinessEntityID=HAU.BusinessEntityID INNER JOIN Sales.SalesPerson SAU ON PAU.BusinessEntityID=SAU.BusinessEntityID
WHERE (HAU.VacationHours BETWEEN 24 AND 31) AND SAU.Bonus>2600 ORDER BY PAU.FirstName ASC

--SORU2
 SELECT * FROM Purchasing.PurchaseOrderHeader
 SELECT * FROM  Purchasing.ShipMethod
  SELECT PPHAU.EmployeeID, PPHAU.ShipMethodID, MAX(PPHAU.TotalDue) AS MAXS_TotalDue FROM Purchasing.PurchaseOrderHeader PPHAU INNER JOIN
  Purchasing.ShipMethod PSMAU ON PPHAU.ShipMethodID=PSMAU.ShipMethodID  WHERE (PPHAU.EmployeeID >250) 
  GROUP BY PPHAU.ShipMethodID,PPHAU.EmployeeID HAVING MAX(PPHAU.TotalDue)<50000 
  ORDER BY PPHAU.EmployeeID,PPHAU.ShipMethodID
  --SORU3
  SELECT * FROM Production.Product
  SELECT * FROM  Production.TransactionHistory
  SELECT PPAU.ProductID, PPAU.Name,PTAU.Quantity,PPAU.ListPrice,PTAU.TransactionType ,CASE PTAU.TransactionType 
                                                                       WHEN 'S' THEN 'SATIS'
																	   WHEN 'P' THEN 'SATIN ALIM'
																	   WHEN 'W' THEN 'DÝGERÝ'
																	   END AS ISLEM_TIPI
  FROM Production.Product PPAU 
  INNER JOIN Production.TransactionHistory PTAU ON PPAU.ProductID=PTAU.ProductID WHERE (PTAU.Quantity>2) AND PPAU.Name
   LIKE 'mountain%' ORDER BY PTAU.Quantity ASC





