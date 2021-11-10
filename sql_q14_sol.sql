-- referees and the number of bookings they made for the entire tournament. Sort
-- your answer by the number of bookings in descending order.

select
  referee_name,
  count(*) as bookings
from referee_mast r
left join match_mast m using (referee_id)
left join player_booked b using (match_no)
group by 1
order by 2 desc