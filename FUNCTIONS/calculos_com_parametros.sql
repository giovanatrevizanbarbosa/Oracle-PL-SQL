VARIABLE num NUMBER;

CREATE OR REPLACE FUNCTION calcular
    (numero1 IN NUMBER,
    numero2 IN NUMBER,
    operacao IN VARCHAR2
    )
RETURN NUMBER
IS
    calculo NUMBER;
BEGIN
    CASE operacao
        WHEN 'somar' THEN 
            calculo := numero1 + numero2;
        WHEN 'subtrair' THEN 
            calculo := numero1 - numero2;
        WHEN 'multplicar' THEN 
            calculo := numero1 * numero2;
        WHEN 'dividir' THEN 
            calculo := numero1 / numero2;
    END CASE;
RETURN (calculo);
END calcular;

EXECUTE :num := calcular(20, 10, 'dividir');
PRINT num;