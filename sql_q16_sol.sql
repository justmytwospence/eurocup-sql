-- referees and the number of matches they worked in each venue.

select
  referee_name,
  venue_name,
  count(match_no) as num_matches
from referee_mast r
left join match_mast m using (referee_id)
left join soccer_venue using (venue_id)
group by referee_name, venue_name
order by num_matches desc