USE UNIVER
DROP VIEW [Лекционные аудитории]
GO
CREATE VIEW [Лекционные аудитории]

AS SELECT a.AUDITORIUM_TYPE [Код],a.AUDITORIUM [Название аудитории]
FROM AUDITORIUM a
WHERE a.AUDITORIUM_TYPE LIKE 'ЛК' WITH CHECK OPTION

GO
INSERT [Лекционные аудитории] values('ЙК','2-4')
SELECT * FROM [Лекционные аудитории]