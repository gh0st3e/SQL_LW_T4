USE UNIVER

SELECT AUDITORIUM.AUDITORIUM, AUDITORIUM_TYPE.AUDITORIUM_TYPENAME
FROM AUDITORIUM_TYPE, AUDITORIUM
WHERE AUDITORIUM_TYPE.AUDITORIUM_TYPE=AUDITORIUM.AUDITORIUM_TYPE
AND AUDITORIUM_TYPE.AUDITORIUM_TYPENAME LIKE '%���������%'
