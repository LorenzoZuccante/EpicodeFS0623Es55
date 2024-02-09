USE [Polizia Municipale]
GO
/****** Object:  StoredProcedure [dbo].[spVerbaliAnnuali]    Script Date: 09/02/2024 15:22:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spVerbaliAnnuali]
@ANNO varchar(4)
AS

BEGIN

	SET NOCOUNT ON;
select * from VERBALE
where year(DataTrascrizioneVerbale) = @ANNO

END
GO
