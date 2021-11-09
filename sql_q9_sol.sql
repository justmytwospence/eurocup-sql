--  the goalkeeper’s name and jersey number, playing for Germany, who played in
--  Germany’s group stage matches

select distinct player_name, jersey_no
from match_details m
join soccer_country c on m.team_id = c.country_id
join player_mast p on m.player_gk = p.player_id
where play_stage = 'G'
  and country_name = 'Germany'
