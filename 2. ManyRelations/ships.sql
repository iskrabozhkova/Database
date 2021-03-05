use ships;

--1
select name
from ships join classes on (ships.CLASS = CLASSES.class)
where  DISPLACEMENT > 50000;

--2
select ships.name, displacement, numguns
from ships join classes on (ships.CLASS = CLASSES.class)
	   join outcomes on (outcomes.SHIP = ships.NAME)
where battle = 'Guadalcanal';

--3
(select country
from classes
where type = 'bb')

INTERSECT

(select country
from classes
where type = 'bc')

--4
select o2.SHIP
from outcomes o1, outcomes o2, battles b1, battles b2
where o1.RESULT = 'damaged' and
	b1.DATE < b2.DATE and 
	o1.SHIP = o2.SHIP and
	b1.NAME = o1.BATTLE and b2.NAME = o2.BATTLE
