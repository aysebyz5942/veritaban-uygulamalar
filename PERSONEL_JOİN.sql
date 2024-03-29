SELECT * FROM KITAPLAR

SELECT * FROM DBO.YAYINEVLERI

SELECT * FROM KITAPLAR K , YAYINEVLERI Y WHERE K.YV_NO= Y.NO

SELECT Y.ISIM, K.YV_NO, COUNT(*) AS ADET FROM KITAPLAR K , YAYINEVLERI Y WHERE K.YV_NO= Y.NO GROUP BY YV_NO, Y.ISIM

SELECT TOP 1 Y.ISIM, K.YV_NO, COUNT(*) AS ADET FROM KITAPLAR K , YAYINEVLERI Y WHERE K.YV_NO= Y.NO GROUP BY YV_NO, Y.ISIM

---------------------------------------------------------------------------------------------------------------------------


SELECT * FROM DBO.KITAPYAZAR

SELECT * FROM DBO.YAZARLAR


SELECT * FROM KITAPLAR K, KITAPYAZAR KY, YAZARLAR Y  WHERE K.NO= KY.KNO AND Y.YAZAR_NO= KY.YNO

SELECT * FROM KITAPLAR K INNER JOIN  KITAPYAZAR KY  ON K.NO= KY.KNO  INNER JOIN YAZARLAR Y ON Y.YAZAR_NO= KY.YNO

SELECT K.ISIM , COUNT(*) AS YAZAR_SAYISI FROM KITAPLAR K, KITAPYAZAR KY, YAZARLAR Y 
 WHERE K.NO= KY.KNO AND Y.YAZAR_NO= KY.YNO GROUP BY K.ISIM 

SELECT K.ISIM , COUNT(*) AS YAZAR_SAYISI FROM KITAPLAR K, KITAPYAZAR KY, YAZARLAR Y  
WHERE K.NO= KY.KNO AND Y.YAZAR_NO= KY.YNO GROUP BY K.ISIM    HAVING COUNT(*) >= 2  ORDER BY YAZAR_SAYISI
	