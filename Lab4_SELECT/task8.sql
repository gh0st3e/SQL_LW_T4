USE UNIVER;

DROP TABLE TASK_8_1;
DROP TABLE TASK_8_2;

CREATE TABLE TASK_8_1
(
	NAME nvarchar(50),
	SURNAME nvarchar(50)
);

CREATE TABLE TASK_8_2
(
	NAME nvarchar(50),
	PATRONIMIC nvarchar(50)
);

INSERT INTO TASK_8_1(NAME, SURNAME)
	VALUES ('Name1','Surname1'),
		   ('Name3','Surname2'),
		   ('Name5','Surname3'),
		   ('Name6','Surname4'),
		   ('Name7','Surname5');

INSERT INTO TASK_8_2(NAME, PATRONIMIC)
	VALUES ('Name2','Patromymic1'),
		   ('Name7','Patromymic2'),
		   ('Name5','Patromymic3'),
		   ('Name4','Patromymic4'),
		   ('Name6','Patromymic5');

-- �������� FULL JOIN
-- ������������
SELECT TASK_8_1.SURNAME ,
	   TASK_8_2.PATRONIMIC
FROM TASK_8_1 FULL OUTER JOIN TASK_8_2
ON TASK_8_1.NAME = TASK_8_2.NAME
ORDER BY TASK_8_1.SURNAME;

SELECT TASK_8_1.SURNAME [�������],
	   TASK_8_2.PATRONIMIC [��������]
FROM TASK_8_2 FULL OUTER JOIN TASK_8_1
ON TASK_8_1.NAME = TASK_8_2.NAME
ORDER BY TASK_8_1.SURNAME;

-- �������� ������������ LEFT OUTER JOIN � RIGHT OUTER JOIN ���������� ���� ������;
SELECT TASK_8_1.SURNAME [�������],
	   TASK_8_2.PATRONIMIC [��������]
FROM TASK_8_1 FULL OUTER JOIN TASK_8_2
ON TASK_8_1.NAME = TASK_8_2.NAME
ORDER BY TASK_8_1.SURNAME;

SELECT TASK_8_1.SURNAME [�������],
       TASK_8_2.PATRONIMIC [��������]
FROM TASK_8_1 LEFT OUTER JOIN TASK_8_2
ON TASK_8_1.NAME = TASK_8_2.NAME
ORDER BY TASK_8_1.SURNAME;

SELECT TASK_8_1.SURNAME [�������],
       TASK_8_2.PATRONIMIC [��������]
FROM TASK_8_1 RIGHT OUTER JOIN TASK_8_2
ON TASK_8_1.NAME = TASK_8_2.NAME
ORDER BY TASK_8_1.SURNAME;

-- �������� ���������� INNER JOIN ���� ������
SELECT TASK_8_1.SURNAME [�������],
	   TASK_8_2.PATRONIMIC [��������]
FROM TASK_8_1 FULL OUTER JOIN TASK_8_2
ON TASK_8_1.NAME = TASK_8_2.NAME
ORDER BY TASK_8_1.SURNAME;

SELECT TASK_8_1.SURNAME [�������],
	   TASK_8_2.PATRONIMIC [��������]
FROM TASK_8_1 INNER JOIN TASK_8_2
ON TASK_8_1.NAME = TASK_8_2.NAME
ORDER BY TASK_8_1.SURNAME;

-- ������, ��������� �������� �������� ������ ����� (� �������� FULL OUTER JOIN) ������� � �� �������� ������ ������; 
SELECT TASK_8_1.SURNAME [�������],
	   TASK_8_2.PATRONIMIC [��������]
FROM TASK_8_1 FULL OUTER JOIN TASK_8_2
ON TASK_8_1.NAME = TASK_8_2.NAME
WHERE TASK_8_1.SURNAME IS NULL;

-- ������, ��������� �������� �������� ������ ������ ������� � �� ���������� ������ �����; 
SELECT TASK_8_1.SURNAME [�������],
	   TASK_8_2.PATRONIMIC [��������]
FROM TASK_8_1 FULL OUTER JOIN TASK_8_2
ON TASK_8_1.NAME = TASK_8_2.NAME
WHERE TASK_8_2.PATRONIMIC IS NULL;

-- ������, ��������� �������� �������� ������ ������ ������� � ����� ������;
SELECT TASK_8_1.SURNAME [�������],
	   TASK_8_2.PATRONIMIC [��������]
FROM TASK_8_1 FULL OUTER JOIN TASK_8_2
ON TASK_8_1.NAME = TASK_8_2.NAME;