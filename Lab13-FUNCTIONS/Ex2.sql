USE UNIVER
GO

ALTER FUNCTION dbo.FSUBJECTS(@p varchar(20)) returns varchar(300) AS
	BEGIN
			DECLARE @tv char(20);
			DECLARE @t varchar(300)='Дисциплины: ';

			DECLARE DisciplineCursor CURSOR LOCAL
			FOR SELECT SUBJECT FROM SUBJECT WHERE PULPIT =@p;

			OPEN DisciplineCursor
			FETCH DisciplineCursor INTO @tv;
			WHILE @@FETCH_STATUS=0
			BEGIN
				SET @t = @t + ', ' + rtrim(@tv);
				FETCH DisciplineCursor INTO @tv;
			END
			CLOSE DisciplineCursor
			RETURN @t;
	END

GO
SELECT PULPIT, dbo.FSUBJECTS(PULPIT) FROM PULPIT 