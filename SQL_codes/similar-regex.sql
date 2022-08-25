-- SELECT - SIMILAR TO - REGEX(Regular Expressions) --
/*
SIMILAR TO : Daha karmaşık pattern(kalıp) ile sorgulama işlemi için SIMILAR TO kullanılabilir.
Sadece PostgreSQL de kullanılır. Büyük Küçük harf önemlidir.

REGEX : Herhangi bir kod, medin içerisinde istenen yazı veya kod parçasının aranıp bulunmasını sağlayan
kendine ait bir söz dizimi olan bir yapıdır.MySQL de(REGEXP_LİKE) olarak kullanılır
PostgreSQL'de "~" karakteri ile kullanılır.

-- Veya işlemi için | karakteri kullanılır
*/

CREATE TABLE kelimeler
(
id int,
kelime VARCHAR(50),
harf_sayisi int
);

   INSERT INTO kelimeler VALUES (1001, 'hot', 3);
   INSERT INTO kelimeler VALUES (1002, 'hat', 3);
   INSERT INTO kelimeler VALUES (1003, 'hit', 3);
   INSERT INTO kelimeler VALUES (1004, 'hbt', 3);
   INSERT INTO kelimeler VALUES (1005, 'hct', 3);
   INSERT INTO kelimeler VALUES (1006, 'adem', 4);
   INSERT INTO kelimeler VALUES (1007, 'selim', 5);
   INSERT INTO kelimeler VALUES (1008, 'yusuf', 5);
   INSERT INTO kelimeler VALUES (1009, 'hip', 3);
   INSERT INTO kelimeler VALUES (1010, 'HOT', 3);
   INSERT INTO kelimeler VALUES (1011, 'hOt', 3);
   INSERT INTO kelimeler VALUES (1012, 'h9t', 3);
   INSERT INTO kelimeler VALUES (1013, 'hoot', 4);
   INSERT INTO kelimeler VALUES (1014, 'haaat', 5);
   INSERT INTO kelimeler VALUES (1015, 'hooooot', 5);
   INSERT INTO kelimeler VALUES (1016, 'booooot', 5);
   INSERT INTO kelimeler VALUES (1017, 'bolooot', 5)
   
 select * from kelimeler;
 
 --Task--> İçerisinde 'ot' veya 'at' bulunan kelimeleri listeleyiniz
 
--SIMILAR TO ile
select * from kelimeler where kelime similar to '%(at|ot|At|aT|Ot|oT|AT|OT)%';
--LIKE ile
select * from kelimeler where kelime ilike '%ot%' or kelime ilike '%at%';
select * from kelimeler where kelime ~~* '%ot%' or kelime ~~* '%at%';
--REGEX ile
select * from kelimeler where kelime ~* 'ot' or kelime ~* 'at';

 
-- Task--> 'ho' veya 'hi' ile başlayan kelimeleri listeleyeniz

--SIMILAR TO ile
select * from kelimeler where kelime similar to 'ho%|hi%';
--LIKE ile
select * from kelimeler where kelime ~~* 'ho%' or kelime ~~*'hi%';
--REGEX ile
select *from kelimeler where kelime ~* 'h[oi](.*)'; --Regex'te ".(nokta)" bir karakteri temsil eder"
--Regex'de ikinci karakter icin köseli parantez kullanilir.
 
 --Sonu 't' veya 'm' ile bitenleri listeleyeniz
 
 
 --SIMILAR TO ile
select * from kelimeler where kelime similar to '%t|%m';
 --LIKE ile
 select * from kelimeler where kelime ~~* '%t' or kelime ~~*'%m';
 --REGEX ile
select * from kelimeler where kelime ~* '(.*)[tm]$' -- $ karakteri bitişi gösterir


--h ile başlayıp t ile biten 3 harfli kelimeleri listeleyeniz
--SIMILAR TO ile
select * from kelimeler where kelime similar to 'h[a-z,A-Z,0-9]t';
-- LIKE ile
select * from kelimeler where kelime ~~* 'h_t';
-- REGEX ile
select * from kelimeler where kelime ~* 'h[a-z,A-Z,0-9]t'




--İlk karakteri 'h', son karakteri 't' ve ikinci karakteri 'a'dan 'e'ye herhangi bir karakter olan
--“kelime" değerlerini çağırın

--SIMILAR to ile
Select kelime from kelimeler where kelime similar to 'h[a-e]%t'
-- REGEX ile
select kelime from kelimeler where kelime ~* 'h[a-e](.*)t'

--İlk karakteri 's', 'a' veya 'y' olan "kelime" değerlerini çağırın.
select * from kelimeler where kelime ~ '^[say](.*)' -- ^ başlangıç'ı temsil eder

--Son karakteri 'm', 'a' veya 'f' olan "kelime" değerlerini çağırın.

select * from kelimeler where kelime ~ '^(.*)[maf]$';
select * from kelimeler where kelime ~ '[maf]$';
 
 --İlk harfi h, son harfi t olup 2.harfi a veya i olan 3 harfli kelimelerin tüm bilgilerini sorgulayalım.
 
select *from kelimeler where kelime similar to 'h[a|i]t';
 
select * from kelimeler where kelime ~ 'h[a|i]t$';
 
--İlk harfi 'b' den ‘s' ye bir karakter olan ve ikinci harfi herhangi bir karakter olup
--üçüncü harfi ‘l' olan “kelime" değerlerini çağırın.

 -- REGEX ile
select kelime from kelimeler where kelime ~'^[b-s].l(.*)';
 --SIMILAR to ile
select*from kelimeler where kelime similar to '[b-s]_l%';
 
 --içerisinde en az 2 adet oo barıdıran kelimelerin tüm bilgilerini listeleyiniz.
 
select*from kelimeler where kelime  ~~* '%o%o%';
select*from kelimeler where kelime similar to '%[o][o]%';
select*from kelimeler where kelime similar to '%[o]{2}%'; --süslü parantez icersinide belirttigimk rakam bir önceki parantez icinde 
														  --kac tane oldugunu belirtir
														  
														  
														  
--içerisinde en az 4 adet oooo barıdıran kelimelerin tüm bilgilerini listeleyiniz.														  
select*from kelimeler where kelime similar to '%[o]{4}%';													  
														  
														  
--'a', 's' yada 'y' ile başlayan VE 'm' yada 'f' ile biten "kelime" değerlerini çağırın.													  
SELECT kelime FROM kelimeler WHERE kelime ~ '^[a|s|y](.*)[m|f]$';									  
   