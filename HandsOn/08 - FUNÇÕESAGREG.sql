/* ### FUNÇÕES DE AGREGAÇÃO ### 

MAX - A função MAX() retorna o maior valor da coluna selecionada.
MIN - A função MIN() retorna o menor valor da coluna selecionada.
AVG - A função AVG() retorna a média dos valores de uma coluna numérica.
SUM - A função SUM() retorna a soma dos valores de uma coluna numérica.

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

-- 4 Valor médio coluna Line Total tabela Sales.SalesOrderDetail
SELECT AVG(LineTotal) AS mediaValor
FROM Sales.SalesOrderDetail
GO