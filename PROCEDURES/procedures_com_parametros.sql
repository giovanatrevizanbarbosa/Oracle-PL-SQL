CREATE OR REPLACE PROCEDURE soma_com_parametros (num1 IN NUMBER, num2 IN NUMBER)
IS
BEGIN
    DBMS_OUTPUT.PUT_LINE('A soma é '||(num1 + num2));
END;

EXECUTE soma_com_parametros(1,2);

