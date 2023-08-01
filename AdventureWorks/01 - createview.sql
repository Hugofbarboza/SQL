-- criar um database staging area
CREATE DATABASE AdventureW_DA

-- entrar no ambiente da base de dados AdventureW_SA
USE AdventureW_SA
GO

-- quantidade de linhas da tabela FactInternetSales
-- banco de dados AdventureWorksDW2022
SELECT COUNT(*)
FROM AdventureWorksDW2022.dbo.FactInternetSales

-- verificando a tabela FactInternetSales
-- banco de dados AdventureWorksDW2022
SELECT * 
FROM AdventureWorksDW2022.dbo.FactInternetSales

-- selecionando as tabelas que serão utilizadas para criar a view

SELECT 
	FactInternetSales.ProductKey,
	FactInternetSales.CustomerKey,
	FactInternetSales.PromotionKey,
	FactInternetSales.SalesTerritoryKey,
	FactInternetSales.SalesOrderNumber,
	FactInternetSales.OrderQuantity,
	FactInternetSales.UnitPrice,
	FactInternetSales.DiscountAmount,
	FactInternetSales.ProductStandardCost,
	FactInternetSales.TaxAmt,
	FactInternetSales.Freight,
	FactInternetSales.OrderDate,
	FactInternetSales.DueDate,
	FactInternetSales.ShipDate
FROM AdventureWorksDW2022.dbo.FactInternetSales
GO


-- criar view factInternetSales
CREATE VIEW vw_factInternetSales AS
SELECT 
	FactInternetSales.ProductKey,
	FactInternetSales.CustomerKey,
	FactInternetSales.PromotionKey,
	FactInternetSales.SalesTerritoryKey,
	FactInternetSales.SalesOrderNumber,
	FactInternetSales.OrderQuantity,
	FactInternetSales.UnitPrice,
	FactInternetSales.DiscountAmount,
	FactInternetSales.ProductStandardCost,
	FactInternetSales.TaxAmt,
	FactInternetSales.Freight,
	FactInternetSales.OrderDate,
	FactInternetSales.DueDate,
	FactInternetSales.ShipDate
FROM AdventureWorksDW2022.dbo.FactInternetSales
GO

-- verificando a view
SELECT *
FROM vw_factInternetSales