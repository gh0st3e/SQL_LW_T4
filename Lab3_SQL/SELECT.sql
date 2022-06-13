SELECT * FROM Товары
ORDER BY Наименование DESC

SELECT Наименование AS Оп_Новое_Название From Товары

SELECT count(*) FROM Товары

SELECT DISTINCT TOP(2) * FROM Товары
WHERE Цена > 10 and Количество>5