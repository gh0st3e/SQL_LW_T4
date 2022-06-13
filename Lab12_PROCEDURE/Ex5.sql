USE UNIVER
GO

ALTER PROCEDURE SUBJECT_REPORT @p char(50) AS BEGIN
	DECLARE @rc int = 0;
	BEGIN TRY
		
		DECLARE @tv char(50), @t char(300) = '';
		--DECLARE SubjectCursor CURSOR FOR
			SELECT SUBJECT_NAME FROM SUBJECT WHERE PULPIT = @p;
			IF NOT EXISTS (SELECT SUBJECT_NAME FROM SUBJECT WHERE PULPIT = @p)
				RAISERROR('Error',11,1)
			ELSE
				OPEN SubjectCursor;
				FETCH SubjectCursor INTO @tv;
				PRINT 'Вывод'
				WHILE @@FETCH_STATUS = 0
					BEGIN
						SET @t = RTRIM(@tv) + ','+@t;
						
						SET @rc = @rc+1;
						FETCH SubjectCursor INTO @tv;
					END;
				CLOSE SubjectCursor;
				print @t
				RETURN @rc;
	END TRY
	BEGIN CATCH
		PRINT 'error in parametres'
		print error_message()
		IF ERROR_PROCEDURE() IS NOT NULL
			PRINT 'имя процедуры + ' + ERROR_PROCEDURE();
		RETURN @rc;
	END CATCH
END

GO

DECLARE @rc int;
EXEC @rc = SUBJECT_REPORT @p = 'ИСиТ'
PRINT 'Кол-во дицсциплин: ' + cast(@rc as varchar(3));