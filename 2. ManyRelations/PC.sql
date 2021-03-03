use pc;

--1
select distinct maker, speed
from product, laptop
where hd > 9 and laptop.model = product.model;

--2
(select product.model, price
from laptop, product
where maker = 'B' and product.model = laptop.model)
UNION
(select product.model, price
from printer, product
where maker = 'B' and product.model = printer.model)
UNION
(select product.model, price
from pc, product
where maker = 'B' and product.model = pc.model)

--3
(select maker
from product
where type = 'Laptop')

EXCEPT

(select maker
from product
where type = 'PC')

--4
select distinct pc1.hd
from pc AS pc1, pc AS pc2
where pc1.code != pc2.code and pc1.hd = pc2.hd;

--5
select distinct pc1.model, pc2.model
from pc AS pc1, pc AS pc2
where pc1.speed = pc2.speed and pc1.ram = pc2.ram and pc1.model > pc2.model



