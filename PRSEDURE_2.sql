alter PROC PROC_SAYI(@PARAM VARCHAR(100))
AS BEGIN

DECLARE @SAYAC INT,@HARF CHAR(1), @SIRA INT=1
SET @SAYAC=1

CREATE TABLE #TEMP (SIRA INT, HARF CHAR(1))

WHILE (@SAYAC< LEN(@PARAM)+1)
BEGIN

SET @HARF= (SELECT SUBSTRING(@PARAM,@SAYAC, 1))
IF(SUBSTRING(@PARAM,@SAYAC,1) <> ' ' ) -- <> ES�T DEG�L �SARET�
BEGIN 
INSERT INTO #TEMP(SIRA,HARF) VALUES(@SIRA,@HARF)
SET @SIRA=@SIRA +1

END

SET @SAYAC =@SAYAC + 1

END
SELECT * FROM #TEMP

DROP TABLE #TEMP

END 

EXECUTE dbo.PROC_SAYI 'DIZUSTU BILGISAYAR'
