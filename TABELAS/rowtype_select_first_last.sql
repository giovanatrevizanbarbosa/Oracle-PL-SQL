DECLARE 
    TYPE dados_estoque IS TABLE OF estoque%ROWTYPE INDEX BY binary_integer;
    dados dados_estoque;
BEGIN
    FOR i IN 1..6 LOOP
        SELECT * INTO dados(1) FROM estoque WHERE est_codigo = i;
    END LOOP;

    FOR i IN dados.first..dados.last LOOP
        DBMS_OUTPUT.PUT_LINE('Código: ' || TO_CHAR(dados(i).est_codigo) || ', Nome: ' || TO_CHAR(dados(i).est_nome));
    END LOOP;
END;
