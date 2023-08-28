-- if / else

CREATE OR REPLACE PROCEDURE nota_aluno
IS
    nota1 number;
    nota2 number;
    media number;
    soma number;
    nome varchar2(40);
BEGIN
    nota1 := 10;
    nota2 := 0;
    nome := 'Giovana';
    soma := nota1 + nota2;
    media := soma / 2;
    if media >= 6 then
        dbms_output.put_line('Aprovado');
    else
        dbms_output.put_line('Reprovado');
    end if;
END;

CREATE OR REPLACE PROCEDURE mes_if
IS
    qual_mes number;
    nome_mes varchar2(15);
BEGIN
    qual_mes := 1;
    if qual_mes = 1 then
        nome_mes := ('Janeiro');
    elsif qual_mes = 2 then 
        nome_mes := ('Fevereiro');
    elsif qual_mes = 3 then 
        nome_mes := ('Março');
    elsif qual_mes = 4 then 
        nome_mes := ('Abril');
    elsif qual_mes = 5 then 
        nome_mes := ('Maio');
    elsif qual_mes = 6 then 
        nome_mes := ('Junho');
    elsif qual_mes = 7 then 
        nome_mes := ('Julho');
    end if;
    DBMS_OUTPUT.PUT_LINE(nome_mes);
END;

-- case when

CREATE OR REPLACE PROCEDURE mes_case
IS
    qual_mes number;
    nome_mes varchar2(15);
BEGIN
    qual_mes := 1;
    case qual_mes
        when 1 then 
            nome_mes := 'Janeiro';
        when 2 then 
            nome_mes := 'Fevereiro';
        when 3 then 
            nome_mes := 'Março';
        when 4 then 
            nome_mes := 'Abril';
        when 5 then 
            nome_mes := 'Maio';
        when 6 then 
            nome_mes := 'Junho';
        when 7 then 
            nome_mes := 'Julho';
    end case;

    DBMS_OUTPUT.PUT_LINE(nome_mes);
END;