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