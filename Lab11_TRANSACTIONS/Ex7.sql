USE UNIVER
--------A---------
set transaction isolation level SERIALIZABLE
begin transaction
delete TEACHER where TEACHER = 'ВВВ';
delete TEACHER where TEACHER = 'ВВ';
insert TEACHER values ('ВВ', 'Воронов Владимир Васильевич', 'м', 'ЛВ');
update TEACHER set TEACHER = 'ВВВ' where TEACHER = 'ВВ';
select TEACHER from TEACHER where PULPIT = 'ЛВ';

--------t1---------
select TEACHER from TEACHER where PULPIT = 'ЛВ';
--------t2---------
commit;

--------B---------
USE UNIVER
begin transaction
delete TEACHER where TEACHER = 'ГРН';
insert TEACHER values ('ВВО', 'Воронов Владимир Васильевич', 'м', 'ЛВ');
update TEACHER set TEACHER = 'ВВВО' where TEACHER = 'ВВО';
select TEACHER from TEACHER where PULPIT = 'ЛВ';

--------t1---------
commit; 
select TEACHER from TEACHER where PULPIT = 'ЛВ';

--------t2---------
rollback

