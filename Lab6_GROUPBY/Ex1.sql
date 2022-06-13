USE UNIVER

SELECT max(AUDITORIUM_CAPACITY) [Максимальная вместимость],
		min(AUDITORIUM_CAPACITY) [Минимальная вместимость],
		avg(AUDITORIUM_CAPACITY) [Средняя вместимость],
		sum(AUDITORIUM_CAPACITY) [Всего вмещается],
		count(AUDITORIUM) [Кол-во аудиторий]
FROM AUDITORIUM