SELECT * FROM CLIENTES; 
SELECT * FROM PEDIDOS; 

-- 3.	Crear una consulta SELECT que genere la venta por ZONA en unidades y monto solicitado (VAL_MONT_SOLI)

SELECT * FROM (
         SELECT COD_ZONA, VAL_MONT_SOLI
         FROM PEDIDOS
         ORDER BY TO_NUMBER(VAL_MONT_SOLI, '999999.99') DESC)
         WHERE VAL_MONT_SOLI IS NOT NULL;

-- 4.	Crear una consulta SELECT que genere las 20 secciones con mas venta en monto solicitado  

SELECT * FROM (
         SELECT VAL_NUME_SOLI, VAL_MONT_SOLI
         FROM PEDIDOS
         ORDER BY TO_NUMBER(VAL_MONT_SOLI, '999999.99') DESC)
         WHERE VAL_MONT_SOLI IS NOT NULL AND rownum <= 20;
 
-- 4.1. Crear una consulta SELECT que muestre el número de pedidos por zona de alto valor y el número de pedidos por zona de bajo valor. 
-- Los pedidos de alto valor son aquellos cuyo valor estimado (VAL_MONT_ESTI) es mayor a 250 y pedidos de Bajo Valor son aquellos que tienen un valor menor a 250. 

SELECT * FROM (
         SELECT COD_ZONA, VAL_MONT_ESTI
         FROM PEDIDOS
         ORDER BY TO_NUMBER(VAL_MONT_ESTI, '999999.99') DESC)
         WHERE VAL_MONT_ESTI IS NOT NULL AND TO_NUMBER(VAL_MONT_ESTI, '999999.99') >= 250;
         
         
SELECT * FROM (
         SELECT COD_ZONA, VAL_MONT_ESTI
         FROM PEDIDOS
         ORDER BY TO_NUMBER(VAL_MONT_ESTI, '999999.99') DESC)
         WHERE VAL_MONT_ESTI IS NOT NULL AND TO_NUMBER(VAL_MONT_ESTI, '999999.99') <= 250;
 
 