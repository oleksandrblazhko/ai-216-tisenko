CREATE TABLE operator
(
    operator_id INT PRIMARY KEY,
    operator_id INT REFERENCES operator(operator_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE customer
(
    customer_id INT PRIMARY KEY,
    email VARCHAR(30),
    CONSTRAINT check_email_domain CHECK (Email ~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$'),
    operator_id INT REFERENCES operator(operator_id),
    FOREIGN KEY (operator_id) REFERENCES operator(operator_id)
);

CREATE TABLE humidifier 
(
    humidifier_id INT PRIMARY KEY,
    name_h VARCHAR(30),
    price INT UNSIGNED,
    customer_id INT REFERENCES customer(customer_id)
);

CREATE TABLE user
(
    user_id INT PRIMARY KEY,
    name VARCHAR(30),
    surname VARCHAR(30),
    CONSTRAINT check_name CHECK (name NOT LIKE '%[^A-Za-z\-]%'),
    CONSTRAINT check_surname CHECK (surname NOT LIKE '%[^A-Za-z\-]%'),
    age INT UNSIGNED,
    num_card INT,
    CONSTRAINT chk_num_card_length CHECK (LENGTH(num_card::TEXT) = 16),
    valid_per DATE,
    CONSTRAINT CheckYear CHECK (YEAR(valid_per) >= 2023),
    cvv2 INT,
    CONSTRAINT chk_cvv2_length CHECK (LENGTH(cvv2::TEXT) = 3),
    customer_id INT UNIQUE,
    operator_id INT UNIQUE,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
    FOREIGN KEY (operator_id) REFERENCES operator(operator_id)
);
