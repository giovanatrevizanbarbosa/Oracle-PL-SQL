ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/YYYY';
CREATE OR REPLACE TRIGGER controla_horario
    BEFORE INSERT
        ON estoque
BEGIN
    IF (TO_CHAR(sysdate, 'DY') IN ('SAT', 'SUN')) OR TO_CHAR(sysdate, 'hh24') NOT BETWEEN '08' AND '18' THEN
        RAISE_APPLICATION_ERROR(-20001, 'Não foi possível gravar. Somente entre horarios 10:00 e 05:00 e de segunda à sexta.');
    END IF;
END controla_horario;

SELECT * FROM estoque;

EXECUTE grava_estoque(26, 'Video Aula Linux', 'un', 101, '19/06/2009');