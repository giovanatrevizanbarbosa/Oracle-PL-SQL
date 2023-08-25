CREATE OR REPLACE TRIGGER controla_preco
    BEFORE INSERT OR UPDATE OF est_precovenda
    ON estoque
    FOR EACH ROW
BEGIN
    IF :NEW.est_precovenda < 100 THEN
    RAISE_APPLICATION_ERROR(-2000, 'Não foi possível gravar este produto. Valor encontra-se abaixo do mínimo(R$100).');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Produto gravado com sucesso.');
    END IF;
END controla_preco;

SELECT * FROM estoque;

EXECUTE grava_estoque(21, 'Video Aula Linux', 'un', 101, '19/06/2009');