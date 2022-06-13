CREATE TRIGGER FAC_INSTEAD_OF on FACULTY instead of DELETE AS
	raiserror('щ еффх мекэгъ сдюкхрэ тюйскэрер, цде ъ асдс свхрэяъ?!??!?!',10,1);
	RETURN;
GO

DELETE FROM FACULTY WHERE FACULTY='рнб'