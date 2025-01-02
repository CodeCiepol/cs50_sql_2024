-- In 10.sql, write SQL query to answer a question of your choice. This query should:
--  Make use of AS to rename a column
--  Involve at least condition, using WHERE
--  Sort by at least one column using ORDER BY

SELECT first_name AS "Imię", last_name AS "Nazwisko" FROM players
WHERE debut = final_game
ORDER BY first_name;
