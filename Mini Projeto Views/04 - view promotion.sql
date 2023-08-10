-- Entrando no ambiente do banco de dados AdventureW_SA
USE AdventureW_SA
GO

-- 1.2 Visualizando a tabela DimPromotion para definir as colunas que iremos usar

SELECT * 
FROM AdventureWorksDW2022.dbo.DimPromotion
GO

-- 1.3 Definindo colunas da tabela DimPromotion

SELECT
	DP.PromotionKey,
	DP.EnglishPromotionName,
	DP.DiscountPct,
	DP.EnglishPromotionType,
	DP.EnglishPromotionCategory,
	DP.StartDate,
	DP.EndDate,
	DP.MinQty,
	DP.MaxQty
FROM AdventureWorksDW2022.dbo.DimPromotion AS DP
GO

-- 1.4 Criando a VIEW vw_Promotion

CREATE VIEW vw_Promotion As
SELECT
	DP.PromotionKey,
	DP.EnglishPromotionName,
	DP.DiscountPct,
	DP.EnglishPromotionType,
	DP.EnglishPromotionCategory,
	DP.StartDate,
	DP.EndDate,
	DP.MinQty,
	DP.MaxQty
FROM AdventureWorksDW2022.dbo.DimPromotion AS DP
GO

-- 1.5 Visualizando a VIEW vw_Promotion

SELECT *
FROM vw_Promotion
