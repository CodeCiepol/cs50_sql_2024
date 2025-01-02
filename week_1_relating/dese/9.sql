SELECT dis.name  FROM districts dis
JOIN expenditures exp
    ON exp.district_id = dis.id
WHERE exp.pupils IN (
    SELECT MIN(pupils) FROM expenditures
);
