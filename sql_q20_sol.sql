-- the substitute players who came into the field in the first half of play,
-- within a normal play schedule

select player_mast.player_name
from player_in_out
left join player_mast using (player_id)
where in_out = 'I'
  and play_half = 1
  and play_schedule = 'NT'