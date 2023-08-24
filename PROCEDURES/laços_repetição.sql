DECLARE
    num NUMBER;
    i NUMBER;
BEGIN
    num := &numero;
    i := 1;

    -- DBMS_OUTPUT.PUT_LINE('TABUADA MANUAL');
    -- DBMS_OUTPUT.PUT_LINE(num||' * 1 = '||(num*1));
    -- DBMS_OUTPUT.PUT_LINE(num||' * 2 = '||(num*2));
    -- DBMS_OUTPUT.PUT_LINE(num||' * 3 = '||(num*3));
    -- DBMS_OUTPUT.PUT_LINE(num||' * 4 = '||(num*4));
    -- DBMS_OUTPUT.PUT_LINE(num||' * 5 = '||(num*5));

    DBMS_OUTPUT.PUT_LINE('TABUADA COM LOOP WHILE');
    WHILE i <= 10 LOOP
        DBMS_OUTPUT.PUT_LINE(num||' * '||i||' = '||(num*i));
        i := i + 1;
    END LOOP;

    FOR i IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE(num||' * '||i||' = '||(num*i));
        IF i = 7 THEN
            EXIT;
        END IF;
        -- EXIT WHEN i = 7;
    END LOOP;
END;

-- utilizando variavel 

-- DEFINE numero = 10;