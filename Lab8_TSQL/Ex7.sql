DROP TABLE #TempTable
CREATE table #TempTable
(
	ID int,
	AGE int,
	BIRTHYEAR int
);

SET nocount on
DECLARE @i int = 0;
WHILE @i<10
begin
INSERT #TempTable (ID,AGE,BIRTHYEAR) values(@i,19+@i,2003-@i);
SET @i =@i+1;
end

SELECT * FROm #TempTable