CREATE OR REPLACE FUNCTION pay_humidifier (
    f_name_h IN VARCHAR2,
    f_price IN INT
)
RETURN BOOLEAN IS
    v_name_h humidifier.name_h%Type := upper(f_name_h);
    v_price humidifier.price%Type := f_price;
    v_humidifier_id humidifier.humidifier_id%Type;
BEGIN
    IF LENGTH(v_name_h) > 30 THEN
        RETURN FALSE;

    END IF;
    BEGIN
        SELECT humidifier_id INTO v_humidifier_id FROM humidifier WHERE TRIM (upper(name)) = v_name_h AND price = v_price;
        RETURN TRUE;
    EXCEPTION WHEN NO_DATA_FOUND THEN
        RETURN FALSE;
    END;
END;
/