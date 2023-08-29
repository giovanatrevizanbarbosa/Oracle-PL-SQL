SET SERVEROUTPUT ON;
DECLARE
    contador NUMBER := '&contador';
BEGIN
    <<inicio>>
        contador := contador + 1;
        IF contador <= 10 THEN
            DBMS_OUTPUT.PUT_LINE('Contador: ' || contador);
            GOTO inicio;
        ELSE
            GOTO fim;
        END IF;
    <<fim>>
        DBMS_OUTPUT.PUT_LINE('Fim do programa');
END;