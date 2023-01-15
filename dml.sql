-- INSERT INTO TABLES
-- Inserting data into Salesperson table
INSERT INTO salesperson (
    first_name, last_name, phone_number
) VALUES (
    'Mike', 'Wiz', '555-555-5555'
),(
    'Emily', 'Smith', '555-555-5556'
);



CREATE OR REPLACE FUNCTION insert_salesperson(
        first_name VARCHAR(255),
        last_name VARCHAR(255),
        phone_number VARCHAR(255)
    )
RETURNS VOID
AS
$$ 
BEGIN
    INSERT INTO salesperson (
        first_name, last_name, phone_number
    ) VALUES (
        first_name, last_name, phone_number
    );
END;
$$ 
LANGUAGE plpgsql;


SELECT insert_salesperson('David', 'Jones', '555-555-5557');
SELECT insert_salesperson('Sam', 'Rivers', '555-555-5534');



-- Inserting data into Customer table
INSERT INTO customer (
    first_name, last_name, email
) VALUES (
    'Samantha', 'Meyer', 'meyers@gmail.com'
), (
    'Matt', 'Foyer', 'foyer3345@gmail.com'
);


CREATE OR REPLACE FUNCTION insert_customer(
        first_name VARCHAR(255),
        last_name VARCHAR(255),
        email VARCHAR(255)
    ) 
RETURNS VOID
AS 
$$ 
BEGIN
    INSERT INTO Customer (
        first_name, last_name, email
    ) VALUES (
        first_name, last_name, email
    );
END;
$$ 
LANGUAGE 
plpgsql;


SELECT insert_customer('Ralph', 'Fernandez', 'fernra@icloud.com');
SELECT insert_customer('Lauren', 'Benjamin', 'laurenb@hotmail.com');


-- Inserting data into Car table
INSERT INTO Car (
    Make, Model, Year, VIN
) VALUES (
    'Toyota', 'Camry', 2020, '123456789ABCDEFG'
),(
    'Honda', 'Civic', 2019, '23456789ABCDEFGH'
);


CREATE OR REPLACE FUNCTION insert_car(
        Make VARCHAR(255),
        Model VARCHAR(255),
        Year INT,
        VIN VARCHAR(255)
    ) 
RETURNS VOID
AS 
$$ 
BEGIN
    INSERT INTO Car (
        Make, Model, Year, VIN
    ) VALUES (
        Make, Model, Year, VIN
    );
END;
$$ 
LANGUAGE 
plpgsql;


SELECT insert_car('Ford', 'Mustang', 2021, '3456789ABCDEFGHI');
SELECT insert_car('Nissan', 'Altima', 2020, '456789ABCDEFGHIJ');


-- insert data into invoice table
INSERT INTO invoice (
        car_id,
        customer_id,
        salesperson_id,
        purchase_price
) VALUES (
    1, 1, 1, 25000
),(
    2, 2, 2, 30000
);

CREATE OR REPLACE FUNCTION insert_invoice(
        car_id INT,
        customer_id INT,
        salesperson_id INT,
        purchase_price INT
    ) 
RETURNS VOID
AS 
$$ 
BEGIN
    INSERT INTO invoice (
        car_id,
        customer_id,
        salesperson_id,
        purchase_price
    ) VALUES (
        car_id,
        customer_id,
        salesperson_id,
        purchase_price
    );
END;
$$
LANGUAGE
plpgsql;

SELECT insert_invoice(3, 3, 3, 35000);
SELECT insert_invoice(4, 4, 4, 28000);



-- Inserting data into repair table
INSERT INTO repair (
    repair_type, date_of_repair, car_id
) VALUES (
    'Oil Change', '2022-12-01', 1
),(
    'Tire Rotation', '2022-06-01', 2
);

CREATE OR REPLACE FUNCTION insert_repair(
        repair_type VARCHAR(255),
        date_of_repair DATE,
        car_id INT
    ) 
RETURNS VOID 
AS 
$$ 
BEGIN
    INSERT INTO repair (
            repair_type, date_of_repair, car_id
        ) VALUES (
            repair_type, date_of_repair, car_id
        );
END;
$$ 
LANGUAGE 
plpgsql;

SELECT insert_repair('Brake Repair', '2022-04-01', 3);
SELECT insert_repair('Wheel Balancing', '2022-09-01', 4);



-- Inserting data into Mechanic table
INSERT INTO Mechanic (
    first_name, last_name, phone_number
) VALUES (
    'Nick', 'Davis', '555-555-5558'
),(
    'Taylor', 'Peck', '555-555-5559'
);

-- Stored function to insert a mechanic
CREATE OR REPLACE FUNCTION insert_mechanic(
        first_name VARCHAR(255),
        last_name VARCHAR(255),
        phone_number VARCHAR(255)
) 
RETURNS VOID 
AS 
$$ 
BEGIN
    INSERT INTO mechanic (
        first_name, last_name, phone_number
    ) VALUES (
        first_name, last_name, phone_number
    );
END;
$$ 
LANGUAGE 
plpgsql;

-- Calling the stored function to insert a mechanic
SELECT insert_mechanic('Paul', 'Anderson', '555-555-5560');
SELECT insert_mechanic('Daniel', 'Green', '555-555-5561');