USE UNIVER
DROP VIEW [Дисциплины]
GO
CREATE VIEW [Дисциплины]

AS SELECT TOP 150 s.SUBJECT [Код предмета], s.SUBJECT_NAME [Название предмета], s.PULPIT [Кафедра]
FROM SUBJECT s
ORDER BY s.SUBJECT

GO

SELECT * FROM [Дисциплины]