/* ### DISTINCT ### 

A instru��o SELECT DISTINCT � usada para retornar apenas valores distintos (diferentes).

Dentro de uma tabela, uma coluna geralmente cont�m muitos valores duplicados; e �s vezes voc� deseja 
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
