/*

--TASK 2-->personel adinda bir tablosu olusturunuz
>>BASLIKLAR<<<

personel id
ad_soyad
maas
adres

--personel id leri primary key yapiniz(key ismi 'pers_id' olsun)
-- isimleri ad_soyad_unq Uniq yapiniz
--personel tablosuna cinsiyet ve departman sutunlari(field) ekleyiniz
--2 personelin  data girisini yapiniz ve listeleyiniz
--Ise yeni baslayan  2 personeli  ekleyiniz 
-- maas field ini siliniz
--adres field ini sehir olarak degistiriniz
-- tablonun ismini 'personel_listesi' seklinde degistiriniz



--TASK 3--> adresler adinda bir tablo olusturunuz ve foreign key ile
 personel_listesi tablosunu iliskilendiriniz
>>BASLIKLAR<<

adres_id
sokak
cadde
sehir

--tabloyu yazdiriniz
*/


--1.yol
create table personel_(

personel_id int,
ad_soyad varchar(30),
maas int,
adres varchar,
constraint pers_id primary key(personel_id),
constraint ad_soyad_unq unique (ad_soyad));

select*from personel


create table personel(

personel_id int primary key,
ad_soyad varchar(30) unique,
maas int,
adres varchar);

create table personel(

personel_id int,
ad_soyad varchar(30),
maas int,
adres varchar);

alter table personel add primary key(personel_id);
alter table personel add unique(ad_soyad);


insert into personel values(101,'Ali Can',7000);
insert into personel values(102,'Veli Canan',6000);
insert into personel values(103,'Nazli Kan',5500);
insert into personel values(104,'Kerem Tan',9000);

select*from personel


alter table personel add cinsiyet varchar, add departman varchar;

insert into personel values(105,'Özlem Bakir',9500,'Kartal','K','Pazarlama');
insert into personel values(106,'Kemal Bakir',9500,'Maltepe','E','Depo');


alter table personel drop column departman;
alter table personel rename column adres to sehir;



alter table personel rename to personel_listesi;


select*from personel_listesi;



create table adresler(
	
adres_id int,
sokak varchar(20),
cadde varchar(20),
sehir varchar(20),

constraint id_fk  foreign key(adres_id) references personel_listesi(personel_id));


