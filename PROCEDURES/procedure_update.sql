CREATE OR REPLACE PROCEDURE aumenta_preco_todos
IS
BEGIN
    UPDATE estoque SET est_precovenda = est_precovenda + 20;
END;

EXECUTE aumenta_preco_todos;
SELECT * FROM estoque;

CREATE OR REPLACE PROCEDURE aumenta_preco_individual
IS
BEGIN
    UPDATE estoque SET est_precovenda = est_precovenda + 10
    WHERE est_codigo = 1;
END;

EXECUTE aumenta_preco_individual;
SELECT * FROM estoque;

-- update com parametros

CREATE OR REPLACE PROCEDURE aumenta_preco_individual_parametro
    (codigo_curso IN estoque.est_codigo%TYPE,
    percentual NUMBER)
IS
BEGIN
    UPDATE estoque SET est_precovenda = est_precovenda * percentual
    WHERE est_codigo = codigo_curso;
END aumenta_preco_individual_parametro;

EXECUTE aumenta_preco_individual_parametro(2, 2);
SELECT * FROM estoque;