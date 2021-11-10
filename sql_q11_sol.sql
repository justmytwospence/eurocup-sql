-- the players, their jersey number, and playing club who were the goalkeepers
-- for England in EURO Cup 2016

select
  player_name,
  jersey_no,
  playing_club
from player_mast p
join soccer_country c on p.team_id = c.country_id
where posi_to_play = 'GK'
  and c.country_name = 'England'