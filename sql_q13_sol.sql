-- all the defenders who scored a goal for their teams

select
  player_name
from player_mast
join goal_details using (player_id)
where posi_to_play = 'DF'