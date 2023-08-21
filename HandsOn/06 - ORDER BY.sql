/* ### ORDER BY ### 

A palavra-chave ORDER BY é usada para classificar o conjunto de resultados em ordem crescente ou decrescente.

A palavra-chave ORDER BY classifica os registros em ordem crescente por padrão. 
Para classificar os registros em ordem decrescente, use a palavra-chave DESC.



** SINTAXE
SELECT colunas1, coluna2, ...
FROM tabela
ORDER BY coluna1, coluna2, ... ASC|DESC
*/


-- 1 Entrar no bando de dados AdventureWorks2017
USE AdventureWorks2017
GO

-- 2 Selecionando todas colunas da tabela Person.Person
SELECT *
FROM Person.Person
GO

-- 3 Ordenando em ordem crescente da pela FirstName
SELECT *
FROM Person.Person
ORDER BY FirstName
GO

-- 4 Ordenando em ordem decrescente pena coluna FirstName
SELECT *
FROM Person.Person
ORDER BY FirstName DESC
GO

-- 5 Ordenando em ordem crescente pelo FirstName e depois em ordem decrescente pelo LastName
SELECT FirstName, LastName
FROM Person.Person
ORDER BY FirstName ASC, LastName DESC
GO

-- 6 Retornando os primeiros 10 produtos mais caros tabela Person.Person
SELECT TOP 10 ProductID, Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC
GO

-- 7 Retornando o nome o número dos produtos com ID entre 1 a 4
SELECT TOP 4 ProductID, Name
FROM Production.Product
ORDER BY ProductID
GO