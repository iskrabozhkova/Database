use movies;

--1
(select starname
from starsin
where MOVIETITLE = 'The Usual Suspects')

INTERSECT

(select name
from moviestar
where gender = 'M'
)

--2
select distinct starname
from starsin, movie
where movieyear = '1995' and studioname = 'MGM'

--3
select distinct name
from movieexec, movie
where STUDIONAME = 'MGM' and cert# = PRODUCERC#;

--4
select m1.title
from movie AS m1, movie AS m2
where m2.title = 'Star Wars' and m1.length > m2.length;

--5
select n1.name
from MOVIEEXEC AS n1, MOVIEEXEC AS n2
where n2.name = 'Stephen Spielberg' and n1.NETWORTH > n2.NETWORTH;

--6
select title
from movie, MOVIEEXEC AS n1, MOVIEEXEC AS n2
where n2.name = 'Stephen Spielberg' and n1.NETWORTH > n2.NETWORTH and MOVIE.PRODUCERC# = n1.CERT#;
