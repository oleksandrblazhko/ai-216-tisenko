
CREATE TABLE operator
(
    operator_id INT PRIMARY KEY
);

CREATE TABLE customer
(
    customer_id INT PRIMARY KEY,
    email VARCHAR(30),
    operator_id INT,
    FOREIGN KEY (operator_id) REFERENCES operator(operator_id),
    CONSTRAINT check_email_domain CHECK (email REGEXP '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$')
);

CREATE TABLE humidifier 
(
    humidifier_id INT PRIMARY KEY,
    name_h VARCHAR(30),
    price INT UNSIGNED,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE user
(
    user_id INT PRIMARY KEY,
    name VARCHAR(30),
    surname VARCHAR(30),
    age INT,
    num_card BIGINT, 
    valid_per DATE,
    cvv2 INT,
    customer_id INT UNIQUE,
    operator_id INT UNIQUE,
    CHECK (age > 0 AND age < 125),
    CHECK (LENGTH(num_card) = 16),
    CHECK (YEAR(valid_per) >= 2023),
    CHECK (LENGTH(cvv2) = 3),
    CHECK (name REGEXP '^[A-Za-z\\-]+$'),
    CHECK (surname REGEXP '^[A-Za-z\\-]+$'),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (operator_id) REFERENCES operator(operator_id)
);

