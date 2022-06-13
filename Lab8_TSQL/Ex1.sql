DECLARE @tchar char = 'D',
		@tvarchar varchar(15) = 'Hello, World',
		@tdate datetime,
		@ttime time,
		@tint int,
		@tsmallint smallint,
		@ttinyint tinyint,
		@tnumeric numeric(12,5);

SET @tdate = getdate();
SET @ttime = '08:04:03';
SELECT @tint = 10;
SELECT @tsmallint = 2;
SELECT @tnumeric = 500.2555;

SELECT @tchar,@tvarchar,@tdate;
PRINT 'INT ' + convert(varchar, @tint)
PRINT 'SMALLINT  ' + convert(varchar, @tsmallint)
PRINT 'TIME ' + convert(varchar, @ttime)