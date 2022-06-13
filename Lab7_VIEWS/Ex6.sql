USE UNIVER
GO

ALTER VIEW [Количество кафдер] WITH SCHEMABINDING

AS SELECT f.FACULTY [Факультет], COUNT(p.PULPIT) [Кол-во кафедр]
FROM dbo.FACULTY f inner join dbo.PULPIT p on f.FACULTY=p.FACULTY
GROUP BY f.FACULTY
