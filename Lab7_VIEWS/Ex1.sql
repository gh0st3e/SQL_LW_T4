USE UNIVER
DROP VIEW [Преподователь]
GO

CREATE VIEW [Преподователь]

AS SELECT TEACHER [Код],TEACHER_NAME [Имя преподователя],GENDER [Пол],PULPIT [Код кафедры] FROM TEACHER 
go
SELECT * FROM [Преподователь]