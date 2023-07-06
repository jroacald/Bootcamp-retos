create or replace procedure insert_nombre_corto is

v_VAL_NOM1 varchar(26);
v_VAL_APE1 varchar(26);
v_NOMBRE_CORTO varchar(25);

BEGIN

SELECT val_nom1, val_ape1, NOMBRE_CORTO
INTO v_VAL_NOM1,v_VAL_APE1,v_NOMBRE_CORTO
FROM clientes
where COD_CLIE = 0001091;

if v_nombre_corto IS NULL THEN

    update CLIENTES set nombre_corto = CONCAT(v_VAL_NOM1, CONCAT(' ',v_VAL_APE1));

ELSE 

    dbms_output.put_line('NO SE HA PODIDO AGREGAR EL NOMBRE CORTO: ' || v_nombre_corto);

END IF;

END;