USE UNIVER

SELECT AUDITORIUM_CAPACITY, AUDITORIUM_TYPE
FROM AUDITORIUM a 
WHERE AUDITORIUM_CAPACITY = (SELECT TOP(1) AUDITORIUM_CAPACITY
 FROM AUDITORIUM aa
 WHERE aa.AUDITORIUM_TYPE=a.AUDITORIUM_TYPE 
 ORDER BY AUDITORIUM_CAPACITY DESC)
 ORDER BY A.AUDITORIUM_CAPACITY DESC