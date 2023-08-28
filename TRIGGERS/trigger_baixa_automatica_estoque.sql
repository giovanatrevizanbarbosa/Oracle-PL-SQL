update estoque set est_quantidade = 10;

ALTER TABLE estoque ADD est_quantidade NUMBER;

CREATE TABLE venda
(
    ven_codigo NUMBER,
    ven_codprod NUMBER,
    ven_quantidade NUMBER
);

-------------------------------------------------

CREATE OR REPLACE TRIGGER baixa_estoque
AFTER INSERT OR UPDATE OR DELETE OF ven_quantidade ON venda
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        UPDATE estoque SET est_quantidade = est_quantidade - :NEW.ven_quantidade 
        WHERE est_codigo = :NEW.ven_codprod;
    ELSIF UPDATING THEN
        UPDATE estoque SET est_quantidade = est_quantidade + :OLD.ven_quantidade 
        WHERE est_codigo = :OLD.ven_codprod;
        UPDATE estoque SET est_quantidade = est_quantidade - :NEW.ven_quantidade 
        WHERE est_codigo = :NEW.ven_codprod;
    ELSIF DELETING THEN
        UPDATE estoque SET est_quantidade = est_quantidade + :OLD.ven_quantidade 
        WHERE est_codigo = :OLD.ven_codprod;
    END IF;
END baixa_estoque;

SELECT * FROM venda;
SELECT * FROM estoque;

DESC venda;

INSERT INTO venda VALUES (1, 3, 2);

UPDATE venda SET ven_quantidade = 1 WHERE ven_codigo = 1;