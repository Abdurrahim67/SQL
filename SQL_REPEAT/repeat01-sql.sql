/*
DDL - DATA DEFINITION LANG:DATA
-- CREATE - TABLO OLUSTURMA - 
*/
CREATE TABLE ogrenci(
ogr_no1 int,
ogr_isimsoyisim varchar(30),
notlar real,
yas int,
adres varchar(50),
kayit_tarih date);	

-- VAROLAN TABLODAN YENI BIR TABLO OLUSTURMA

CREATE TABLE ogr_notlari
AS
SELECT ogr_no1, notlar FROM ogrenci;

SELECT * FROM ogrenci;
SELECT * FROM ogr_notlari;

					  
					  