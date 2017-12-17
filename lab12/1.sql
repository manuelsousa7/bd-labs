--1

SELECT week_day_name , avg(reading) from meter_readings natural join date_dimension
group by week_day_name;

--2

SELECT building_name,week_number,avg(reading)
from meter_readings natural join building_dimension natural join date_dimension
where week_number >= 50 
group by building_name,week_number;

--3

(SELECT week_number,avg(reading)
from meter_readings natural join date_dimension
where week_number >= 50 
group by week_number)
union
(SELECT null,avg(reading)
from meter_readings natural join date_dimension
where week_number >= 50 );

--4

SELECT building_id,avg(reading)
from meter_readings
group by building_id
order by avg(reading) desc;


--5

(SELECT building_id,avg(reading)
from meter_readings
group by building_id
order by avg(reading) desc)
natural join
(SELECT null,avg(reading)
from meter_readings natural join date_dimension);


--6



--7 roll up 

(building_name,day_period,hour_of_day,avs(reading))
union (",",null,")
union (",null,null,")
union (null,null,null,")


-- 8 