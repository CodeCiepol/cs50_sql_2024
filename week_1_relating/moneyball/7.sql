SELECT play.first_name, play.last_name FROM players play
INNER JOIN salaries sal
    ON sal.player_id = play.id
ORDER BY sal.salary DESC
LIMIT 1;

