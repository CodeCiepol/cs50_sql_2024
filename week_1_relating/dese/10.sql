SELECT DISTINCT(dis.name), exp.per_pupil_expenditure FROM expenditures exp
-- SELECT * FROM expenditures exp
JOIN districts dis
    ON dis.id = exp.district_id
JOIN schools sch
    ON sch.district_id = dis.id
WHERE sch.type = 'Public School'
ORDER BY exp.per_pupil_expenditure DESC
LIMIT 10;

