SELECT teams.name, SUM(perf.H) AS "total hits" FROM performances as perf
INNER JOIN teams
    ON teams.id = perf.team_id
WHERE perf.year = 2001
GROUP BY perf.team_id
ORDER BY "total hits" DESC
LIMIT 5;
