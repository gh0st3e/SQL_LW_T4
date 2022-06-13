DECLARE @i int = 0;

WHILE (@i>=0)
begin
if (@i=12) RETURN
SET @i=@i+1
PRINT convert(varchar,@i)
end
