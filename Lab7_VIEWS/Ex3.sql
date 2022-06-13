USE UNIVER
DROP VIEW [Аудитории]
GO
CREATE VIEW [Аудитории]

AS SELECT a.AUDITORIUM_TYPE [Код],a.AUDITORIUM [Название аудитории]
FROM AUDITORIUM a
WHERE a.AUDITORIUM_TYPE LIKE 'ЛК'

go
INSERT [Аудитории] values('ЛК','220-4')
SELECT * FROm [Аудитории] 