
SET VERIFY OFF
ALTER SESSION SET NLS_LANGUAGE=American; 


------------------------------------------------------------------------------
REM ***************************insert data into the CENTROCOSTOS table

Prompt ******  Inserting values in CENTROCOSTOS table ....

INSERT INTO CENTROCOSTOS(NOMBRE, SALDO, PRESUPUESTO, GASTO, MES_GASTO)
	   VALUES ('Administracion', 1000000, 5000000, 200000, 'Setiembre');
INSERT INTO CENTROCOSTOS(NOMBRE, SALDO, PRESUPUESTO, GASTO, MES_GASTO) 
	   VALUES ('Programas', 100000, 2500000, 20000, 'Octubre');
INSERT INTO CENTROCOSTOS(NOMBRE, SALDO, PRESUPUESTO, GASTO, MES_GASTO) 
	   VALUES ('Escuelas', 25000, 1250000, 15000, 'Agosto');
INSERT INTO CENTROCOSTOS(NOMBRE, SALDO, PRESUPUESTO, GASTO, MES_GASTO) 
	   VALUES ('Servicios', 13000, 250000, 13000, 'Enero');
INSERT INTO CENTROCOSTOS(NOMBRE, SALDO, PRESUPUESTO, GASTO, MES_GASTO) 
	   VALUES ('Servidores', 50000, 100000, 25000, 'Febrero');

		
------------------------------------------------------------------------------
REM ***************************insert data into the DEPARTAMENTOS table

Prompt ******  Inserting values in DEPARTAMENTOS table ....

INSERT INTO DEPARTAMENTOS(NOMBRE, USUARIOS, ID_CENTRO_COSTOS)
	   VALUES ('Rectoria', 20 , 1);
INSERT INTO DEPARTAMENTOS(NOMBRE, USUARIOS, ID_CENTRO_COSTOS) 
	   VALUES ('Vice Rectoria', 10 , 1);
INSERT INTO DEPARTAMENTOS(NOMBRE, USUARIOS, ID_CENTRO_COSTOS) 
	   VALUES ('Escuela de Informatica', 7 , 3);
INSERT INTO DEPARTAMENTOS(NOMBRE, USUARIOS, ID_CENTRO_COSTOS)
	   VALUES ('Escuela de Derecho', 12 ,3);
INSERT INTO DEPARTAMENTOS(NOMBRE, USUARIOS, ID_CENTRO_COSTOS) 
	   VALUES ('Conserjeria', 25 ,4);
INSERT INTO DEPARTAMENTOS(NOMBRE, USUARIOS, ID_CENTRO_COSTOS) 
	   VALUES ('Atencion a Estudiantes', 16 ,4);
INSERT INTO DEPARTAMENTOS(NOMBRE, USUARIOS, ID_CENTRO_COSTOS) 
	   VALUES ('Administracion de Servidores', 5 ,5);


	
------------------------------------------------------------------------------
REM ***************************insert data into the USUARIOS table

Prompt ******  Inserting values in USUARIOS table ....

INSERT INTO USUARIOS(NOMBRE, PRIMERAPELLIDO, SEGUNDOAPELLIDO, USUARIO_RED, CORREO, NUMERO_TARJETA, ID_DEPARTAMENTO)
	   VALUES ('Miguel', 'Aguero', 'Alfaro', 'maalfaro', 'maalfaro@gmail.com', '5670954625318965', 1);
INSERT INTO USUARIOS(NOMBRE, PRIMERAPELLIDO, SEGUNDOAPELLIDO, USUARIO_RED, CORREO, NUMERO_TARJETA, ID_DEPARTAMENTO)
	   VALUES ('Pablo', 'Oconitrillo', 'Cipocio', 'pocipocio', 'pocipocio@gmail.com', '2378954156821349', 7);


------------------------------------------------------------------------------
REM ***************************insert data into the RUBROS table

Prompt ******  Inserting values in RUBROS table ....

INSERT INTO RUBROS(NOMBRE_RUBRO, DESCRIPCION, MES, ID_CENTRO_COSTOS)
	   VALUES ('Salarios', 'Salarios de toda la administracion', 'Octubre', 1);
INSERT INTO RUBROS(NOMBRE_RUBRO, DESCRIPCION, MES, ID_CENTRO_COSTOS)
	   VALUES ('Materiales Limpieza', 'Materiales de limpieza mensuales', 'Marzo', 4);

------------------------------------------------------------------------------
REM ***************************insert data into the FACTURAS table

Prompt ******  Inserting values in FACTURAS table ....

INSERT INTO FACTURAS(FECHA, ID_USUARIO) 
	   VALUES (DATE '2022-06-12','1');
INSERT INTO FACTURAS(FECHA, ID_USUARIO) 
	   VALUES (DATE '2022-02-28','2');
INSERT INTO FACTURAS(FECHA, ID_USUARIO) 
	   VALUES (DATE '2022-01-26','2');
INSERT INTO FACTURAS(FECHA, ID_USUARIO) 
	   VALUES (DATE '2022-09-06','1');
------------------------------------------------------------------------------
REM ***************************insert data into the COMPRAS table

Prompt ******  Inserting values in COMPRAS table ....

INSERT INTO COMPRAS(MONTO, PERMISO_COMPRA, CANTIDAD, ID_CENTRO_COSTOS, ID_USUARIO, ID_RUBRO, ID_FACTURA)
	   VALUES (20000, 123456, 1, 1, 1, 1, 1);
INSERT INTO COMPRAS(MONTO, PERMISO_COMPRA, CANTIDAD, ID_CENTRO_COSTOS, ID_USUARIO, ID_RUBRO, ID_FACTURA)
	   VALUES (20000, 678912, 4, 2, 2, 2, 2);
	

COMMIT;