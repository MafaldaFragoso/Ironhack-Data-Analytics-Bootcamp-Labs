CREATE TABLE cars (
car_id INT auto_increment primary key,
car_VIN INT,
manufacturer VARCHAR(20),
model_car VARCHAR(20),
year_car INT,
color_car VARCHAR(10)
);

CREATE TABLE salesperson (
salesperson_id INT auto_increment primary key,
staff_id CHAR(10),
staff_name VARCHAR(20),
store_name VARCHAR(20)
);

CREATE TABLE invoices (
invoices_id INT auto_increment primary key,
invoice_number CHAR(15),
invoice_date DATE,
number_cars INT,
number_customers INT,
number_staff INT
);

CREATE TABLE customers (
customers_id INT auto_increment primary key,
customer_id CHAR(10),
customer_name VARCHAR(20),
phone_number VARCHAR(20),
email VARCHAR(20),
adress VARCHAR(40),
city VARCHAR(20),
state VARCHAR(20),
country VARCHAR(20),
postal VARCHAR(10)
);