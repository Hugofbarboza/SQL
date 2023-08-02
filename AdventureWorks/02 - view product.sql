
-- Entrando no ambiente do banco de dados AdventureW_SA
USE AdventureW_SA
GO


/* 1 - Unindo a tabela Dim.ProductCategory e DimProductSubcategory 
       do banco de dados AdventureWorksDW2022 */
   
-- 1.2 Visualizando a tabela DimProduct para definir as colunas que iremos usar
SELECT * 
FROM AdventureWorksDW2022.dbo.DimProduct
GO

-- 1.3 Query com as colunas definidas para criação da view
SELECT
	DimProduct.ProductKey,
	DimProduct.ProductSubcategoryKey,
	DimProduct.EnglishProductName,
	DimProduct.SafetyStockLevel
FROM AdventureWorksDW2022.dbo.DimProduct
GO

-- 1.4 Visualizando a tabela DimProductSubcategory para definir as colunas que iremos usar
SELECT *
FROM AdventureWorksDW2022.dbo.DimProductSubcategory
GO

-- 1.5 Visualizando a união de Produto (DimProduct), Subcategoria (DimProductSubcategory)
-- e Categoria (DimProductCategory) com LEFT JOIN
SELECT
	DP.ProductKey,
	DP.ProductSubcategoryKey,
	DP.EnglishProductName,
	DP.SafetyStockLevel,
	DPS.EnglishProductSubcategoryName,
	DPS.ProductCategoryKey
FROM AdventureWorksDW2022.dbo.DimProduct AS DP
LEFT JOIN AdventureWorksDW2022.dbo.DimProductSubcategory AS DPS
	ON DP.ProductSubcategoryKey = DPS.ProductSubcategoryKey
LEFT JOIN AdventureWorksDW2022.dbo.DimProductCategory AS DC
	ON DPS.ProductCategoryKey = DC.ProductCategoryKey
GO

-- 1.6 Criando VIEW da união acima
CREATE VIEW vw_Product 
	AS
	SELECT
		DP.ProductKey,
		DP.ProductSubcategoryKey,
		DP.EnglishProductName,
		DP.SafetyStockLevel,
		DPS.EnglishProductSubcategoryName,
		DPS.ProductCategoryKey
	FROM AdventureWorksDW2022.dbo.DimProduct AS DP
	LEFT JOIN AdventureWorksDW2022.dbo.DimProductSubcategory AS DPS
		ON DP.ProductSubcategoryKey = DPS.ProductSubcategoryKey
	LEFT JOIN AdventureWorksDW2022.dbo.DimProductCategory AS DC
		ON DPS.ProductCategoryKey = DC.ProductCategoryKey
GO
