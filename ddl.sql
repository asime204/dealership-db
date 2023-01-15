-- CREATE TABLES
CREATE TABLE salesperson (
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    phone_number VARCHAR(255) NOT NULL
);

CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE car (
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(255) NOT NULL,
    model VARCHAR(255) NOT NULL,
    Year INT NOT NULL,
    VIN VARCHAR(255) NOT NULL
);

CREATE TABLE invoice (
    invoice_id SERIAL PRIMARY KEY,
    purchase_price INT NOT NULL,
    car_id INT REFERENCES car(car_id),
    customer_id INT REFERENCES customer(customer_id),
    salesperson_id INT REFERENCES salesperson(salesperson_id)  
);

CREATE TABLE repair (
    repair_id SERIAL PRIMARY KEY,
    repair_type VARCHAR(255) NOT NULL,
    date_of_repair DATE NOT NULL,
    car_id INT REFERENCES car(car_id)
);

CREATE TABLE repair_mechanic (
    repair_mechanic_id SERIAL PRIMARY KEY,
    repair_id INT REFERENCES repair(repair_id),
    mechanic_id INT REFERENCES mechanic(mechanic_id)
);

CREATE TABLE mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    phone_number VARCHAR(255) NOT NULL
);
