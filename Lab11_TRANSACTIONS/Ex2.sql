use UNIVER
begin try
	begin tran
		DELETE TASK_8_2 WHERE NAME = 'NAME2';
		INSERT TASK_8_2 values('NAMELAB11','SURNAMELAB11');
		INSERT TASK_8_2 values(1,'SURNAMELAB11');
	commit tran;
end try
begin catch
	print 'Error ' + case
	when error_number()=2627 and 
		 patindex('%TASK_8_2%',error_message())>0
	then 'дублирование товара'
	else 'неизвестная ошибка' + cast(error_number() as varchar(5)) + error_message()
	end;
	if @@trancount > 0 rollback tran;
end catch