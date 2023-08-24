VARIABLE num NUMBER;

CREATE OR REPLACE FUNCTION calculo
    (numero IN NUMBER)
RETURN NUMBER
IS
BEGIN
    RETURN (numero + 20);
END calculo;

EXECUTE :num := calculo(30);
PRINT num;