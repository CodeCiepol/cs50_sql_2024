SELECT sch.name, sch.state, gr.excluded FROM schools sch
JOIN graduation_rates gr
    ON gr.school_id = sch.id
WHERE sch.type = 'Public School'
ORDER BY gr.excluded DESC
LIMIT 10;
