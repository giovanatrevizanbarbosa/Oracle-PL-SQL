CREATE OR REPLACE PROCEDURE grava_estoque
    (   codigo IN estoque.est_codigo%TYPE,
        nome IN estoque.est_nome%TYPE,
        tipo IN estoque.est_tipo%TYPE,
        valor IN estoque.est_precovenda%TYPE,
        data IN estoque.est_datacad%TYPE
    )
IS
BEGIN
    INSERT INTO estoque 
    (est_codigo, est_nome, est_tipo, est_precovenda, est_datacad)
    VALUES (codigo, nome, tipo, valor, data);
    
    DBMS_OUTPUT.PUT_LINE('Estoque gravado com sucesso');
END grava_estoque;

EXECUTE grava_estoque(20, 'Video Aula Acordeon', 'un', 50,'20/01/2009');