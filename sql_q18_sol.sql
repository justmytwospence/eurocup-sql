-- the highest number of foul cards given in one match

with num_foul_cards as (
  select
    match_no,
    count(*) as num_foul_cards
  from player_booked
  group by match_no
)

select max(num_foul_cards) as max_foul_cards
from num_foul_cards