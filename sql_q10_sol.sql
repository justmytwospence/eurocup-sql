-- all available information about the players under contract to Liverpool F.C.
-- playing for England in EURO Cup 2016

select c.country_name, p.*
from player_mast p
left join soccer_country c on p.team_id = c.country_id
where playing_club like 'Liverpool%'
  and country_name = 'England'