-- instrucao
CREATE OR REPLACE TRIGGER atualizado
AFTER UPDATE ON estoque
BEGIN
    DBMS_OUTPUT.PUT_LINE('Atualizou estoque com sucesso.');
END atualizado;

UPDATE estoque SET est_tipo = 'un';

-- linha
CREATE OR REPLACE TRIGGER atualizado1
AFTER UPDATE ON estoque
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Atualizou estoque com sucesso.');
END atualizado1;

UPDATE estoque SET est_tipo = 'un';