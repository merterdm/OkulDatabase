/*
Sql Parametreleri ve degisken tanimlamalari 
mutlaka @ isareti ile baslarlar. 
DEgisken tanimlamalarinda mutlaka tip 
bildirimi gereklidir.
*/
CREATE PROCEDURE [dbo].[Toplama]
	@param1 int = 0,
	@param2 int
AS
Begin
	SELECT @param1, @param2

	RETURN 0
End