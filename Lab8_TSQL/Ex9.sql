USE UNIVER

begin TRY
	DECLARE @A INT ='A'
end try
begin CATCH
	print 'Код последней ошибки: ' + convert(varchar,ERROR_NUMBER())
	print 'сообщение об ошибке: ' + ERROR_MESSAGE()
	PRINT 'строка в которой ошибка: ' + convert(varchar,ERROR_LINE())
	PRINT 'имя процедуры или null: ' + ERROR_PROCEDURE()
	PRINT 'уровень серьезности ошибки: ' + convert(varchar,ERROR_SEVERITY())
	PRINT 'метка ошибки: ' + convert(varchar,ERROR_STATE())
end CATCH
