
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
select*from actor

--TASK-->Ismi e harfi ile baslayan personeli listele
select *from actor where first_name ilike 'e%';
-- TASK-->Ismi t harfi ile biten personeli listele
select*from actor where last_name ilike '%t';

-- TASK-->2.harfi i harfi olan personeli listele
select*from actor where first_name ilike '_i%';

-- TASK-->3.harfi b harfi olan personeli listele
select*from actor where first_name ~~* '__b';

-- TASK-->'g' ile baslayip 'e' ilen  personeli listele
select*from actor where first_name ~~* 'g%e';

-- Task-->ikinci karakteri 'u' ve dördüncü karakteri 'i' olan personel isimlerini listeleyiniz
select*from actor where first_name ~~* '_u_i%';

-- Task --> İçinde 'h' ve 'r' bulunan personel isimlerini listeleyiniz
select*from actor where first_name ~~* '%h%r%';

-- Task -->4. harfi n olup diğer harflerinde y olan personeli listeleyiniz
select*from actor where first_name ~~* '___n%y%';

-- Task -->a harfi olmayan personeli listeleyin
select*from actor where first_name !~~* '%a%';
select*from actor where first_name not ilike '%a%';

--Task --> 3. harfi s ve 5. harfi i olan personeli listeleyin
select*from actor where first_name ilike  '__s_i%';

--Task -->Sondan ikinci karakteri 'r' olan "isim" değerlerini listeleyiniz.
select*from actor where first_name ilike '%r_';

