
CREATE VIEW june_vacancies AS
SELECT a.id, a.property_type, a.host_name, COUNT(a.id) days_vacant FROM available a
WHERE a.date >= '2023-06-01'
    AND a.date < '2023-07-01'
GROUP BY a.id;
