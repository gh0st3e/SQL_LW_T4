USE UNIVER
DECLARE @tv char(20), @t char(300)='';
DECLARE SubjectCurs CURSOR for SELECT subject from SUBJECT WHERE SUBJECT.PULPIT='ИСиТ'

OPEN SubjectCurs;
FETCH SubjectCurs into @tv;
print 'список дисциплин';
while @@fetch_status=0
begin
set @t = rtrim(@tv)+','+@t;
FETCH SubjectCurs into @tv;
end
print @t
CLOSE SubjectCurs;