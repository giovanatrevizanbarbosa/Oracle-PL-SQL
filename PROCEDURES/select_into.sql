DECLARE
    quantos NUMBER;
BEGIN
    SELECT COUNT(est_nome ) INTO quantos
    FROM estoque;
    DBMS_OUTPUT.PUT_LINE('QUANTIDADE DE REGISTROS: '|| quantos);
END;

DECLARE
    nome_curso VARCHAR2(40);
BEGIN
    SELECT est_nome INTO nome_curso
    FROM estoque
    WHERE est_codigo = 4;
    DBMS_OUTPUT.PUT_LINE('Nome do curso: '|| nome_curso);
END;

CREATE OR REPLACE PROCEDURE pesquisa_curso(codigo IN NUMBER)
IS
    nome_curso VARCHAR2(40);
BEGIN
    SELECT est_nome INTO nome_curso FROM estoque
    WHERE est_codigo = codigo;
    DBMS_OUTPUT.PUT_LINE('Nome do curso: '|| nome_curso);
END;

EXECUTE pesquisa_curso(1);