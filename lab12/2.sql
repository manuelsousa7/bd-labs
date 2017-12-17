SELECT building_name,week_number,avg(reading)
from meter_readings natural join building_dimension natural join date_dimension
where week_number >= 50 
group by building_name,week_number;