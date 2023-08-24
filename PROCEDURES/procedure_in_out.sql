VARIABLE nome_curso VARCHAR2(40);
VARIABLE preco NUMBER;

CREATE OR REPLACE PROCEDURE pesquisa_curso
    (codigo IN estoque.est_codigo%TYPE, 
    nome_curso OUT estoque.est_nome%TYPE,
    preco OUT estoque.est_precovenda%TYPE)
IS
BEGIN
    SELECT 
    est_nome, 
    est_precovenda 
    INTO nome_curso, preco 
    FROM estoque
    WHERE est_codigo = codigo;
    DBMS_OUTPUT.PUT_LINE('Nome do curso: '|| nome_curso);
    DBMS_OUTPUT.PUT_LINE('Preço do curso: '|| preco);
END;

EXECUTE pesquisa_curso(5, :nome_curso, :preco);

