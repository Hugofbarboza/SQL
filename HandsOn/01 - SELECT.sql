/* ### SELECT ### 

A instrução SELECT é usada para selecionar dados de um banco de dados.
Os dados retornados são armazenados em uma tabela de resultados, chamada conjunto de resultados.

** SINTAXE

SELECT coluna1, coluna2, colunan
FROM tabela

*/

-- 1 Entrar no bando de dados AdventureWorks2017
USE AdventureWorks2017
GO

-- 2 Pesquisa de todas as colunas da talela Person.Person
SELECT *
FROM Person.Person
GO

-- 3 Pesquisa de todas as colunas da talela Person.EmailAddress
SELECT *
FROM person.EmailAddress
GO

-- 4 Pesquisa da coluna FirstName e LastName da tabela Person.Person
SELECT FirstName, LastName
FROM person.Person
GO