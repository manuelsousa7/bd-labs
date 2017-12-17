(SELECT week_number,avg(reading)
from meter_readings natural join date_dimension
where week_number >= 50 
group by week_number)
union
(SELECT null,avg(reading)
from meter_readings natural join date_dimension
where week_number >= 50 );