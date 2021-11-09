-- all the venues where matches with penalty shootouts were played

select distinct venue_name
from match_mast
left join soccer_venue using (venue_id)
where match_no in (
  select distinct match_no
  from penalty_shootout
)
