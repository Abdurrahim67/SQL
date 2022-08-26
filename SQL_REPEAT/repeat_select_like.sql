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

--TASK-->Ismi A harfi ile baslayan personeli listele

select *from personel where isim ilike 'a%';
select*from personel where isim ~~* 'a%';

-- TASK-->Ismi t harfi ile biten personeli listele
select*from personel where isim like '%t';
select *from personel where isim ~~ '%t';
select *from personel where isim ~~* '%t';

-- TASK-->2.harfi e harfi olan personeli listele

select*from personel where isim ilike '_e%';
select *from personel where isim ~~ '_e%';
select *from personel where isim ~~* '_e%';

-- TASK-->3.harfi V harfi olan personeli listele
select*from personel where isim ilike '__v%';
select*from personel where isim ~~ '__v%';
select*from personel where isim ~~* '__v%';


-- TASK-->'a' ile baslayip 'n' ilen  personeli listele
select*from personel where isim ilike 'a%n';
select*from personel where isim ~~* 'a%n';

-- Task-->ikinci karakteri 'a' ve dördüncü karakteri 'u' olan personel isimlerini listeleyiniz
select*from personel where isim ilike '_a_u%';
select*from personel where isim ~~* '_a_u%';

-- Task --> İçinde 'e' ve 'r' bulunan personel isimlerini listeleyiniz
select isim from personel where isim ~~* '%e%' and isim ~~* '%r%';
select isim from personel where isim ilike '%e%r%';

-- Task -->2. harfi e olup diğer harflerinde y olan personeli listeleyiniz

select *from personel where isim ilike '_e%y%';
select *from personel where isim ~~* '_e%y%';

-- Task -->a harfi olmayan personeli listeleyin
select*from personel where isim not ilike '%a%';
select*from personel where isim !~~* '%a%';


--Task --> 1. harfi A ve 7. harfi a olan personeli listeleyin
select*from personel where isim like 'A_____a%';
select*from personel where isim ~~ 'A_____a%';

--Task -->Sondan ikinci karakteri 'r' olan "isim" değerlerini listeleyiniz.
select isim from  personel where isim ilike '%r_';
select isim from  personel where isim ~~*'%r_';



