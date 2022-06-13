CREATE TABLE #LAB9_6
(
	tid int,
	CC int identity(1,1),
	Ttext varchar(100)
)

DECLARE @i int =0
while @i<10000
begin
	insert #LAB9_6 values(floor(3000*rand()),'vodka');
	SET @i =@i+1
end

DROP index #lastindex on #LAB9_6;
CREATE index #lastindex on #LAB9_6(tid) with (fillfactor=65);

INSERT top(50)percent INTO #LAB9_6(tid,Ttext) 
SELECT tid,Ttext FROM #LAB9_6

use tempdb
SELECT name[ÈÍÄÅÊÑ], avg_fragmentation_in_percent[Ôðàãìåíòàöèÿ(%)]
FROM sys.dm_db_index_physical_stats(DB_ID(N'TEMPDB'),
	 OBJECT_ID(N'#LAB9_6'),NULL,NULL,NULL) ss
	 JOIN sys.indexes ii on ss.object_id = ii.object_id and ss.index_id = ii.index_id
	 WHERE name is not null;