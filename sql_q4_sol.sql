-- a list showing the number of substitutions that happened in various stages of
-- play for the entire tournament

select
  m.play_stage,
  count(*)
from player_in_out
left join match_mast m using (match_no)
where in_out = 'I'
group by m.play_stage