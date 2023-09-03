/* ### BETWEEN ### 

O operador BETWEEN seleciona valores dentro de um determinado intervalo. Os valores podem ser números, texto ou datas.

O operador BETWEEN é inclusivo: os valores inicial e final são incluídos.


** SINTAXE
SELECT nome_colunas
FROM nome_tabela
WHERE nome_coluna BETWEEN valor1 AND valor2
*/

-- 1 Entrar no bando de dados AdventureWorks2017
USE AdventureWorks2017
GO

-- 2 Selecionando todas colunas da tabela Production.Product
SELECT *
FROM Production.Product
GO

-- 3 Filtrando produtos com valor entre 1000 a 1500 dólares
SELECT *
FROM Production.Product
WHERE ListPrice BETWEEN 1000 AND 1500
GO

-- 4 Filtrando produtos que não estão entre 1000 a 1500 dólares
SELECT *
FROM Production.Product
WHERE ListPrice NOT BETWEEN 1000 AND 1500
GO

-- 5 Filtrando por data da tabela HumanResources.Employee
-- Contratação (HireDate) entre 2009 a 2010

SELECT BusinessEntityID, JobTitle, HireDate
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009-01-01' AND '2010-01-01'
-- outra forma seria escrever as datas com barras '2009/01/01'
ORDER BY HireDate
GO


 /*
 ### IN ###  

O operador IN permite especificar vários valores em uma cláusula WHERE.

O operador IN é uma abreviatura para múltiplas condições OR.
*/

-- 6 Filtrando as pessoas coms IDs 2, 7, 13 da tabela Person.Person
SELECT BusinessEntityID, FirstName, LastName
FROM Person.Person
WHERE BusinessEntityID IN (2,7,13)
GO

-- 7 Filtrando as pessoas que não têm os IDs 2, 7, 13
SELECT BusinessEntityID, FirstName, LastName
FROM Person.Person
WHERE BusinessEntityID NOT IN (2,7,13)
ORDER BY BusinessEntityID
GO


/*
O operador LIKE é usado em uma cláusula WHERE para procurar um padrão especificado em uma coluna.

Existem dois curingas frequentemente usados em conjunto com o operador LIKE:

  O sinal de porcentagem (%) representa zero, um ou vários caracteres
  O sinal de sublinhado (_) representa um único caractere
 */

 --8 Exercícios


 --8.1 - Quantos produtos temos cadastrados no sistema que custam mais que 1500 dólares?
SELECT TOP 10 *
FROM Production.Product
GO 

SELECT COUNT(ListPrice) AS quantidadeProdutos
FROM Production.Product
WHERE ListPrice > 1500
GO

--8.2 Quantas pessoas temos com o sobrenome que inicia com a letra P?
SELECT COUNT(LastName) AS quantidade
FROM Person.Person
WHERE LastName LIKE('P%')
GO

SELECT FirstName, LastName
FROM Person.Person
WHERE LastName LIKE 'P%'
GO

-- 8.3 Em quantas cidades únicas estão cadastrados os clientes?

SELECT TOP 10 *
FROM Person.Address
GO

SELECT COUNT(DISTINCT City) AS qtdCidades
FROM Person.Address
GO


--8.4 Quais são as cidades únicas cadastradas no sistema

SELECT TOP 10 *
FROM Person.Address
GO

SELECT DISTINCT City
FROM Person.Address
GO

--8.5 Quantos produtos vermelhos têm preço entre 500 a 1000 dólares?

SELECT TOP 10 *
FROM Production.Product
GO

SELECT COUNT(ProductID) as quantidade
FROM Production.Product
WHERE Color = 'Red' 
	AND ListPrice BETWEEN 500 AND 1000
GO

-- 8.6 Quantos produtos cadastrados têm a palavra 'road' no nome deles?

SELECT TOP 10 *
FROM Production.Product
GO

SELECT Name
FROM Production.Product
WHERE Name LIKE '%road%'
GO

SELECT COUNT(Name) AS quantidade
FROM Production.Product
WHERE Name LIKE '%road%'
GO