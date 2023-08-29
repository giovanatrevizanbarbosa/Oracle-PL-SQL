DECLARE 
    TYPE codigo IS TABLE OF NUMBER INDEX BY binary_integer;
    TYPE nome IS TABLE OF VARCHAR2(50) INDEX BY binary_integer;
    
    t_codigo codigo;
    t_nome nome;
BEGIN
    t_codigo(1) := 1;
    t_nome(1) := 'Gi';
    t_codigo(2) := 2;
    t_nome(2) := 'Carlos';
    t_codigo(3) := 3;
    t_nome(3) := 'Neri';
    DBMS_OUTPUT.PUT_LINE('Código: ' || TO_CHAR(t_codigo(1)) || ', Nome: ' || TO_CHAR(t_nome(1)));
    DBMS_OUTPUT.PUT_LINE('Código: ' || TO_CHAR(t_codigo(2)) || ', Nome: ' || TO_CHAR(t_nome(2)));
    DBMS_OUTPUT.PUT_LINE('Código: ' || TO_CHAR(t_codigo(3)) || ', Nome: ' || TO_CHAR(t_nome(3)));
    DBMS_OUTPUT.PUT_LINE('Primeiro registro: ' || TO_CHAR(t_codigo.first) || ', Último registro: ' || TO_CHAR(t_nome.last));
END;