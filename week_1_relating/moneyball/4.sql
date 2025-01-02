SELECT play.first_name, play.last_name, sal.salary FROM players play
INNER JOIN salaries sal
    ON sal.player_id = play.id
WHERE sal.year = 2001
ORDER BY sal.salary, play.first_name, play.last_name, play.id
LIMIT 50;
