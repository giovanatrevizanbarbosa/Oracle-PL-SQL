ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/YYYY';

CREATE OR REPLACE TRIGGER controla_preco
    BEFORE INSERT OR UPDATE OF est_precovenda
    ON estoque
    FOR EACH ROW
        WHEN(NOT NEW.est_precovenda BETWEEN 100 AND 200)
BEGIN
    RAISE_APPLICATION_ERROR(-2000, 'Não foi possível gravar este produto. Valor encontra-se abaixo do mínimo(R$100).');
END controla_preco;

SELECT * FROM estoque;

EXECUTE grava_estoque(24, 'Video Aula Linux', 'un', 100, '19/06/2009');