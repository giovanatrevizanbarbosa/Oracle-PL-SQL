DECLARE
    dados_estoque estoque%ROWTYPE;
BEGIN
    SELECT * INTO dados_estoque FROM estoque WHERE est_codigo = 3;
    DBMS_OUTPUT.PUT_LINE('Código: ' || TO_CHAR(dados_estoque.est_codigo) || ' Nome: ' || TO_CHAR(dados_estoque.est_nome));
END;