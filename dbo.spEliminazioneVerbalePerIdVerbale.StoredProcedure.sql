USE [Polizia Municipale]
GO
/****** Object:  StoredProcedure [dbo].[spEliminazioneVerbalePerIdVerbale]    Script Date: 09/02/2024 15:22:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spEliminazioneVerbalePerIdVerbale]
@IDverb int
AS
BEGIN

	SET NOCOUNT ON;
	delete from COMUNICAZIONE
	Where IDVerbale = @IDverb
	
	delete from VERBALE
	Where IDVerbale = @IDverb
	END

GO
