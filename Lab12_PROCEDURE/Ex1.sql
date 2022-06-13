USE UNIVER

go
--create procedure
ALTER PROCEDURE PSUBJECT AS
	BEGIN
		DECLARE @k int = (select count(*) from SUBJECT)
		select * from SUBJECT
		return @k
end;

declare @i int = 0;
EXEC @i = PSUBJECT;
print 'кол-во строк = ' + cast(@i as varchar(3));