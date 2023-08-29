DECLARE
    id NUMBER;
BEGIN
    SELECT est_codigo INTO id FROM estoque WHERE est_precovenda = 130;
    DBMS_OUTPUT.PUT_LINE('Número de registros: ' || TO_CHAR(SQL%ROWCOUNT));
END;

-- algumas funcoes

-- %ROWCOUNT: retorna o número de linhas afetadas pela última instrução SQL.
-- %FOUND: retorna TRUE se a última instrução SQL afetou alguma linha.
-- %NOTFOUND: retorna TRUE se a última instrução SQL não afetou nenhuma linha.
-- %ISOPEN: retorna TRUE se o cursor estiver aberto.