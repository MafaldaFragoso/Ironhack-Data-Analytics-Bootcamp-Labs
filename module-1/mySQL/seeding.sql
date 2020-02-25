INSERT INTO cars (car_VIN, manufacturer, model_car, year_car, color_car)
VALUES
('12345', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
('12346', 'Peugeot', 'Rifter', 2019, 'Red'),
('12347', 'Ford', 'Fusion', 2018, 'White')
;

INSERT INTO customers (customer_id, customer_name, phone_number, email, adress, city, state, country, postal)
VALUES
('10001', 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('20001', 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008')
;

INSERT INTO invoices (invoice_number, invoice_date, number_cars, number_customers, number_staff)
VALUES
('852399038', '2018-08-22', 0, 1, 3),
('731166526', '2018-12-31', 3, 0, 5),
('271135104', '2019-01-22', 2, 2, 7)
;

INSERT INTO salesperson (staff_id, staff_name, store_name)
VALUES
('1001', 'Petey Cruiser', 'Madrid'),
('1002', 'Anna Sthesia', 'Barcelona'),
('1003', 'Paul Molive', 'Berlin'),
('1004', 'Gail Forcewind', 'Paris'),
('1005', 'Paige Turner', 'Mimia'),
('1006', 'Bob Frapples', 'Mexico City'),
('1007', 'Walter Melon', 'Amsterdam'),
('1007', 'Shonda Leer', 'São Paulo')
;
