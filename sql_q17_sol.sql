-- the country where the most assistant referees come from, and the count of the
-- assistant referees

select
  country_name,
  count(ass_ref_id) as num_referee
from asst_referee_mast
left join soccer_country using (country_id)
group by country_name
order by num_referee desc