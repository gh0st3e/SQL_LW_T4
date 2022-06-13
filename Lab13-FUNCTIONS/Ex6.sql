ALTER FUNCTION FACLUTY_REPORT(@c int) returns @fr table 
	([Faculty] varchar(50),[count pulpit] int,[count groups] int,[count students] int, [count spec] int)
	as BEGIN
		DECLARE cc CURSOR static for
		SELECT FACULTY FROM FACULTY WHERE dbo.COUNT_STUDENTS(FACULTY) > @c;

		

		DECLARE @f varchar(30);
		open cc
		fetch cc into @f;
		
		while @@fetch_status = 0
		begin
			DECLARE @cpulp int = dbo.CPULP(@f)
			
			DECLARE @cgroup int = dbo.CGROUP(@f)
			

			DECLARE @cstud int = dbo.CSTUD(@f)
			

			DECLARE @cspec int = dbo.CSPEC(@f)
			
			insert @fr values(@f,@cpulp,@cgroup,@cstud,@cspec)
			fetch cc into @f;

END
return;
END

go
SELECT * FROM dbo.FACLUTY_REPORT(30)

GO

CREATE FUNCTION CPULP(@f varchar(50)) returns int as
BEGIN
	DECLARE @k int;
	SET @k = (SELECT count(PULPIT) FROM PULPIT WHERE FACULTY=@f);
	RETURN @k;
END
go

CREATE FUNCTION CGROUP(@f varchar(50)) returns int as
BEGIN
	DECLARE @k int;
	SET @k = (SELECT count(IDGROUP) FROM GROUPS WHERE FACULTY=@f);
	RETURN @k;
END
go

CREATE FUNCTION CSTUD(@f varchar(50)) returns int as
BEGIN
	DECLARE @k int;
	SET @k = (SELECT count(IDSTUDENT) FROM STUDENT INNER JOIN GROUPS ON STUDENT.IDGROUP=GROUPS.IDGROUP WHERE FACULTY=@f);
	RETURN @k;
END
go

CREATE FUNCTION CSPEC(@f varchar(50)) returns int as
BEGIN
	DECLARE @k int;
	SET @k = (SELECT count(PROFESSION) FROM PROFESSION WHERE FACULTY=@f);
	RETURN @k;
END
go