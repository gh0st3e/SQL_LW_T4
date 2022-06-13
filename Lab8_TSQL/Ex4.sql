DECLARE @z float(8), @x int = 3, @t int = 1;

IF (@t>@x)
BEGIN
	set @z = power(sin(@t),2)
	END
ELSE IF (@t<@x)
BEGIN
	set @z = 4*(@t+@x)
	END
ELSE IF (@t=@x)
BEGIN
	set @z = 1 - exp(@x-2)
	END
PRINT @z

DECLARE @fullname varchar(30) = 'Leonov Denis Igorevich'
SET @fullname = replace(@fullname, 'Denis','D.')
SET @fullname = replace(@fullname,'Igorevich','I.')

PRINT @fullname

DECLARE @fio varchar(30) = '    Леонов Денис Игоревич        ', @surname varchar(30), @name varchar(30), @middlename varchar(30), @tempfio varchar(30)

SET @fio = trim(upper(@fio))
SET @tempfio = @fio
SET @surname = substring(@tempfio, 1, patindex('% %', @tempfio))

SET @tempfio = trim(substring(@tempfio, patindex('% %', @tempfio), len(@tempfio)))
PRINT @tempfio
SET @name = (substring(@tempfio, 1, patindex('% %', @tempfio)))

SET @tempfio = trim(substring(@tempfio, patindex('% %', @tempfio), len(@tempfio)))
SET @middlename = @tempfio

print concat(@surname,left(@name,1),'. ',left(@middlename,1),'.')

DECLARE @DateNow date = getdate();
SET @DateNow = dateadd(month,1,@DateNow)

USE UNIVER

SELECT STUDENT.NAME, DATEDIFF(year,STUDENT.BDAY,@DateNow) [Возраст]
FROM STUDENT
WHERE FORMAT(STUDENT.BDAY,'MM') = FORMAT(@DateNow,'MM')

DECLARE @group int;
SET @group =1;
DECLARE @day date = (SELECT DISTINCT PROGRESS.PDATE
FROM PROGRESS INNER JOIN STUDENT ON PROGRESS.IDSTUDENT=STUDENT.IDSTUDENT
AND PROGRESS.SUBJECT='СУБД' INNER JOIN GROUPS ON GROUPS.IDGROUP=@group)

PRINT @day