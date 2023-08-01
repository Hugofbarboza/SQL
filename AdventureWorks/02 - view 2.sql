
-- entrando no ambiente do banco de dados AdventureW_SA
USE AdventureW_SA
GO


/* 1 - Unindo a tabela Dim.ProductCategory e DimProductSubcategory 
       do banco de dados AdventureWorksDW2022 */
   
-- 1.2 Visualizando a tabela DimProduct para definir as colunas que iremos usar
SELECT * 
FROM AdventureWorksDW2022.dbo.DimProduct
GO

-- 1.3 Query com as colunas já selecionadas
SELECT
	DimProduct.ProductKey,
	DimProduct.ProductSubcategoryKey,
	DimProduct.EnglishProductName,
	DimProduct.SafetyStockLevel
FROM AdventureWorksDW2022.dbo.DimProduct
GO

-- 1.4 Visualizando a tabela DimProductSubcategory
SELECT *
FROM AdventureWorksDW2022.dbo.DimProductSubcategory
GO

-- 1.5
SELECT
	DimProduct.ProductKey,
	DimProduct.ProductSubcategoryKey,
	DimProduct.EnglishProductName,
	DimProduct.SafetyStockLevel
FROM AdventureWorksDW2022.dbo.DimProduct
LEFT JOIN AdventureWorksDW2022.dbo.DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
GO

-- tempo 15:00