CREATE OR REPLACE FUNCTION mostrar_deudatotal(p_cod_zona number) return varchar2 is

v_sal_deud_ante varchar(26);

BEGIN

SELECT sal_deud_ante
into v_sal_deud_ante
FROM PEDIDOS
where cod_zona = p_cod_zona;

exception when others then
    dbms_output.put_line('Hubo un error');

return v_sal_deud_ante;

end;
