USE UNIVER

DECLARE Primer cursor local dynamic SCROLL
for SELECT row_number() over (order by SUBJECT) [N],
NOTE FROM PROGRESS WHERE NOTE='4'
DECLARE @rc int,@rn char(50);
OPEN Primer

FETCH Primer into @rc,@rn;
print 'just stroka : ' + cast(@rc as varchar(3))+' ' + rtrim(@rn);

FETCH NEXT from PRIMER into @rc,@rn;
print 'next stroka : ' + cast(@rc as varchar(3)) + rtrim(@rn);

FETCH LAST from PRIMER into @rc,@rn;
print 'last stroka : ' + cast(@rc as varchar(3)) + rtrim(@rn);

FETCH PRIOR from PRIMER into @rc,@rn;
print 'pred stroka : ' + cast(@rc as varchar(3)) + rtrim(@rn);

FETCH FIRST from PRIMER into @rc,@rn;
print 'pervaya stroka : ' + cast(@rc as varchar(3)) + rtrim(@rn);

FETCH ABSOLUTE 3 from PRIMER into @rc,@rn;
print 'absolute stroka : ' + cast(@rc as varchar(3)) + rtrim(@rn);


FETCH Relative -2 from PRIMER into @rc,@rn;
print 'relative stroka : ' + cast(@rc as varchar(3)) + rtrim(@rn);

CLOSE Primer
