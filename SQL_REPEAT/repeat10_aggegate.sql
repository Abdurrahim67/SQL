-- AGGREGATE METHOD KULLANIMI --
/*
-Aggregate Methodları (SUM(Topla),COUNT(Say),MIN(EN küçük değer),MAX(En büyük değer),AVG(Ortalama))
-Subquery içinde de kullanılır
-ANcak, sorgu tek bir değer döndürüyor olmalıdır
SYNTAX: sum() şeklinde olmalı sum () arasında boşluk olmamalı
*/


select * from calisanlar_r

-- Çalısanlarr tablosundaki en yüksek maaş değerini listeleyiniz

select max(maas) from calisanlar_r;

--Calisanlar_r tablosundaki maaşların toplamını listeleyiniz
select sum(maas) from calisanlar_r;

--Calıcanlar_r tablosundaki maas ortalamalını listeleyiniz
select avg (maas) from calisanlar_r;
select round (avg (maas)) from calisanlar_r;
select round (avg(maas),2) from calisanlar_r;
select round (avg(maas),4) from calisanlar_r;

--Calisanlar_r toplasundan en düşük maası listeleyiniz
select min(maas) from calisanlar_r;

--Calisanlar_r tablosundaki kaç kişinin maaş aldığını listeleyiniz
select count(maas) from calisanlar_r;

-- Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin toplam maaşini listeleyiniz
select marka_isim, calisan_sayisi,(select sum(maas) from calisanlar_r where marka_isim=isyeri ) as toplam_maas from markalar_r;

-- Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin maksimum ve minumum maaşini listeleyen bir Sorgu yaziniz.
select marka_isim, calisan_sayisi,(select max(maas)from calisanlar_r where marka_isim=isyeri) as max_maas,(select min(maas) from calisanlar_r where marka_isim=isyeri)as min_maas from markalar_r;


--Her markanin id’sini, ismini ve toplam kaç şehirde bulunduğunu listeleyen bir SORGU yaziniz.

select marka_id,marka_isim, (select count(sehir) from calisanlar_r where marka_isim=isyeri) as sehir_sayisi from markalar_r;

--Interview Question: En yüksek ikinci maas değerini çağırın.

select max(maas) as en_yuksekMaas from calisanlar_r
where maas< (select max(maas)from calisanlar_r);

----Interview Question: En düşük ikinci maas değerini çağırın.
select min(maas) as en_dusukMaas from calisanlar_r
where maas> (select min(maas) from calisanlar_r);


--En yüksek üçüncü maas değerini bulun
select max(maas) as en_yuksek3Maas from calisanlar_r
where maas <( select max(maas) from calisanlar_r where maas<(select max(maas)from calisanlar_r));



--En düşük üçüncü maas değerini bulununuz (ÖDEV)
select min(maas) as en_dusuk3Maas from calisanlar_r
where maas >(select min(maas) from calisanlar_r where maas> (select min(maas) from calisanlar_r));

