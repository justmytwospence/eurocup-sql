-- a list showing the number of substitutions that happened in various stages of
-- play for the entire tournament

select
  match_mast.play_stage,
  count(*)
from player_in_out
left join match_mast using (match_no)
where in_out = 'I'
group by 1