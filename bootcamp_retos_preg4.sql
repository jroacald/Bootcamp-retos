create or replace procedure traer_monto_sol (cod_zona in number, cod_secc in varchar2, val_mont_soli out varchar2)
is

v_VAL_MONT_SOLI varchar(25);
v_COD_ZONA number;

cursor pedidos is
SELECT COD_ZONA, VAL_MONT_SOLI
FROM PEDIDOS
WHERE VAL_ESTA_PEDI = 'RECHAZADO';

BEGIN

OPEN pedidos;

    LOOP
        fetch pedidos into v_COD_ZONA,v_VAL_MONT_SOLI;
        exit when pedidos%notfound;
    
        dbms_output.put_line('El codigo de zona es: ' || v_COD_ZONA || ' El monto solicitado es: ' || v_VAL_MONT_SOLI);
    END LOOP;
    
CLOSE pedidos;

END;