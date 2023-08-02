-- Entrando no ambiente do banco de dados AdventureW_SA
USE AdventureW_SA
GO

-- 1.2 Visualizando a tabela DimCustomer para definir as colunas que iremos usar
SELECT * 
FROM AdventureWorksDW2022.dbo.DimCustomer
GO

-- 1.3 Definindo colunas da tabela DimCustomer
SELECT
	DC.CustomerKey,
	DC.GeographyKey,
	CONCAT(DC.FirstName,' ',DC.MiddleName,' ',DC.LastName) AS FullName, -- Função CONCAT(string1, stringn)
	DC.BirthDate,
	DC.MaritalStatus,
	DC.Gender,
	DC.TotalChildren,
	DC.EnglishEducation,
	DC.EnglishOccupation,
	DC.DateFirstPurchase
FROM AdventureWorksDW2022.dbo.DimCustomer AS DC
GO
-- 1.4 Visualizando a tabela DimGeography
SELECT *
FROM AdventureWorksDW2022.dbo.DimGeography
GO

--1.5 Visualizando a união de Cliente (DimCustomer) e Geografia (DimGeography)
SELECT
	DC.CustomerKey,
	DC.GeographyKey,
	CONCAT(DC.FirstName,' ',DC.MiddleName,' ',DC.LastName) AS FullName, -- Função CONCAT(string1, stringn)
	DC.BirthDate,
	DC.MaritalStatus,
	DC.Gender,
	DC.TotalChildren,
	DC.EnglishEducation,
	DC.EnglishOccupation,
	DC.DateFirstPurchase,
	DG.City,
	DG.StateProvinceName,
	DG.EnglishCountryRegionName
FROM AdventureWorksDW2017.dbo.DimCustomer AS DC
LEFT JOIN AdventureWorksDW2022.dbo.DimGeography AS DG
	ON DC.GeographyKey = DG.GeographyKey
GO

--1.6 Criando VIEW da união acima | CREATE VIEW [NOME VIEW]
CREATE VIEW vw_Customer AS
	SELECT
		DC.CustomerKey,
		DC.GeographyKey,
		CONCAT(DC.FirstName,' ',DC.MiddleName,' ',DC.LastName) AS FullName, -- Função CONCAT(string1, stringn)
		DC.BirthDate,
		DC.MaritalStatus,
		DC.Gender,
		DC.TotalChildren,
		DC.EnglishEducation,
		DC.EnglishOccupation,
		DC.DateFirstPurchase,
		DG.City,
		DG.StateProvinceName,
		DG.EnglishCountryRegionName
	FROM AdventureWorksDW2017.dbo.DimCustomer AS DC
	LEFT JOIN AdventureWorksDW2022.dbo.DimGeography AS DG
		ON DC.GeographyKey = DG.GeographyKey
GO

SELECT * 
FROM vw_Customer