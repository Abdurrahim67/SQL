-- SUBQUERIES --> SORGU içinde çalışan SORGUYA(Alt sorgu) denir

CREATE TABLE calisanlar2
(
id int,
isim VARCHAR(50),
sehir VARCHAR(50),
maas int,
isyeri VARCHAR(20)
); 

INSERT INTO calisanlar2 VALUES(123456789, 'Ali Seker', 'Istanbul', 2500, 'Vakko');
INSERT INTO calisanlar2 VALUES(234567890, 'Ayse Gul', 'Istanbul', 1500, 'LCWaikiki');
INSERT INTO calisanlar2 VALUES(345678901, 'Veli Yilmaz', 'Ankara', 3000, 'Vakko');
INSERT INTO calisanlar2 VALUES(456789012, 'Veli Yilmaz', 'Izmir', 1000, 'Pierre Cardin');
INSERT INTO calisanlar2 VALUES(567890123, 'Veli Yilmaz', 'Ankara', 7000, 'Adidas');
INSERT INTO calisanlar2 VALUES(456789012, 'Ayse Gul', 'Ankara', 1500, 'Pierre Cardin');
INSERT INTO calisanlar2 VALUES(123456710, 'Fatma Yasa', 'Bursa', 2500, 'Vakko');


CREATE TABLE markalar
(
marka_id int,
marka_isim VARCHAR(20),
calisan_sayisi int
);

INSERT INTO markalar VALUES(100, 'Vakko', 12000);
INSERT INTO markalar VALUES(101, 'Pierre Cardin', 18000);
INSERT INTO markalar VALUES(102, 'Adidas', 10000);
INSERT INTO markalar VALUES(103, 'LCWaikiki', 21000);

select * from calisanlar2
select * from markalar



--calisan sayisi 15000’den cok olan markalarin isimlerini ve bu markada calisanlarin 
--isimlerini,maaşlarini listeleyin.

SELECT isim,maas,isyeri
FROM calisanlar2
WHERE isyeri IN(SELECT marka_isim FROM markalar WHERE calisan_sayisi>15000);

--2 marka_id’si 101’den büyük olan marka çalişanlarinin isim, maaş ve şehirlerini listeleyiniz.

SELECT isim,maas,sehir
FROM calisanlar2
WHERE isyeri IN(SELECT marka_isim FROM markalar WHERE marka_id>101);

--3 Ankara’da calisani olan markalarin marka id'lerini ve calisan sayilarini listeleyiniz.

SELECT marka_id, calisan_sayisi 
FROM markalar
WHERE marka_isim IN(SELECT isyeri FROM calisanlar2 WHERE sehir='Ankara');





-- 4-- maasi 2000 den fazla olan calisanlarin marka_id ve marka_isimlerini listeyiniz

SELECT marka_id,marka_isim
FROM markalar
WHERE marka_isim IN(SELECT isyeri FROM calisanlar2 WHERE maas>2000);

-- 5-- marka ismi Vakko olan calisanlarin isim ve sehirlerini listeleyiniz

SELECT isim, sehir
FROM calisanlar2
WHERE isyeri='Vakko';

SELECT isim, sehir
FROM calisanlar2
WHERE isyeri IN(SELECT marka_isim FROM markalar WHERE marka_isim='Vakko'); 





