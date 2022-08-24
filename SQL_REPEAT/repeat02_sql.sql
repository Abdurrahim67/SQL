create table personel(
pers_id int,
isim varchar(30),
sehir varchar(30),
maas int,
adres varchar(50)
);

create table personel_adres
as
select pers_id, sehir, adres, from personel;

select * from personel

create table student(
id varchar(4),
st_name varchar(30),
age int);	
	
insert into student values('1001','Ali Can',25);
insert into student values('1002','Veli Can',35);
insert into student values('1003','Ayse Can',45);
insert into student values('1004','Derya Can',55);


insert into student(st_name,age) values('Murat Can',65); 

select * from student;
select st_name from student;

select * from student where age>35;

create table ogrenciler2(
id serial,
isim varchar(50),
veli_isim varchar(50),
yaizili_notu real);	

Begin;
insert into ogrenciler2 values(default,'Ali Can','Hasan Can',75.5);
insert into ogrenciler2 values(default,'Canan Gül','Ayse Can',90.5);
savepoint x;
insert into ogrenciler2 values(default,'Kemal Can','Ahmet Can',85.5);
insert into ogrenciler2 values(default,'Ahmet Sen','Ayse Can',65.5);

rollback to x;

select * from ogrenciler2

commit;



--DML - DELETE-
--DELETE FROM tablo_adi
--DELETE FROM tablo_adi WHERE sutun_adi

create table ogrenciler
(id int,
 isim varchar(50),
 veli_isim varchar(50),
 yazili_notu int);

insert into ogrenciler values(123,'Ali Can','Hasan',75);
insert into ogrenciler values(124,'Merve Gul','Ayse',85);
insert into ogrenciler values(125,'Kemal Yasa','Hasan',85);
insert into ogrenciler values(126,'Nesibe Yilmaz','Ayse',95);
insert into ogrenciler values(127,'Mustafa Bak','Can',99);
insert into ogrenciler values(128,'Mustafa Bak','Ali',99);

select * from ogrenciler;

delete from ogrenciler where id=124;

delete from ogrenciler where isim='Kemal Yasa';
delete from ogrenciler where isim='Nesibe Yilmaz' or isim='Mustafa Bak';

delete from ogrenciler where isim='Ali Can' or id=123;

delete from ogrenciler

--DELETE TRUNCATE
select * from ogrenciler;
truncate table ogrenciler

--DDL -
--CREATE-ALTER-DROP

create table personel(
pers_id int,
isim varchar(30),
sehir varchar(30),
maas int,
sirket varchar(20),	
adres varchar(50)
);

select * from personel;

alter table personel add cinsiyet varchar(20), add yas int;

alter table personel drop column sirket;

alter table personel rename column sehir to ulke;

alter table personel rename to isciler;
alter table isciler rename to personel;

select * from isciler;

drop table isciler;

