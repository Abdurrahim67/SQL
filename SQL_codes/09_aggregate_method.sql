-- AGGREGATE METHOD KULLANIMI --
/*
-Aggregate Methodları (SUM(Topla),COUNT(Say),MIN(EN küçük değer),MAX(En büyük değer),AVG(Ortalama))
-Subquery içinde de kullanılır
-ANcak, sorgu tek bir değer döndürüyor olmalıdır
SYNTAX: sum() şeklinde olmalı sum () arasında boşluk olmamalı
*/

SELECT *FROM calisanlar2


-- Çalısanlar2 tablosundaki en yüksek maaş değerini listeleyiniz
SELECT max(maas)
FROM calisanlar2

--Calisanlar tablosundaki maaşların toplamını listeleyiniz
SELECT sum(maas)
FROM calisanlar2

--Calısanlar tablosundaki maas ortalamasini listeleyiniz
SELECT avg(maas)
FROM calisanlar2

SELECT round(avg(maas))
FROM calisanlar2

SELECT round(avg(maas),2)
FROM calisanlar2

--Calisanlar taplosundan en düşük maası listeleyiniz
SELECT min(maas)
FROM calisanlar2

--Calisanlar tablosundaki kaç kişinin maaş aldığını listeleyiniz
SELECT count(maas)
FROM calisanlar2


SELECT * FROM markalar;

-- Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin toplam maaşini listeleyiniz
SELECT marka_isim,calisan_sayisi,
(SELECT sum (maas)FROM calisanlar2 WHERE marka_isim=isyeri)AS toplam_maas FROM markalar;

-- ALIAS (AS) --> Tabloda geçici isim vermek istersek koşuldan sonra AS sutun_isim olarak kullanılır.

-- Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin maksimum ve minumum maaşini listeleyen bir sorgu yaziniz.
SELECT marka_isim,calisan_sayisi,
(SELECT min(maas) FROM calisanlar2 WHERE marka_isim=isyeri) AS min_maas,
(SELECT max(maas) FROM calisanlar2 WHERE marka_isim=isyeri) AS max_maas FROM markalar;



--Her markanin id’sini, ismini ve toplam kaç şehirde bulunduğunu listeleyen bir SORGU yaziniz.

SELECT marka_id,marka_isim,
(SELECT count(sehir)FROM calisanlar2 WHERE marka_isim=isyeri ) AS sehir_sayisi from markalar;


--Interview Question: En yüksek ikinci maas değerini çağırın.
SELECT max(maas) AS enyuksek_ikinci_maas
FROM calisanlar2 
WHERE maas < (SELECT max(maas) from calisanlar2);

----Interview Question: En düşük ikinci maas değerini çağırın.
SELECT min(maas) AS en_dusuk_ikinci_maas
FROM calisanlar2
WHERE maas >(SELECT min(maas) FROM calisanlar2);
--En yüksek üçüncü maas değerini bulun

SELECT max(maas) AS enyuksek_ucuncu_maas
FROM calisanlar2
WHERE maas<(SELECT max(maas)FROM calisanlar2 WHERE maas< (SELECT max(maas) FROM calisanlar2));

--En düşük üçüncü maas değerini bulununuz (ÖDEV)
SELECT min(maas)AS en_dusuk_ucuncu_maas
FROM calisanlar_r
WHERE maas >(SELECT min(maas) FROM calisanlar_r WHERE maas> (SELECT min(maas) FROM calisanlar_r));

