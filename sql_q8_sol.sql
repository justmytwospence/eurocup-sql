-- the match number for the game with the highest number of penalty shots, and
-- which countries played that match

with penalty_shots as (
  select match_no, count(kick_id) as penalty_shootouts
  from penalty_shootout
  group by 1
  order by 2 desc
  limit 1
)

select
  match_no,
  team_id,
  penalty_shootouts
from match_details
join penalty_shots using (match_no)