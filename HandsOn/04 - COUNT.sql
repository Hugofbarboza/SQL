/* ### COUNT ### 

A função COUNT() retorna o número de linhas que correspondem a um critério especificado.



** SINTAXE
SELECT COUNT(nome_coluna)
FROM tabela 
WHERE condição
*/


-- 1 Entrar no bando de dados AdventureWorks2017
USE AdventureWorks2017
GO

-- 2 Selecionando todas colunas da tabela Person.Person
SELECT *
FROM Person.Person
GO


-- 3 Contando os registros (linhas) da tabela Person.person
SELECT COUNT (*)
FROM Person.Person
GO

-- 4 Contando os registros da coluna Title
SELECT COUNT(Title)
FROM Person.Person
GO

-- 5 Contando os títulos distintos da coluna Title
SELECT COUNT(DISTINCT Title)
FROM Person.Person
GO

SELECT DISTINCT Title
FROM Person.Person
GO

-- 6 Quantidade de produtos cadastrados na tabela de produtos (Production.Product)
SELECT *
FROM Production.Product
GO

SELECT COUNT(DISTINCT ProductID)
FROM Production.Product
GO

-- 7 Quantidade de tamanhos de produtos na tabela de produtos
SELECT COUNT(Size)
FROM Production.Product
GO

-- 8 Quantidade de tamanhos distintos de produtos na tabela de produtos
SELECT COUNT(DISTINCT Size)
FROM Production.Product
GO



