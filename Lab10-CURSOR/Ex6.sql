use UNIVER 

DECLARE Task1 cursor local dynamic for
SELECT s.NAME, p.NOTE FROM PROGRESS p inner join STUDENT s on p.IDSTUDENT=s.IDSTUDENT
							inner join GROUPS g on s.IDGROUP = g.IDGROUP
							WHERE p.NOTE<4 FOR UPDATE

DECLARE @name varchar(50),@mark int;
OPEN Task1
FETCH Task1 into @name, @mark;
while @@FETCH_STATUS=0
begin
	print @name +' '+cast(@mark as varchar)
	DELETE PROGRESS WHERE CURRENT OF Task1
	FETCH Task1 into @name, @mark;
end
CLOSE Task1

go

DECLARE @curidstudent int = 1014, @ids int, @mark int;
DECLARE Task2 cursor local dynamic for
SELECT IDSTUDENT,NOTE FROM PROGRESS WHERE IDSTUDENT=@curidstudent FOR UPDATE
OPEN Task2
FETCH Task2 into @ids,@mark;
print cast(@ids as varchar) +' '+ cast(@mark as varchar)
UPDATE PROGRESS SET NOTE=NOTE+1 WHERE CURRENT OF Task2
CLOSE Task2