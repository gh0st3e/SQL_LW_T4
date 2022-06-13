use UNIVER
DECLARE @subj varchar(20), @date char(20), @note char(1)
DECLARE Prog CURSOR LOCAL Static 
	for SELECT Subject,PDATE,NOTE from PROGRESS;

OPEN Prog;
print 'Количество строк: ' + cast(@@CURSOR_ROWS as varchar(5));

UPDATE PROGRESS set NOTE=8 where IDSTUDENT = 1014;
FETCH Prog into @subj,@date,@note;
while @@FETCH_STATUS=0
begin
print @subj+' '+@date+' '+@note;
FETCH Prog into @subj,@date,@note;
end
Close Prog