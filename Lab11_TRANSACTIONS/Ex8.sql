USE UNIVER
begin tran                              
	insert PROGRESS values ('ясад', 1000, '2022-06-12', 9);
	begin tran     
		UPDATE STUDENT
			set name = 'DENIS LEONTIEV' where IDSTUDENT = 1000;
			select
				(select count(*) from STUDENT where IDSTUDENT = 1000),
				(select count(*) from PROGRESS where SUBJECT = 'ясад');
	commit;
	print @@TRANCOUNT
	if @@TRANCOUNT > 0 rollback;
select
	(select count(*) from STUDENT where IDSTUDENT = 1000),
	(select count(*) from PROGRESS where SUBJECT = 'ясад');