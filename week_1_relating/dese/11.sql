SELECT sch.name, exp.per_pupil_expenditure, gr.graduated FROM expenditures exp
JOIN districts dis
    ON dis.id = exp.district_id
JOIN schools sch
    ON sch.district_id = dis.id
JOIN graduation_rates gr
    ON gr.school_id = sch.id
ORDER BY exp.per_pupil_expenditure DESC, sch.name;
