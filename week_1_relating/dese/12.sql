SELECT dis.name, exp.per_pupil_expenditure, se.exemplary FROM districts dis
JOIN staff_evaluations se
    ON se.district_id = dis.id
JOIN expenditures exp
    ON exp.district_id = dis.id
WHERE dis.type = 'Public School District'
AND se.exemplary > (
    SELECT AVG(se.exemplary) FROM staff_evaluations se
    JOIN districts dis
        ON dis.id = se.district_id
    JOIN expenditures exp
        ON exp.district_id = se.district_id
    WHERE dis.type = 'Public School District'
    AND exp.per_pupil_expenditure IS NOT NULL
)
AND exp.per_pupil_expenditure > (
    SELECT AVG(exp.per_pupil_expenditure) FROM expenditures exp
    JOIN districts dis
        ON dis.id = exp.district_id
    JOIN staff_evaluations se
        on se.district_id = exp.district_id
    WHERE dis.type = 'Public School District'
    AND se.exemplary IS NOT NULL
)
ORDER BY se.exemplary DESC, exp.per_pupil_expenditure DESC;
