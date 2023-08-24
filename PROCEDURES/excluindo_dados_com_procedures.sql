CREATE OR REPLACE PROCEDURE exclui_estoque
    (codigo IN estoque.est_codigo%TYPE)
IS
BEGIN
    DELETE FROM estoque 
    WHERE est_codigo = codigo;
    
    DBMS_OUTPUT.PUT_LINE('Registro excluido com sucesso');
END exclui_estoque;

EXECUTE exclui_estoque(8);

SELECT * FROM estoque;

