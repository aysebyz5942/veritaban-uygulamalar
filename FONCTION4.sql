CREATE FUNCTION STR_DOLDUR(@DEGER VARCHAR(50), @UZUNLUK INT, @CHAR CHAR(1))

RETURNS VARCHAR(100)

AS BEGIN

DECLARE @DONUS VARCHAR(100)
DECLARE @SAYAC INT
 SET @DONUS=LTRIM(@DEGER)

 IF (@UZUNLUK>0) AND (@UZUNLUK>LEN(LTRIM(@DEGER))
 BEGIN
 SET @SAYAC=0
 WHILE @SAYAC<@UZUNLUK- LEN(LTRIM(@DEGER))
 BEGIN
 SET @SAYAC= @SAYAC +1
 SET @DONUS=@CHAR + @DONUS
 END
END
 RETURN @DONUS
END