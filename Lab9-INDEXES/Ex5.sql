

CREATE TABLE #LAB9_5
(
	tid int,
	CC int identity(1,1),
	Ttext varchar(100)
)
DROP INDEX #LAB9_5_tid on #LAB9_5;
CREATE INDEX #LAB9_5_tid on #LAB9_5(tid);
set nocount on

DECLARE @i int = 0
WHILE @i<10000
begin
	INSERT #LAB9_5 VALUES(FLOOR(3000*RAND()),'CucumberRick')
	SET @i = @i +1
end


USE tempdb
SELECT name[ÈÍÄÅÊÑ], avg_fragmentation_in_percent[Ôðàãìåíòàöèÿ(%)]
FROM sys.dm_db_index_physical_stats(DB_ID(N'TEMPDB'),
	 OBJECT_ID(N'#LAB9_5'),NULL,NULL,NULL) ss
	 JOIN sys.indexes ii on ss.object_id = ii.object_id and ss.index_id = ii.index_id
	 WHERE name is not null;

INSERT TOP (10000) #LAB9_5(tid,Ttext) SELECT tid,Ttext from #LAB9_5
SELECT tid,Ttext FROM #LAB9_5

ALTER index #LAB9_5_tid on #LAB9_5 reorganize;

ALTER index #LAB9_5_tid on #LAB9_5 rebuild with (online = off);