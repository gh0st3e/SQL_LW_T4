DROP TRIGGER DDL_UNVIER
GO
ALTER TRIGGER DDL_UNIVER on DATABASE for DDL_DATABASE_LEVEL_EVENTS AS   
	DECLARE @t varchar(50) = EVENTDATA().value('(/EVENT_INS-TANCE/EventType)[1]', 'varchar(50)');
	DECLARE @t1 varchar(50) = EVENTDATA().value('(/EVENT_INS-TANCE/ObjectName)[1]', 'varchar(50)');
	DECLARE @t2 varchar(50) = EVENTDATA().value('(/EVENT_INS-TANCE/ObjectType)[1]', 'varchar(50)'); 
	IF @t1 = 'TEACHER' 
	BEGIN
	PRINT 'Тип события'+@t;
	PRINT 'Имя объекта'+@t1;
	PRINT 'Тип объекта'+@t2;
	RAISERROR(N'операции с таблицей TEACHER запрещены',16,1);
	rollback;
	end;
GO
ALTER TABLE TEACHER DROP COLUMN PULPIT;

