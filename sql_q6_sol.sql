-- the number of matches that were won by a single point, but do not include
-- matches decided by penalty shootout

with wins as (
  select *
  from match_details
  where win_lose = 'W'
),

losses as (
  select *
  from match_details
  where win_lose = 'L'
)

select count(*)
from wins w join losses l using (match_no)
where (w.goal_score - l.goal_score) = 1