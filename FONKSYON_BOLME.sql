ALTER FUNCTION bolme(@BOLUNEN INT, @BOLEN INT)

RETURNS FLOAT

AS BEGIN

DECLARE @SONUC FLOAT
SET @SONUC=@BOLUNEN/@BOLEN

RETURN @SONUC

END
SELECT  dbo.bolme(48,0)