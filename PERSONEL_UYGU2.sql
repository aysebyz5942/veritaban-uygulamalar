--INSERT INTO PERSONEL([PERSONEL NO],ISIM,SOYISIM,YAS,CINSIYET,KENT,ULKE,MAAS)
--VALUES(1,'ada','XabcX',22,'E','Konya','T�rkiye',2000)

--SELECT * FROM PERSONEL WHERE LEFT(SOYISIM,1)=RIGHT(SOYISIM,1)
--SELECT * FROM PERSONEL WHERE ISIM=REVERSE(ISIM)
--SELECT * FROM PERSONEL WHERE CHARINDEX('a',ISIM)>0 OR CHARINDEX('l',ISIM)>0
-- ?? SELECT * ,STUFF(SOYISIM,LEN(SOYISIM),1,UPPER(RIGHT(SOYISIM,1))) AS 'SOYAD' FROM PERSONEL
