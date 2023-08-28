CREATE TABLE logs
(
    usuario VARCHAR2(20),
    data DATE,
    acao VARCHAR2(20)
);

SELECT * FROM logs;

-- desabilitando trigger

ALTER TRIGGER desconecta DISABLE;
ALTER TRIGGER conecta DISABLE;