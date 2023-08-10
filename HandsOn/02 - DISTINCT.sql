/* ### DISTINCT ### 

A instrução SELECT DISTINCT é usada para retornar apenas valores distintos (diferentes).

Dentro de uma tabela, uma coluna geralmente contém muitos valores duplicados; e às vezes você deseja 
apenas listar os valores diferentes (distintos).



** SINTAXE

SELECT DISTINCT coluna1, coluna2
FROM tabela 

*/

-- 1 Entrar no bando de dados AdventureWorks2017
USE AdventureWorks2017
GO

-- 2 Valores distintos da coluna FirstName
SELECT DISTINCT FirstName 
FROM person.Person
GO

-- 3 Valores distintos da coluna LastName
SELECT DISTINCT LastName
FROM person.Person
GO
