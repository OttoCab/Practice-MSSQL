--- Try Catch
--- se usa para verificar si hago la transaccion de manera
--- correcta

begin tran 

begin try
	Select 21/0
	commit tran
end try

begin catch
	print 'No se puede dividir en 0'
	rollback tran
end catch

--- Otro Uso

begin try
--- Generate a divide-by-zero error
	select
		1/0 as Error;
end try
begin catch
	select
	 ERROR_NUMBER() as ErrorNumber,
	 ERROR_STATE() as ErrorState,
	 ERROR_SEVERITY() as ErrorSeverity,
	 ERROR_PROCEDURE() as ErrorProcedure,
	 ERROR_LINE() as ErrorLine,
	 ERROR_MESSAGE() as ErrorMessage;
end catch;
go