VARIABLE preco NUMBER;

CREATE OR REPLACE FUNCTION valor_curso
    (codigo IN estoque.est_codigo%TYPE)
RETURN NUMBER
IS
    valor NUMBER;
BEGIN
    SELECT 
        est_precovenda 
    INTO valor FROM estoque
    WHERE est_codigo = codigo;
    return(valor);
END valor_curso;

EXECUTE :preco := valor_curso(4);
PRINT preco;