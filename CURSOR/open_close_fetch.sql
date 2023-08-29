DECLARE
    CURSOR cursor_estoque IS SELECT * FROM estoque;
    registros_estoque cursor_estoque%ROWTYPE;
BEGIN
    OPEN cursor_estoque;
    FETCH cursor_estoque INTO registros_estoque;
    DBMS_OUTPUT.PUT_LINE('Código: ' || registros_estoque.est_codigo);
    DBMS_OUTPUT.PUT_LINE('Quantidade de registros: ' || TO_CHAR(cursor_estoque%ROWCOUNT));
    CLOSE cursor_estoque;
END;
------------------------------------------------------------
DECLARE
    CURSOR cursor_estoque IS SELECT * FROM estoque;
    registros_estoque cursor_estoque%ROWTYPE;
BEGIN
    OPEN cursor_estoque;
    LOOP
        FETCH cursor_estoque INTO registros_estoque;
        EXIT WHEN cursor_estoque%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Código: ' || registros_estoque.est_codigo);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Quantidade de registros: ' || TO_CHAR(cursor_estoque%ROWCOUNT));
    CLOSE cursor_estoque;
END;