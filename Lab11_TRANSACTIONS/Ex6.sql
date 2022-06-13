--------A---------
use UNIVER
set transaction isolation level REPEATABLE READ
begin transaction
select TEACHER FROM TEACHER
WHERE PULPIT = 'ИСиТ';

--------t1---------
--------t2---------

select case
    when TEACHER = 'ИВИФ' THEN 'insert TEACHER'
	else ' '
	end 'результат', TEACHER
FROM TEACHER WHERE PULPIT = 'ИСиТ';
commit;

--- B ---	
begin transaction 	  
--- t1 --------------------
insert TEACHER values ('ИВИФ', 'Иванов Иван Иванович', 'м', 'ИСиТ');
commit; 
--- t2 --------------------

select * from TEACHER
