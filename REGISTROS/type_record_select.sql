DECLARE
    TYPE reg_estoque IS RECORD
    (
        codigo NUMBER,
        nome VARCHAR2(30),
        tipo CHAR(2),
        precovenda NUMBER,
        datacad DATE,
        quantidade NUMBER
    );

    dados_estoque reg_estoque;

BEGIN
    SELECT * INTO dados_estoque.codigo, dados_estoque.nome, dados_estoque.tipo, dados_estoque.precovenda, dados_estoque.datacad, dados_estoque.quantidade FROM estoque WHERE est_codigo = 3;
    DBMS_OUTPUT.PUT_LINE('Código: ' || TO_CHAR(dados_estoque.codigo) || ' Nome: ' || TO_CHAR(dados_estoque.nome));
END;