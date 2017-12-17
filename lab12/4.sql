SELECT building_id,avg(reading)
from meter_readings
group by building_id
order by avg(reading) desc;