use movies;

--1
select address
from studio
where name = 'Disney'

--2
select birthdate
from moviestar
where name = 'Jack Nicholson'

--3
select starname
from starsin
where movieyear = '1980' OR movietitle = 'Knight'

--4
select name
from MOVIEEXEC
where NETWORTH > 10000000

--5
select name
from MOVIESTAR
where gender =  'M' OR ADDRESS = 'Perfect Rd'
