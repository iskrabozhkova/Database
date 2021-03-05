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
select o1.ship 
from outcomes o1
	join battles b1 on o1.battle=b1.name
	join outcomes o2 on o1.ship=o2.ship
	join battles b2 on o2.battle=b2.name
where b1.date < b2.date AND o1.result = 'damaged';
