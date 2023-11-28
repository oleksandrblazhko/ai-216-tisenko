DECLARE
    v_result BOOLEAN;
BEGIN
    v_result := pay_humidifier('Humudifier_x1131g', 500);

    IF v_result THEN
        DBMS_OUTPUT.PUT_LINE(':)');
        DBMS_OUTPUT.PUT_LINE('Оплата успішно проведена!');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Зволожувач не знайдено!');
    END IF;
END;
/