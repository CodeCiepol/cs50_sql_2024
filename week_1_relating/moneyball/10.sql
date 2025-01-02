SELECT pl.first_name, pl.last_name, sal.salary, perf.HR, perf.year FROM players pl
JOIN salaries sal
    ON sal.player_id = pl.id
JOIN performances perf
    ON perf.player_id = pl.id
        AND perf.year = sal.year
ORDER BY pl.id ASC, perf.year DESC, perf.HR DESC, sal.salary DESC;




