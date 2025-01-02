SELECT pl.first_name, pl.last_name FROM players pl
WHERE pl.id IN (
    SELECT pl.id FROM players pl
    WHERE pl.id IN (
        SELECT DISTINCT pl.id FROM players pl
        JOIN performances perf
            ON perf.player_id = pl.id
        JOIN salaries sal
            ON (sal.player_id = pl.id AND
                sal.year = perf.year
            )
        WHERE perf.year = 2001
        AND perf.H > 0
        ORDER BY sal.salary/perf.H, pl.first_name, pl.last_name
        LIMIT 10
        )

    INTERSECT

    SELECT pl.id FROM players pl
    WHERE pl.id IN (
        SELECT DISTINCT pl.id FROM players pl
        JOIN performances perf
            ON perf.player_id = pl.id
        JOIN salaries sal
            ON (sal.player_id = pl.id AND
                sal.year = perf.year
            )
        WHERE perf.year = 2001
        AND perf.RBI > 0
        ORDER BY sal.salary/perf.RBI, pl.first_name, pl.last_name
        LIMIT 10
        )
    ORDER BY pl.id
    );
