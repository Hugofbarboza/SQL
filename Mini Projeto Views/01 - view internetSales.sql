-- Criar um database staging area | CREATE DATABASE [NOME BANCO DE DADOS]
CREATE DATABASE AdventureW_DA

-- Entrar no ambiente do banco de dados AdventureW_SA
USE AdventureW_SA
GO

-- Quantidade de linhas da tabela FactInternetSales | SELECT COUNT(*)

SELECT COUNT(*)
FROM AdventureWorksDW2022.dbo.FactInternetSales

-- Verificando a tabela FactInternetSales

SELECT * 
FROM AdventureWorksDW2022.dbo.FactInternetSales

-- Selecionando as tabelas que serão utilizadas para criar a view

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


-- Criar view factInternetSales | CREATE VIEW [NOME VIEW] AS 
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

-- Verificando a VIEW acima
SELECT *
FROM vw_factInternetSales