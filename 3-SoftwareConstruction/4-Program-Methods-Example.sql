CREATE OR REPLACE PROCEDURE validate_credit_card (
    p_num_card IN VARCHAR2,
    p_valid_per IN NUMBER,
    p_cvv2 IN VARCHAR2,
    p_answer OUT NUMBER
)
AS
    l_num_card_length NUMBER := LENGTH(p_num_card);
    l_valid_per_mod NUMBER := MOD(p_valid_per, 100);
BEGIN
    -- Перевірка num_card
    IF l_num_card_length <> 16 OR NOT luhn_algorithm(p_num_card) THEN
        p_answer := -1; -- Порушення умов для num_card
        RETURN;
    END IF;

    -- Перевірка valid_per
    IF p_valid_per < 100 OR p_valid_per >= 1300 OR l_valid_per_mod < 23 THEN
        p_answer := -1; -- Порушення умов для valid_per
        RETURN;
    END IF;

    -- Перевірка cvv2
    IF LENGTH(p_cvv2) <> 3 THEN
        p_answer := -1; -- Порушення умов для cvv2
        RETURN;
    END IF;

    -- Всі умови виконані
    p_answer := 1;
EXCEPTION
    WHEN OTHERS THEN
        p_answer := 0; -- Якщо виникає помилка, повертаємо 0
END validate_credit_card;
/

CREATE OR REPLACE FUNCTION luhn_algorithm (p_num_card IN VARCHAR2) RETURN BOOLEAN
AS
    l_sum NUMBER := 0;
BEGIN
    FOR i IN REVERSE 1..LENGTH(p_num_card) LOOP
        l_sum := l_sum + TO_NUMBER(SUBSTR(p_num_card, i, 1)) * CASE WHEN i MOD 2 = 0 THEN 1 ELSE 2 END;
    END LOOP;

    RETURN MOD(l_sum, 10) = 0;
END luhn_algorithm;
/
