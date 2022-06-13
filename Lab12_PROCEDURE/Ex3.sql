use UNIVER
go

ALTER PROCEDURE PSUBJECT @p varchar(20)
as begin
	DECLARE @k int = (select count(*) from SUBJECT);
select * from SUBJECT WHERE PULPIT=@p;
end;

CREATE TABLE #TimeTable
( SUBJECT char(10) primary key,
  SUBJECT_NAME varchar(100),
  PULPIT char(20)
  )

INSERT #TimeTable exec PSUBJECT @p='ศั่า';

SELECT * FROM #TimeTable
