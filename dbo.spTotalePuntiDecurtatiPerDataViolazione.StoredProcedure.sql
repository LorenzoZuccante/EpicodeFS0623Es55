USE [Polizia Municipale]
GO
/****** Object:  StoredProcedure [dbo].[spTotalePuntiDecurtatiPerDataViolazione]    Script Date: 09/02/2024 15:22:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spTotalePuntiDecurtatiPerDataViolazione]
@DATA datetime
AS

BEGIN

	SET NOCOUNT ON;
	select sum(DecurtamentoPunti) as TotalePuntiDecurtati
	from VERBALE
	where DataViolazione = @DATA
END
GO
