CREATE DATABASE TASK

USE TASK

CREATE TABLE Student(
Id INT,
[Name] VARCHAR(50),
Surname VARCHAR(50),
FinCode CHAR(7),
Age INT,
AvgPoint INT)

INSERT 
INTO 
Student(Id, [Name], Surname, FinCode, Age, AvgPoint)  
VALUES
(1, 'Name1', 'Surname1', 'aaaa001', 15, 37),
(2, 'Name2', 'Surname2', 'aaaa002', 14, 74),
(3, 'Name3', 'Surname3', 'aaaa003', 17, 63),
(4, 'Name4', 'Surname4', 'aaaa004', 20, 0),
(5, 'Name5', 'Surname5', 'aaaa005', 18, 99),
(6, 'Name6', 'Surname', 'aaaa006', 19, 87)

DELETE FROM Student
WHERE AvgPoint = 0



UPDATE Student SET AvgPoint = 100 WHERE AvgPoint = 99


SELECT [Name] FROM Student WHERE AvgPoint > 51 AND AvgPoint < 90