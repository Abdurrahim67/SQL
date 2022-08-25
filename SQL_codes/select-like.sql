/*
SELECT - LIKE koşulu
LIKE : Sorgulama yaparken belirli(pattern) kalıp ifadeleri kullanabilmemizi sağlar
ILIKE : Sorgulama yaparken büyük/küçük harfe duyarsız olarak eşleştirir
LIKE : ~~
ILIKE : ~~*
NOT LIKE : !~~
NOT ILIKE :!~~*
% --> 0 veya daha fazla karakteri belirtir.
_ --> Tek bir karakteri belirtir
*/

select *from personel;

--TASK-->Ismi A harfi ile baslayan personeli listele
select*from personel where isim like 'A%';

-- TASK-->Ismi t harfi ile biten personeli listele
select*from personel where isim like '%t';

-- TASK-->2.harfi e harfi olan personeli listele
select *from personel where isim ilike '_E%';

-- TASK-->3.harfi V harfi olan personeli listele
select *from personel where isim ilike '__V%';

-- TASK-->'a' ile baslayip 'n' ilen  personeli listele
select *from personel where isim ilike 'a%n';

-- Task-->ikinci karakteri 'a' ve dördüncü karakteri 'u' olan personel isimlerini listeleyiniz
select *from personel where isim ilike '_a_u%';
select *from personel where isim ~~* '_a_u%';

-- Task --> İçinde 'e' ve 'r' bulunan personel isimlerini listeleyiniz
select *from personel where isim ilike '%e%r%';
select * from personel where isim ~~*'%e%' and isim ~~* '%r%'; 

-- Task -->2. harfi e olup diğer harflerinde y olan personeli listeleyiniz
select * from personel WHERE isim like '_e%y%';


-- Task -->a harfi olmayan personeli listeleyin
select *from personel where isim !~~* '%a%';
select * from personel where isim not like '%a%'

--Task --> 1. harfi A ve 7. harfi a olan personeli listeleyin
select * from personel where isim ~~* 'A_____a%';



--Task -->Sondan ikinci karakteri 'r' olan "isim" değerlerini listeleyiniz.
select * from personel where isim like '%r_';

