-- CASE KULLANIMI
use VTDERS21EKIM

select*, case 
          when CINSIYET='K' THEN 'KADIN'
		  WHEN CINSIYET='E' THEN 'ERKEK'
		  END AS cinsiyetAlias
FROM PERSONEL
  -- AYNI TABLOYU DONDURUR
SELECT *, CASE CINSIYET
          WHEN 'K' THEN 'KADIN'
		  WHEN 'E' THEN 'ERKEK'
		  END AS CÝNSÝYETALÝ
FROM PERSONEL

SELECT ULKE, CASE ULKE
             WHEN 'TÜRKÝYE' THEN 'TR'
			 WHEN 'almanya' THEN 'GER'
			 WHEN 'fransa' THEN 'FR'
			 ELSE 'ABD'
			 END AS KÝSAÝSÝM
FROM PERSONEL     
SELECT MAAS, CASE 
             WHEN MAAS>3000 THEN 'YUKSEKM'
			 WHEN MAAS<2000 THEN 'DUSUKM'
			 ELSE 'ORTAM'
			 END AS MAASDURUMU
FROM PERSONEL
-- SORU2
SELECT *, CASE 
          WHEN MAAS>3000 THEN MAAS*1.1 -- %10 ZAMLI
		  WHEN MAAS>2000 THEN MAAS*1.25 
		  ELSE MAAS*1.5
		  END AS YENÝMAAS
FROM PERSONEL
--SORU3
SELECT UPPER(ULKE) AS ULKE,CINSIYET,COUNT(*) AS TOPLAM 
FROM PERSONEL GROUP BY ULKE,CINSIYET
--SORU4
SELECT UPPER(ULKE)AS ULKE, CASE CINSIYET
                           WHEN 'K' THEN 'KADIN'
						   WHEN 'E' THEN 'ERKEK'
						   END AS CÝNSÝYETYENÝ, 
		COUNT(*) AS TOPLAM FROM PERSONEL GROUP BY ULKE,CINSIYET
--SORU5
SELECT ULKE,COUNT(CASE CINSIYET
             WHEN 'K' THEN 'K'
			 END) AS KIZSAYISI, 
			 COUNT(CASE CINSIYET
			 WHEN 'E' THEN 'E'
			 END) AS ERKEKSAYISI, COUNT(*) AS TOPLAM,
    '%' + STR(100*COUNT(CASE CINSIYET
			 WHEN 'E' THEN 'E' END)/COUNT(*)) AS ERKEKORANÝ
FROM PERSONEL GROUP BY ULKE
--SORU6
SELECT M.ad + SPACE(1)+ M.soyad AS ÝSÝM-SOYÝSÝM,K.YON,SUM(K.saniye)
FROM MUSTERÝ AS M, KONUSMAKAYDI AS K
WHERE M.MusteriKey=k.MusteriKey group by m.MusteriKey, m.Ad, m.Soyad,
k.Yon order by sum(k.Saniye) desc 
--soru6-2
 SELECT M.ad + SPACE(1)+ M.soyad AS ÝSÝM-SOYÝSÝM,case k.Yon 
                                               when 1 then 'sehirici'
											   when 2 then 'sehirarasi'
											   when 3 then 'gsm'end,SUM(K.saniye)
FROM MUSTERÝ AS M, KONUSMAKAYDI AS K
WHERE M.MusteriKey=k.MusteriKey group by m.MusteriKey, m.Ad, m.Soyad,
k.Yon order by sum(k.Saniye) desc 
--soru6-3
 select m.ad + SPACE(1)+ m.soyad AS ÝSÝM-SOYÝSÝM,
       sum(case k.Yon when 1 then k.Saniye end) as sehirici,
	   sum( case k.Yon when 2 then k.Saniye end) as sehirlerarasi,
	   sum(case k.Yon when 3 then k.Saniye end) as gsm,
	   str(sum(k.Saniye)*0.2) as tutar
from Musteri m, KonusmaKaydi k where m.Musterikey=k.MusteriKey 
group by m.MusteriKey, m.Ad, m.Soyad,
order by sum(k.Saniye) desc 
































 