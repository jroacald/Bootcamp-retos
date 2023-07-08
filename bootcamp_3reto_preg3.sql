create or replace procedure cambio_letra_n(p_cod_clie in number, p_val_ape1 out varchar2) is

v_VAL_APE1 varchar(25);

BEGIN

SELECT VAL_APE1
INTO V_VAL_APE1
FROM CLIENTES
WHERE VAL_APE1 LIKE '%Ñ%'
AND COD_CLIE = p_cod_clie;

SELECT replace(V_VAL_APE1,'Ñ','N')
INTO V_VAL_APE1
FROM CLIENTES
WHERE COD_CLIE = p_cod_clie;

update CLIENTES set VAL_APE1= V_VAL_APE1;
dbms_output.put_line(V_VAL_APE1);

END;