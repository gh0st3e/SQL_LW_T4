USE UNIVER
DROP VIEW [Количество кафдер]
GO
CREATE VIEW [Количество кафдер]

AS SELECT f.FACULTY [Факультет], COUNT(p.PULPIT) [Кол-во кафедр]
FROM FACULTY f inner join PULPIT p on f.FACULTY=p.FACULTY
GROUP BY f.FACULTY

go
INSERT [Количество кафдер] values('ИТ',2)
SELECT * FROm [Количество кафдер]