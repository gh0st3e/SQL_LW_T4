USE UNIVER
set transaction isolation level READ COMMITTED
begin transaction
select count(*) from PULPIT
where FACULTY = 'ИТ';

-----t1-------
-----t2-------

select 'update PULPIT' 'результат', count(*)
from PULPIT where FACULTY = 'ИТ';
commit;

------B----

begin transaction

------t1-----

update PULPIT set FACULTY = 'ИТ' where PULPIT = 'ЛУ';
commit;

------t2------


