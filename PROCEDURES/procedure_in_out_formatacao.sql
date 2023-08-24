VARIABLE fone VARCHAR2(16);

BEGIN
    :fone := '16996241804';
END;

PRINT fone;

CREATE OR REPLACE PROCEDURE telefone 
    (num_fone IN OUT VARCHAR2)
IS
BEGIN
    num_fone := '('||substr(num_fone, 1, 2) || ')' || substr(num_fone, 3, 4) || '-' || substr(num_fone, 7, 4);
END telefone;

EXECUTE telefone(:fone);

PRINT fone;