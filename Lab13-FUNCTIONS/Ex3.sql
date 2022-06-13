USE UNIVER
GO

ALTER FUNCTION FFACPUL (@facultyNumber varchar(50), @pulpitNumber varchar(50)) RETURNS TABLE AS
	RETURN SELECT f.FACULTY_NAME,p.PULPIT_NAME FROM FACULTY as f 
											   LEFT OUTER JOIN PULPIT as p
											   ON f.FACULTY=p.FACULTY
											   WHERE f.FACULTY=ISNULL(@facultyNumber,f.FACULTY)
											   AND
								               p.PULPIT = ISNULL(@pulpitNumber,p.PULPIT)
GO
SELECT * FROM dbo.FFACPUL(NULL,NULL)
SELECT * FROM dbo.FFACPUL('ศÝิ',NULL)
SELECT * FROM dbo.FFACPUL(NULL,'ศั่า')
SELECT * FROM dbo.FFACPUL('ศา','ศั่า')