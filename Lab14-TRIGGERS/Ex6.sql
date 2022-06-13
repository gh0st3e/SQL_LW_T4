CREATE TRIGGER TR_TEACHER_DEL1 on TEACHER after DELETE AS
BEGIN
	PRINT 'TR_TEACHER_DEL_1';
	RETURN;
END
GO

CREATE TRIGGER TR_TEACHER_DEL2 on TEACHER after DELETE AS
BEGIN
	PRINT 'TR_TEACHER_DEL_2';
	RETURN;
END
GO

CREATE TRIGGER TR_TEACHER_DEL3 on TEACHER after DELETE AS
BEGIN
	PRINT 'TR_TEACHER_DEL_3';
	RETURN;
END
GO

SELECT t.name, e.type_desc from sys.triggers t join sys.trigger_events e
on t.object_id = e.object_id
WHERE e.type_desc = 'DELETE';

EXEC sp_settriggerorder @triggername = 'TR_TEACHER_DEL3', @order = 'First' , @stmttype = 'DELETE';
EXEC sp_settriggerorder @triggername = 'TR_TEACHER_DEL1', @order = 'Last' , @stmttype = 'DELETE';