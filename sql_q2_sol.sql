-- the number of matches that were won by penalty shootout

select count(*)
from match_mast
where decided_by = 'P'