-- the referees who booked the most number of players

select
  referee_name,
  count(distinct player_id) num_players_booked
from referee_mast r
left join match_mast m using (referee_id)
left join player_booked b using (match_no)
group by 1
order by num_players_booked desc
