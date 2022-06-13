USE UNIVER

set transaction isolation level READ UNCOMMITTED
begin transaction

-----t1----------

select @@SPID, 'insert FACULTY' 'результат', *  --возвращает системный идентификатор процесса
from FACULTY WHERE FACULTY = 'ФИТ';
select @@SPID, 'update PULPIT' 'результат', *
from PULPIT WHERE FACULTY = 'ФИТ';
commit;
-----t2----------

-----B-----------

begin transaction
select @@SPID
insert FACULTY VALUES ('ФИТ','Информационных технологий');
update PULPIT set FACULTY = 'ФИТ' WHERE PULPIT = 'ИСиТ'

-----t1----------
-----t2----------

ROLLBACK;