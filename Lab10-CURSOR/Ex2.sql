USE UNIVER

DECLARE SubjectCurs CURSOR LOCAL for SELECT subject from SUBJECT WHERE SUBJECT.PULPIT='ศั่า'
DECLARE @tv char(20), @t char(300)='';
OPEN SubjectCurs;
FETCH SubjectCurs into @tv;
print '1.'+@tv+cast(@t as varchar(10));
go
DECLARE @tv char(20), @t char(300)='';
FETCH SubjectCurs into @tv;
print '2.'+@tv+cast(@t as varchar(10));
go

DECLARE SubjectCurs CURSOR GLOBAL for SELECT subject from SUBJECT WHERE SUBJECT.PULPIT='ศั่า'
DECLARE @tv char(20), @t char(300)='';
OPEN SubjectCurs;
FETCH SubjectCurs into @tv;
print '1.'+@tv+cast(@t as varchar(10));
go
DECLARE @tv char(20), @t char(300)='';
FETCH SubjectCurs into @tv;
print '2.'+@tv+cast(@t as varchar(10));
close SubjectCurs;
deallocate SubjectCurs;
go