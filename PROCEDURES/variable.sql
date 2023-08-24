VARIABLE situacao VARCHAR2(15);
VARIABLE media NUMBER;

DECLARE
    num1 NUMBER;
    num2 NUMBER;
    media NUMBER;
BEGIN
    num1 := 8;
    num2 := 10;
    media := (num1+num2)/2;    

    DBMS_OUTPUT.PUT_LINE('A soma é '||(num1+num2));
    :situacao := 'A soma é '||(num1+num2);
    :media := media;
END;


PRINT situacao;
PRINT media;