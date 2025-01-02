SELECT dis.name, exp.pupils FROM districts dis
JOIN expenditures exp
    ON exp.district_id = dis.id;
