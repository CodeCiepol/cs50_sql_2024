SELECT DISTINCT(teams.name) FROM performances perf
INNER JOIN players play
    ON play.id = perf.player_id
INNER JOIN teams
    ON teams.id = perf.team_id
WHERE play.first_name = 'Satchel'
AND play.last_name = 'Paige';

