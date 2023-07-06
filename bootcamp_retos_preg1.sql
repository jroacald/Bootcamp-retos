-- •	En la tabla de clientes agregar un campo nombre corto 

ALTER table CLIENTES
ADD NOMBRE_CORTO VARCHAR(25);

commit;

SELECT * FROM CLIENTES;