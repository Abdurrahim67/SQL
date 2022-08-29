-- SELECT - SIMILAR TO - REGEX(Regular Expressions) --
/*
SIMILAR TO : Daha karmaşık pattern(kalıp) ile sorgulama işlemi için SIMILAR TO kullanılabilir.
Sadece PostgreSQL de kullanılır. Büyük Küçük harf önemlidir.

REGEX : Herhangi bir kod, medin içerisinde istenen yazı veya kod parçasının aranıp bulunmasını sağlayan
kendine ait bir söz dizimi olan bir yapıdır.MySQL de(REGEXP_LİKE) olarak kullanılır
PostgreSQL'de "~" karakteri ile kullanılır.

-- Veya işlemi için | karakteri kullanılır
*/



select*from actor;
 --Task--> İçerisinde 'ot' veya 'at' bulunan kelimeleri listeleyiniz
 
--SIMILAR TO ile
select*from actor where first_name similar to '%(at|ot|AT|OT|aT|oT|At|Ot)%'; 

--LIKE ile
select*from actor where first_name ~~* '%at%' or first_name ~~* '%ot%';

--REGEX ile
select*from actor where first_name ~* 'at' or first_name ~*'ot';

 
-- Task--> 'He' veya 'hi' ile başlayan kelimeleri listeleyeniz

--SIMILAR TO ile
select*from actor where first_name similar to 'He%|Hi%';

--LIKE ile
select *from actor where first_name ~~* 'He%' or first_name ~~* 'Hi%';

--REGEX ile
select*from actor where first_name ~* '^h[ei](.*)';
 
 --Sonu 't' veya 'm' ile bitenleri listeleyeniz
 
 --SIMILAR TO ile
  select*from actor where first_name similar to '%t|%m';

 --LIKE ile
 select*from actor where first_name ilike '%t' or first_name ilike'%m';
 --REGEX ile
select *from actor where first_name ~* '^(.*)[tm]$';

--h ile başlayıp t ile biten 3 harfli kelimeleri listeleyeniz

--SIMILAR TO ile
select*from acto 
-- LIKE ile
-- REGEX ile




--İlk karakteri 'h', son karakteri 't' ve ikinci karakteri 'a'dan 'e'ye herhangi bir karakter olan
--“kelime" değerlerini çağırın

--SIMILAR to ile
-- REGEX ile

--İlk karakteri 's', 'a' veya 'y' olan "kelime" değerlerini çağırın.

--Son karakteri 'm', 'a' veya 'f' olan "kelime" değerlerini çağırın.

 
 --İlk harfi h, son harfi t olup 2.harfi a veya i olan 3 harfli kelimelerin tüm bilgilerini sorgulayalım.
 
 
 
--İlk harfi 'b' den ‘s' ye bir karakter olan ve ikinci harfi herhangi bir karakter olup
--üçüncü harfi ‘l' olan “kelime" değerlerini çağırın.

 -- REGEX ile
 --SIMILAR to ile
 
 --içerisinde en az 2 adet oo barıdıran kelimelerin tüm bilgilerini listeleyiniz.
 
														 
														  
														  
														  
--içerisinde en az 4 adet oooo barıdıran kelimelerin tüm bilgilerini listeleyiniz.														  
														  
														  
--'a', 's' yada 'y' ile başlayan VE 'm' yada 'f' ile biten "kelime" değerlerini çağırın.													  
   