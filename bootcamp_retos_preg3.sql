-- ALTER table CLIENTES ADD EDAD NUMBER;
-- commit;

DECLARE

v_edad number;
v_fec_naci date;

BEGIN

SELECT fec_naci
INTO v_fec_naci
FROM clientes
where cod_clie = 0003609;

SELECT trunc(MONTHS_BETWEEN(SYSDATE, v_fec_naci)/12) 
into v_edad
FROM clientes
where cod_clie = 0003609;

if v_edad >= 1 then

update clientes set edad = v_edad
where cod_clie = 0003609;
dbms_output.put_line('SE HA PODIDO AGREGAR LA EDAD: ' || v_edad);

end if;

END;