set echo on
--
SPOOL C:\Codigo_CENTROCOSTOS\CentroCostos_main.sql"\spool_CentroCostos.txt
--
ALTER SESSION SET NLS_LANGUAGE=American;
ALTER SESSION SET NLS_TERRITORY=America;
ALTER SESSION SET "_ORACLE_SCRIPT"= TRUE;

CREATE USER CENTROCOSTOS IDENTIFIED BY ADMIN123;

GRANT CONNECT,DBA, RESOURCE TO CENTROCOSTOS;

ALTER USER CENTROCOSTOS QUOTA UNLIMITED  ON USERS;

CONN CENTROCOSTOS/ADMIN123;

--
-- CREACION DE TABLAS Y CONSTRAINTS Y VISTAS
--
@@CentroCostos_creation

-- 
-- PONER DATOS EN LAS TABLAS
--
@@CentroCostos_popul

--
-- CREACION DE PROCEDURES and TRIGGERS
--
@@CentroCostos_SP

--
-- COMENTARIOS DE TABLAS Y COLUMNAS
--
@@CentroCostos_analz

SPOOL OFF