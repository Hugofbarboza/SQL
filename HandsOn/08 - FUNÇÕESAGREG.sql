/* ### FUN��ES DE AGREGA��O ### 

MAX - A fun��o MAX() retorna o maior valor da coluna selecionada.
MIN - A fun��o MIN() retorna o menor valor da coluna selecionada.
AVG - A fun��o AVG() retorna a m�dia dos valores de uma coluna num�rica.
SUM - A fun��o SUM() retorna a soma dos valores de uma coluna num�rica.

** SINTAXE

*/

-- 1 Entrar no bando de dados AdventureWorks2017
USE AdventureWorks2017
GO

-- 2 Somando todos os valores totais (Line Total) tabela Sales.SalesOrderDetail
SELECT TOP 10 *
FROM Sales.SalesOrderDetail
GO

SELECT SUM(LineTotal) AS somaTotal
FROM Sales.SalesOrderDetail
GO

-- 3 Menor valor da coluna Line Total tabela Sales.SalesOrderDetail
SELECT MIN(LineTotal) AS menorValor
FROM Sales.SalesOrderDetail
GO

-- 4 Valor m�dio coluna Line Total tabela Sales.SalesOrderDetail
SELECT AVG(LineTotal) AS mediaValor
FROM Sales.SalesOrderDetail
GO