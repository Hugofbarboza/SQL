/* ### TOP ### 

A cláusula SELECT TOP é usada para especificar o número de registros a serem retornados.

A cláusula SELECT TOP é útil em tabelas grandes com milhares de registros.
Retornar um grande número de registros pode afetar o desempenho.



** SINTAXE
SELECT TOP quantidade_linhas nome_colunas
FROM tabela
WHERE condição;
*/


-- 1 Entrar no bando de dados AdventureWorks2017
USE AdventureWorks2017
GO

-- 2 Selecionando todas colunas da tabela Person.Person
SELECT *
FROM Person.Person
GO

-- 3 Retornando os primeiros 10 registros da tabela Person.Person
SELECT TOP 10 *
FROM Person.Person
GO