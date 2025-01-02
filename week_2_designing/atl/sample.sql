INSERT INTO passengers ("first_name", "last_name", "age")
VALUES
('Amelia','Earhart',39);

INSERT INTO airlines ("name", "concourse")
VALUES
('Delta', 'A,B,C,D,T');

INSERT INTO flights ("flight_number", "airline_id", "departing_code", "heading_code", "expected_departure", "expected_arrivaL")
VALUES
(300, 1, 'ATL', 'BOS', '2023-08-03 18:46', '2023-08-03 21:09');

INSERT INTO check_ins ("passenger_id", "flight_id", "datetime")
VALUES
(1,1,'2023-08-03 15:03');
