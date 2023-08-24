VARIABLE dados VARCHAR2(80);

CREATE OR REPLACE FUNCTION dados_curso
    (codigo IN estoque.est_codigo%TYPE)
RETURN VARCHAR2
IS
    valor NUMBER;
    nome VARCHAR2(40);
BEGIN
    SELECT
        est_nome,
        est_precovenda
    INTO 
        nome, 
        valor 
    FROM estoque
    WHERE est_codigo = codigo;
    return('Nome do Curso: '||nome||' - Valor: R$'||valor);
END dados_curso;

EXECUTE :dados := dados_curso(4);
PRINT dados;