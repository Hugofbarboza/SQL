/* ### WHERE ### 

A cl�usula WHERE � usada para filtrar registros(linhas).
Ele � usado para extrair apenas os registros que atendem a uma condi��o especificada.



** SINTAXE
SELECT coluna1, coluna2
FROM tabela 
WHERE condi��o

** Operadores que s�o usados junto com a cl�usula WHERE

= Igual
> Maior que
< menor que
>= Maior ou igual
<= menor ou igual
<> Diferente. Observa��o: em algumas vers�es do SQL, esse operador pode ser escrito como !=
BETWEEN Entre um determinado intervalo
LIKE Procurar um padr�o
IN Para especificar v�rios valores poss�veis para uma coluna
OR Operador l�gico OU
AND Operador l�gico E

*/


-- 1 Entrar no bando de dados AdventureWorks2017
USE AdventureWorks2017
GO

-- 2 Selecionando todas as colunas da tabela Person.Person
SELECT *
FROM Person.Person
GO

-- 3 Filtrando a coluna LastName por Miller
SELECT *
FROM Person.Person
WHERE LastName = 'Miller'
GO

-- 4 Filtrando as colunas FirstName e LastName por Anna e Miller
SELECT *
FROM Person.Person	
WHERE FirstName = 'Anna' AND LastName = 'Miller'
GO

-- 5 Selecionando todas as colunas da tabela Production.Product
SELECT * 
FROM Production.Product
GO

-- 6 Filtrando a colunas Color por Blue ou Read
SELECT *
FROM Production.Product
WHERE Color IN ('Blue', 'Red')
GO

SELECT *
FROM Production.Product
WHERE Color = 'Blue' OR Color = 'Red'
GO

-- 7 Filtrando produtos que custam mais que 1.500 d�lares
SELECT *
FROM Production.Product
WHERE ListPrice > 1500
GO

-- 8 Filtrando produtos que custam entre 1200 a 2000 d�lares
SELECT *
FROM Production.Product
WHERE ListPrice > 1200 AND ListPrice < 2000
GO

SELECT *
FROM Production.Product
WHERE ListPrice BETWEEN 1200 AND 2000
GO

-- 9 Filtrando produtos que n�o sejam da cor vermelha
SELECT *
FROM Production.Product
WHERE Color <> 'Red'
GO

SELECT DISTINCT Color
FROM Production.Product
WHERE Color <> 'Red'
GO

--20:38