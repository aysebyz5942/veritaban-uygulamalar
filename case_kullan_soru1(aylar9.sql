use VTDERS21EKIM

declare @ay int ;

while @ay<=12
begin 
     select 
	 case 
	 when @ay=1 then 'ocak'
	 when @ay=2 then 'subat'
	 when @ay=3 then 'mart'
	 when @ay=4 then 'nisan'
	 when @ay=5 then 'mayis'
	 when @ay=6 then 'haziran'
	 when @ay=7 then 'agustos'
	 when @ay=8 then 'eylul'
	 when @ay=9 then 'ekim'
	 when @ay=10 then 'kasim'
	 when @ay=11 then 'aralik'
	 when @ay=12 then 'temmuz'
	 END AS AYLAR
FROM PERSONEL 