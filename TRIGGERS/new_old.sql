ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/YYYY';

CREATE OR REPLACE TRIGGER controla_preco
    BEFORE INSERT OR UPDATE OF est_precovenda
    ON estoque
    FOR EACH ROW
BEGIN
    IF(:NEW.est_precovenda < :OLD.est_precovenda) THEN
    RAISE_APPLICATION_ERROR(-20001, 'Não foi possível gravar este produto. Valor encontra-se abaixo do anterior.');
    END IF;
END controla_preco;

SELECT * FROM estoque;

UPDATE estoque SET est_precovenda = 251 WHERE est_codigo = 22;