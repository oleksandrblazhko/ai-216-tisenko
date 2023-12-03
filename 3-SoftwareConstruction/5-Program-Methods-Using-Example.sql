DECLARE
    v_result INT;
BEGIN
    v_result := validate_credit_card(5375411411769305, 1124, 444);

    IF v_result IS -1 THEN
        DBMS_OUTPUT.PUT_LINE('Некоректні дані');
    ELSE IF v_result = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Оплата пройшла невдало, перевірте баланс картки');
    ELSE IF v_result = 1 THEN
        DBMS_OUTPUT.PUT_LINE('Оплата пройшла успішно!');
    END IF;
END;
/