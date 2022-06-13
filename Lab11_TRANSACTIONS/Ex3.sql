use UNIVER
DECLARE @point varchar(32);
begin try
	begin tran
		DELETE TASK_8_2 WHERE NAME = 'NAME2';
		set @point = 'p1'; save tran @point
		INSERT TASK_8_2 values('NAMELAB11','SURNAMELAB11');
		set @point = 'p2'; save tran @point
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
	if @@trancount > 0
	begin
		print 'контрольная точка: '+ @point;
		rollback tran @point;
		commit tran;
	end
end catch;