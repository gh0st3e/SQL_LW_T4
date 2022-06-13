USE UNIVER

SELECT f.FACULTY,
g.PROFESSION,
(CASE WHEN g.YEAR_FIRST = 2022 then '1' 
	  WHEN g.YEAR_FIRST = 2021 then '2'
	  WHEN g.YEAR_FIRST = 2020 then '3'
	  WHEN g.YEAR_FIRST = 2019 then '4'
	  end) [Курс],
ROUND(AVG(CAST(p.NOTE as float(4))),2) [Средняя оценка] 

FROM PROGRESS p inner join STUDENT s on p.IDSTUDENT=s.IDSTUDENT
inner join GROUPS g on s.IDGROUP=g.IDGROUP 
inner join FACULTY f on g.FACULTY = f.FACULTY

--WHERE p.SUBJECT like 'СУБД' or p.SUBJECT like 'ОАиП'

GROUP By f.FACULTY,g.PROFESSION,g.YEAR_FIRST

ORDER BY [Средняя оценка] DESC




/*USE UNIVER
UPDATE GROUPS
SET YEAR_FIRST = YEAR_FIRST+9*/