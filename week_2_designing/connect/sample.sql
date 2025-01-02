INSERT INTO "users" (id, first_name, username, password)
VALUES
(1, 'Alan Garber', 'alan', 'password'),
(2, 'Reid Hoffman', 'reid', 'password');

INSERT INTO "schools_and_unis" (id, name, type, location, year)
VALUES
(1, 'Harvard University', 'university', 'Cambridge, Massachusetts', 1636);

INSERT INTO "companies" (id, name, industry, location)
VALUES
(1, 'LinkedIn', 'technology', 'Sunnyvale, California');

INSERT INTO "users_schools_conn" (id, user_id, school_id, start_affiliation, end_affiliation, degree)
VALUES
(1, 1, 1, '1973-09-01', '1976-06-01', 'BA');

INSERT INTO "users_companies_conn" (id, user_id, company_id, start_affiliation, end_affiliation)
VALUES
(1, 2, 1, '2003-01-01', '2007-02-01');
