CREATE OR REPLACE TRIGGER gravado
AFTER INSERT ON estoque
BEGIN
    DBMS_OUTPUT.PUT_LINE('Gravou estoque com sucesso.');
END gravado;