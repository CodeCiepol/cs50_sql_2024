SELECT MAX(sal.salary) FROM salaries sal
WHERE sal.player_id = (SELECT perf.player_id FROM performances perf
    WHERE perf.year = 2001
    GROUP BY perf.player_id
    ORDER BY SUM(perf.HR) DESC
    LIMIT 1)
AND sal.year = 2001;
