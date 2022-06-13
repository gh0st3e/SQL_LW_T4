
CREATE TABLE #LAB9_2
(
	TIND int,
	CC int identity(1,1),
	TVCHAR varchar(100)
);

set nocount on
DECLARE @i int = 0;
while @i<20000
begin
INSERT #LAB9_2 VALUES (FLOOR(30000*rand()),'obama-chernojopiy')
IF @i % 100 = 0 print(@i)
SET @i=@i+1;
end

SELECT * FROM #LAB9_2

CREATE INDEX #LAB9_2_I ON #LAB9_2(TIND,CC)

SELECT * FROM #LAB9_2 WHERE TIND > 1500 and CC < 4500

SELECT * FROM #LAB9_2 WHERE TIND = 52 and CC >3