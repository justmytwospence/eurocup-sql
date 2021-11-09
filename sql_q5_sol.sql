-- the number of bookings that happened in stoppage time

select count(*)
from player_booked
where play_schedule = 'ST'