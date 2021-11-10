-- the number of captains who were also goalkeepers

select count(distinct player_id) as num_captain_goalkeepers
from player_mast p
join match_captain mc on p.player_id = mc.player_captain
where posi_to_play = 'GK'