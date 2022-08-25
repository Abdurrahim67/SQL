/*


--TASK 1-->ögrenci adinda bir tablosu olusturunuz
>>BASLIKLAR<<<

ögrenci no
ad
soyad
bölüm
not_ortalamasi


--7 ogrencinin ( 2 si Erasmus) data girisini yapiniz ve listeleyiniz
** Transaction**
--Yeni kaydolan   3 ögrenciyi sonradan ekleyiniz **
--Eski listeden 2 ogrenciyi siliniz 
-- tablonun ismini güncel_ogrenci_listesi seklinde degistiriniz
--güncel listeyi yazdiriniz
--Tabloyu siliniz

*/

create table ogrenci (

ogrenci_no int,
ad varchar(20),
soyad varchar(20),
bölüm varchar(30),
not_ortalamsi int);	
	
Begin;	
insert into ogrenci values(101,'Ali','Can','Matematik',70);
insert into ogrenci values(102,'Veli','Canan','Sosyal',60);
insert into ogrenci values(103,'Nazli','Kan','Müzik',55);
insert into ogrenci values(104,'Kerem','Tan','Fizik',90);
insert into ogrenci values(105,'Ahmet','Kale','Kimya',85);
insert into ogrenci values(109,'Nazli','Kan','Müzik',55);
insert into ogrenci values(110,'Kerem','Tan','Fizik',90);
insert into ogrenci values(111,'Ahmet','Kale','Kimya',85);


savepoint x;
insert into ogrenci values(default,'Necmi','Bal','Bioloji',90);
insert into ogrenci values(default,'Ayse','Lüle','Beden',85);
insert into ogrenci values(default,'Aysen','Lülen','Beden',85);

rollback to x;

commit;


select * from ogrenci

delete from ogrenci where ogrenci_no=101;

delete from ogrenci where ad='Kerem';

delete from ogrenci where ogrenci_no=109 or bölüm='Kimya';
delete from ogrenci where not_ortalamsi=60;

alter table ggüncel_ogrenci_listesi rename to  güncel_ogrenci_listesi;

select * from güncel_ogrenci_listesi;

drop table güncel_ogrenci_listesi;



