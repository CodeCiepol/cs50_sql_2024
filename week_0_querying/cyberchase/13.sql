SELECT season, COUNT(title) AS 'number of episodes' FROM episodes
WHERE title LIKE 'The%' Or title LIKE 'A%'
GROUP BY SEASON;
