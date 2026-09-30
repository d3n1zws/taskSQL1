CREATE DATABASE task3

USE task3

CREATE TABLE Products(
[Name] VARCHAR(30) UNIQUE NOT NULL,
Price INT NOT NULL,
Cost INT NOT NULL,
Id INT IDENTITY(1, 1) PRIMARY KEY)




CREATE TABLE Categories(
[Name] VARCHAR(30) UNIQUE NOT NULL,
Id INT IDENTITY(1, 1) PRIMARY KEY)




ALTER TABLE Products
ADD CategoryId INT REFERENCES Categories(Id) NOT NULL


SELECT p.Name AS ProductName, p.Price, p.Cost, p.Id AS ProductId, c.Name as CategoryName
FROM Products AS p
JOIN Categories AS c
ON p.CategoryId = c.Id

CREATE TABLE Colors(
[Name] VARCHAR(20) UNIQUE NOT NULL,
Id INT IDENTITY PRIMARY KEY)


CREATE TABLE ProductColors(
ColorId INT REFERENCES Colors(Id),
ProductId INT REFERENCES Products(Id),
PRIMARY KEY (ColorId, ProductId)
)


SELECT p.Name AS ProductName, p.Price, p.Cost, p.Id AS ProductId, c.Id AS CategoryId, c.Name AS CategoryName FROM Products AS p
JOIN ProductColors AS pc
ON p.Id = pc.ProductId
JOIN Colors AS c
ON c.Id = pc.ColorId