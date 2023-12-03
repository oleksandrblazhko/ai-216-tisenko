CREATE OR REPLACE TYPE User_ AS OBJECT (
    num_card INT,        
    valid_per VARCHAR(10),       
    cvv2 INT,
    name_ VARCHAR(30),
    surname VARCHAR(30),
    NOT FINAL MEMBER PROCEDURE display
) NOT FINAL 
/

CREATE OR REPLACE TYPE Customer UNDER User_ (
    email VARCHAR(30),      
    OVERRIDING MEMBER PROCEDURE display
); 
/

CREATE OR REPLACE TYPE Operator AS OBJECT (
    MEMBER PROCEDURE display
); 
/

CREATE OR REPLACE TYPE Humidifier AS OBJECT (
    name_h VARCHAR(30),
    price FLOAT,
    MEMBER PROCEDURE display
); 
/


