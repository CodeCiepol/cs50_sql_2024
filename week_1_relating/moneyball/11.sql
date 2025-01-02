SELECT DISTINCT pl.first_name, pl.last_name, sal.salary/perf.H AS "dollars per hit" FROM players pl
JOIN performances perf
    ON perf.player_id = pl.id
JOIN salaries sal
    ON (sal.player_id = pl.id AND
        sal.year = perf.year
    )
WHERE perf.year = 2001
AND perf.H > 0
ORDER BY "dollars per hit", pl.first_name, pl.last_name
LIMIT 10;
