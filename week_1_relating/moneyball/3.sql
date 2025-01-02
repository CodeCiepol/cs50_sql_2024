SELECT "per"."HR", "per"."year" from "performances" "per"
LEFT JOIN "players" "pla"
    ON "pla"."id" = "per"."player_id"
WHERE "pla"."first_name" = "Ken"
AND "pla"."last_name" = "Griffey"
AND "pla"."birth_year" = 1969
ORDER BY year DESC;
