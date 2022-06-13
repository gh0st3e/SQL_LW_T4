set nocount on
IF EXISTS (SELECT * FROM SYS.objects WHERE OBJECT_ID=object_id(N'DBO.X'))
drop table X;

DECLARE @c int, @flag char = 'c';
SET IMPLICIT_TRANSACTIONS ON

CREATE TABLE X(K int);
INSERT X values(1),(2),(3);
set @c = (select count(*) from X);
print 'Кол-во строк в таблице Х: '+ cast(@c as varchar(2));
if @flag='c' commit;
else rollback;

SET IMPLICIT_TRANSACTIONS OFF

IF EXISTS (SELECT * FROM SYS.objects WHERE OBJECT_ID=object_id(N'DBO.X'))
print 'таблица Х есть';
else print 'таблицы Х нет'