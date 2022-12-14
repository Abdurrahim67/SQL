-- SUBQUERIES --> SORGU içinde çalışan SORGUYA(Alt sorgu) denir
CREATE TABLE calisanlar_r
(
id int,
isim VARCHAR(50),
sehir VARCHAR(50),
maas int,
isyeri VARCHAR(20)
);

INSERT INTO calisanlar_r VALUES(123456789, 'Ali Seker', 'Istanbul', 2500, 'Vakko');
INSERT INTO calisanlar_r VALUES(234567890, 'Ayse Gul', 'Istanbul', 1500, 'LCWaikiki');
INSERT INTO calisanlar_r VALUES(345678901, 'Veli Yilmaz', 'Ankara', 3000, 'Vakko');
INSERT INTO calisanlar_r VALUES(456789012, 'Veli Yilmaz', 'Izmir', 1000, 'Pierre Cardin');
INSERT INTO calisanlar_r VALUES(567890123, 'Veli Yilmaz', 'Ankara', 7000, 'Adidas');
INSERT INTO calisanlar_r VALUES(456789012, 'Ayse Gul', 'Ankara', 1500, 'Pierre Cardin');
INSERT INTO calisanlar_r VALUES(123456710, 'Fatma Yasa', 'Bursa', 2500, 'Vakko');


CREATE TABLE markalar_r
(
marka_id int,
marka_isim VARCHAR(20),
calisan_sayisi int
);

INSERT INTO markalar_r VALUES(100, 'Vakko', 12000);
INSERT INTO markalar_r VALUES(101, 'Pierre Cardin', 18000);
INSERT INTO markalar_r VALUES(102, 'Adidas', 10000);
INSERT INTO markalar_r VALUES(103, 'LCWaikiki', 21000);

select * from calisanlar_r
select * from markalar_r

-- calisan sayisi 15.000’den cok olan markalarin isimlerini ve
--bu markada calisanlarin isimlerini ve maaşlarini listeleyin.

select isim,isyeri, maas from calisanlar_r
where isyeri in(select marka_isim from markalar_r where calisan_sayisi>15000);

-- marka_id’si 101’den büyük olan marka çalişanlarinin isim, maaş ve şehirlerini listeleyiniz.

select isim,maas,sehir from calisanlar_r
where isyeri in(select marka_isim from markalar_r where marka_id>101);


-- Ankara’da calisani olan markalarin marka id'lerini ve calisan sayilarini listeleyiniz.

select marka_id, calisan_sayisi from markalar_r
where marka_isim in(select isyeri from calisanlar_r where sehir='Ankara');






