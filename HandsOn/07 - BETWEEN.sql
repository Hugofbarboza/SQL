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