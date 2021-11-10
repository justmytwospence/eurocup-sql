-- the total number of goals scored by each position on each country’s team. Do
-- not include positions which scored no goals

select
  c.country_name,
  p.posi_to_play,
  count(goal_id) as num_goals
from goal_details g
left join player_mast p using (player_id)
left join soccer_country c on p.team_id = c.country_id
group by c.country_name, p.posi_to_play
order by c.country_name, p.posi_to_play