DROP TABLE BOLETAS CASCADE CONSTRAINTS PURGE;
DROP TABLE CATEGORIAS CASCADE CONSTRAINTS PURGE;
DROP TABLE CLIENTES CASCADE CONSTRAINTS PURGE;
DROP TABLE COMISIONES CASCADE CONSTRAINTS PURGE;
DROP TABLE DETALLE_ORDENES CASCADE CONSTRAINTS PURGE;
DROP TABLE EMPLEADOS CASCADE CONSTRAINTS PURGE;
DROP TABLE ORDENES CASCADE CONSTRAINTS PURGE;
DROP TABLE PRODUCTOS CASCADE CONSTRAINTS PURGE;
DROP TABLE PROVEEDORES CASCADE CONSTRAINTS PURGE;
DROP TABLE COMUNA CASCADE CONSTRAINTS PURGE;
  
  
  DROP SEQUENCE SQ_BOLETA;

--------------------------------------------------------
--  DDL for Sequence SQ_BOLETA
--------------------------------------------------------

   CREATE SEQUENCE  SQ_BOLETA  MINVALUE 10 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 10 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table BOLETAS
--------------------------------------------------------

  CREATE TABLE BOLETAS 
   (	"NRO_BOLETA" NUMBER, 
	"ORDEN_ID" NUMBER, 
	"FECHA" DATE, 
	"EMPLEADO_ID" NUMBER, 
	"VALOR_NETO" NUMBER, 
	"IVA" NUMBER, 
	"DESCUENTO" NUMBER, 
	"TOTAL" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CATEGORIAS
--------------------------------------------------------

  CREATE TABLE CATEGORIAS
   (	"CATEGORIA_ID" NUMBER, 
	"NOMBRE_CAT" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table CLIENTES
--------------------------------------------------------

  CREATE TABLE CLIENTES 
   (	"CLIENTE_ID" NUMBER, 
	"CEDULA_RUC" VARCHAR2(10 BYTE), 
	"NOMBRE_CIA" VARCHAR2(30 BYTE), 
	"NOMBRE_CONTACTO" VARCHAR2(50 BYTE), 
	"DIRECCION_CLI" VARCHAR2(50 BYTE), 
	"FAX" VARCHAR2(12 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE), 
	"CELULAR" VARCHAR2(12 BYTE), 
	"FIJO" VARCHAR2(12 BYTE),
  "ID_COMUNA" NUMBER(8)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
  
--------------------------------------------------------
--  DDL for Table COMUNA
--------------------------------------------------------
 CREATE TABLE COMUNA
 ( ID_COMUNA NUMBER(8),
   NOMBRE_COMUNA VARCHAR2(30)
 );
  
  
--------------------------------------------------------
--  DDL for Table COMISIONES
--------------------------------------------------------

  CREATE TABLE COMISIONES 
   (	"ID_COMISION" NUMBER, 
	"EMPLEADO_ID" NUMBER, 
	"NRO_BOLETA" NUMBER, 
	"VALOR_COMISION" NUMBER, 
	"FECHA_COMISION" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DETALLE_ORDENES
--------------------------------------------------------

  CREATE TABLE DETALLE_ORDENES 
   (	"ORDEN_ID" NUMBER, 
	"DETALLE_ID" NUMBER, 
	"PRODUCTO_ID" NUMBER, 
	"CANTIDAD" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table EMPLEADOS
--------------------------------------------------------

  CREATE TABLE EMPLEADOS 
   (	"EMPLEADO_ID" NUMBER, 
	"NOMBRE" VARCHAR2(30 BYTE), 
	"APELLIDO" VARCHAR2(30 BYTE), 
	"FECHA_NAC" DATE, 
   SUELDO NUMBER, 
	"REPORTA_A" NUMBER,
	"EXTENSION" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

--------------------------------------------------------
--  DDL for Table ORDENES
--------------------------------------------------------

  CREATE TABLE ORDENES 
   (	"ORDEN_ID" NUMBER, 
	"EMPLEADO_ID" NUMBER, 
	"CLIENTE_ID" NUMBER, 
	"FECHA_ORDEN" DATE, 
	"DESCUENTO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUCTOS
--------------------------------------------------------

  CREATE TABLE PRODUCTOS
   (	"PRODUCTO_ID" NUMBER, 
	"PROVEEDOR_ID" NUMBER, 
	"CATEGORIA_ID" NUMBER, 
	"DESCRIPCION" VARCHAR2(50 BYTE), 
	"PRECIO_UNIT" NUMBER, 
	"EXISTENCIA" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PROVEEDORES
--------------------------------------------------------

  CREATE TABLE PROVEEDORES 
   (	"PROVEEDOR_ID" NUMBER, 
	"NOMBRE_PROV" VARCHAR2(50 BYTE), 
	"CONTACTO" VARCHAR2(50 BYTE), 
	"CELULAR_PROV" VARCHAR2(12 BYTE), 
	"FIJO_PROV" VARCHAR2(12 BYTE),
  ESTADO varchar2(2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

  
Insert into CATEGORIAS (CATEGORIA_ID,NOMBRE_CAT) values ('100','CARNICOS');
Insert into CATEGORIAS (CATEGORIA_ID,NOMBRE_CAT) values ('200','LACTEOS');
Insert into CATEGORIAS (CATEGORIA_ID,NOMBRE_CAT) values ('300','LIMPIEZA');
Insert into CATEGORIAS (CATEGORIA_ID,NOMBRE_CAT) values ('400','HIGINE PERSONAL');
Insert into CATEGORIAS (CATEGORIA_ID,NOMBRE_CAT) values ('500','MEDICINAS');
Insert into CATEGORIAS (CATEGORIA_ID,NOMBRE_CAT) values ('600','COSMETICOS');
Insert into CATEGORIAS (CATEGORIA_ID,NOMBRE_CAT) values ('700','REVISTAS');

insert into comuna values(1,'SANTIAGO');
insert into comuna values(2,'LA FLORIDA');
insert into comuna values(3,'SAN JOAQUIN');
insert into comuna values(4,'PROVIDENCIA');
insert into comuna values(5,'PUENTE ALTO');
insert into comuna values(6,'Calle Larga');
insert into comuna values(7,'Los Andes');

Insert into CLIENTES (CLIENTE_ID,CEDULA_RUC,NOMBRE_CIA,NOMBRE_CONTACTO,DIRECCION_CLI,FAX,EMAIL,CELULAR,FIJO,ID_COMUNA) values ('1','1890786576','SUPERMERCADO ESTRELLA','CRISTIAN MU�OZ FLORES','AV.AMAZONAS',null,null,null,null,1);
Insert into CLIENTES (CLIENTE_ID,CEDULA_RUC,NOMBRE_CIA,NOMBRE_CONTACTO,DIRECCION_CLI,FAX,EMAIL,CELULAR,FIJO,ID_COMUNA) values ('2','1298765477','EL ROSADO','MARIA CORDERO','AV.EL INCA',null,null,null,null,2);
Insert into CLIENTES (CLIENTE_ID,CEDULA_RUC,NOMBRE_CIA,NOMBRE_CONTACTO,DIRECCION_CLI,FAX,EMAIL,CELULAR,FIJO,ID_COMUNA) values ('3','1009876567','DISTRIBUIDORA PRENSA','PEDRO PINTO','EL PINAR',null,null,null,null,3);
Insert into CLIENTES (CLIENTE_ID,CEDULA_RUC,NOMBRE_CIA,NOMBRE_CONTACTO,DIRECCION_CLI,FAX,EMAIL,CELULAR,FIJO,ID_COMUNA) values ('4','1876090006','SU TIENDA','PABLO PONCE','AV.AMAZONAS',null,null,null,null,4);
Insert into CLIENTES (CLIENTE_ID,CEDULA_RUC,NOMBRE_CIA,NOMBRE_CONTACTO,DIRECCION_CLI,FAX,EMAIL,CELULAR,FIJO,ID_COMUNA) values ('5','1893456776','SUPERMERCADO DORADO','LORENA PAZ','AV.6 DICIEMBRE',null,null,null,null,'5');
Insert into CLIENTES (CLIENTE_ID,CEDULA_RUC,NOMBRE_CIA,NOMBRE_CONTACTO,DIRECCION_CLI,FAX,EMAIL,CELULAR,FIJO,ID_COMUNA) values ('6','1678999891','SUPERMERCADO CHABELITA','EMA FLORES ALVAREZ','AV.AMAZONAS',null,null,null,null,6);
Insert into CLIENTES (CLIENTE_ID,CEDULA_RUC,NOMBRE_CIA,NOMBRE_CONTACTO,DIRECCION_CLI,FAX,EMAIL,CELULAR,FIJO,ID_COMUNA) values ('7','1244567888','SUPERMERCADO DESCUENTO','LETICIA ORTEGA','AV.LA PRENSA',null,null,null,null,3);
Insert into CLIENTES (CLIENTE_ID,CEDULA_RUC,NOMBRE_CIA,NOMBRE_CONTACTO,DIRECCION_CLI,FAX,EMAIL,CELULAR,FIJO,ID_COMUNA) values ('8','1456799022','EL DESCUENTO','JUAN TORRES','AV.PATRIA',null,null,null,null,3);
Insert into CLIENTES (CLIENTE_ID,CEDULA_RUC,NOMBRE_CIA,NOMBRE_CONTACTO,DIRECCION_CLI,FAX,EMAIL,CELULAR,FIJO,ID_COMUNA) values ('9','1845677777','DE LUISE','JORGE PARRA','AV.AMAZONAS',null,null,null,null,1);
Insert into CLIENTES (CLIENTE_ID,CEDULA_RUC,NOMBRE_CIA,NOMBRE_CONTACTO,DIRECCION_CLI,FAX,EMAIL,CELULAR,FIJO,ID_COMUNA) values ('10','183445667','YARBANTRELLA','PABLO POLIT','AV.REPUBLICA',null,null,null,null,7);




Insert into ORDENES (ORDEN_ID,EMPLEADO_ID,CLIENTE_ID,FECHA_ORDEN,DESCUENTO) values ('1','3','4',to_date('01/06/23','DD/MM/RR'),'5');
Insert into ORDENES (ORDEN_ID,EMPLEADO_ID,CLIENTE_ID,FECHA_ORDEN,DESCUENTO) values ('2','3','4',to_date('02/06/23','DD/MM/RR'),'10');
Insert into ORDENES (ORDEN_ID,EMPLEADO_ID,CLIENTE_ID,FECHA_ORDEN,DESCUENTO) values ('3','4','5',to_date('05/06/23','DD/MM/RR'),'6');
Insert into ORDENES (ORDEN_ID,EMPLEADO_ID,CLIENTE_ID,FECHA_ORDEN,DESCUENTO) values ('4','2','6',to_date('06/06/23','DD/MM/RR'),'2');
Insert into ORDENES (ORDEN_ID,EMPLEADO_ID,CLIENTE_ID,FECHA_ORDEN,DESCUENTO) values ('5','2','7',to_date('09/06/23','DD/MM/RR'),null);
Insert into ORDENES (ORDEN_ID,EMPLEADO_ID,CLIENTE_ID,FECHA_ORDEN,DESCUENTO) values ('6','4','5',to_date('12/06/23','DD/MM/RR'),'10');
Insert into ORDENES (ORDEN_ID,EMPLEADO_ID,CLIENTE_ID,FECHA_ORDEN,DESCUENTO) values ('7','2','5',to_date('14/06/23','DD/MM/RR'),'10');
Insert into ORDENES (ORDEN_ID,EMPLEADO_ID,CLIENTE_ID,FECHA_ORDEN,DESCUENTO) values ('8','3','2',to_date('15/06/23','DD/MM/RR'),'10');
Insert into ORDENES (ORDEN_ID,EMPLEADO_ID,CLIENTE_ID,FECHA_ORDEN,DESCUENTO) values ('9','3','2',to_date('17/06/23','DD/MM/RR'),'3');
Insert into ORDENES (ORDEN_ID,EMPLEADO_ID,CLIENTE_ID,FECHA_ORDEN,DESCUENTO) values ('10','2','2',to_date('18/06/23','DD/MM/RR'),'2');
Insert into ORDENES (ORDEN_ID,EMPLEADO_ID,CLIENTE_ID,FECHA_ORDEN,DESCUENTO) values ('11','1','3',to_date('17/06/23','DD/MM/RR'),null);

Insert into COMISIONES (ID_COMISION,EMPLEADO_ID,NRO_BOLETA,VALOR_COMISION,FECHA_COMISION) values ('101','3','1','1477',to_date('01/04/23','DD/MM/RR'));
Insert into COMISIONES (ID_COMISION,EMPLEADO_ID,NRO_BOLETA,VALOR_COMISION,FECHA_COMISION) values ('102','4','2','512',to_date('02/04/23','DD/MM/RR'));
Insert into COMISIONES (ID_COMISION,EMPLEADO_ID,NRO_BOLETA,VALOR_COMISION,FECHA_COMISION) values ('103','2','3','409',to_date('05/04/23','DD/MM/RR'));
Insert into COMISIONES (ID_COMISION,EMPLEADO_ID,NRO_BOLETA,VALOR_COMISION,FECHA_COMISION) values ('104','2','4','638',to_date('06/04/23','DD/MM/RR'));
Insert into COMISIONES (ID_COMISION,EMPLEADO_ID,NRO_BOLETA,VALOR_COMISION,FECHA_COMISION) values ('105','3','5','835',to_date('09/04/23','DD/MM/RR'));
Insert into COMISIONES (ID_COMISION,EMPLEADO_ID,NRO_BOLETA,VALOR_COMISION,FECHA_COMISION) values ('106','3','6','2558',to_date('12/04/23','DD/MM/RR'));
Insert into COMISIONES (ID_COMISION,EMPLEADO_ID,NRO_BOLETA,VALOR_COMISION,FECHA_COMISION) values ('107','3','7','1451',to_date('14/04/23','DD/MM/RR'));
Insert into COMISIONES (ID_COMISION,EMPLEADO_ID,NRO_BOLETA,VALOR_COMISION,FECHA_COMISION) values ('108','4','8','490',to_date('15/04/23','DD/MM/RR'));
Insert into COMISIONES (ID_COMISION,EMPLEADO_ID,NRO_BOLETA,VALOR_COMISION,FECHA_COMISION) values ('109','2','9','1347',to_date('17/04/23','DD/MM/RR'));

Insert into BOLETAS (NRO_BOLETA,ORDEN_ID,FECHA,EMPLEADO_ID,VALOR_NETO,IVA,DESCUENTO,TOTAL) values ('1','1',to_date('01/04/23','DD/MM/RR'),'3','8710','1655','518','9847');
Insert into BOLETAS (NRO_BOLETA,ORDEN_ID,FECHA,EMPLEADO_ID,VALOR_NETO,IVA,DESCUENTO,TOTAL) values ('2','2',to_date('02/04/23','DD/MM/RR'),'4','3055','580','218','3417');
Insert into BOLETAS (NRO_BOLETA,ORDEN_ID,FECHA,EMPLEADO_ID,VALOR_NETO,IVA,DESCUENTO,TOTAL) values ('3','3',to_date('05/04/23','DD/MM/RR'),'2','2340','445','56','2729');
Insert into BOLETAS (NRO_BOLETA,ORDEN_ID,FECHA,EMPLEADO_ID,VALOR_NETO,IVA,DESCUENTO,TOTAL) values ('4','4',to_date('06/04/23','DD/MM/RR'),'2','3575','679',null,'4254');
Insert into BOLETAS (NRO_BOLETA,ORDEN_ID,FECHA,EMPLEADO_ID,VALOR_NETO,IVA,DESCUENTO,TOTAL) values ('5','5',to_date('09/04/23','DD/MM/RR'),'3','5200','988','619','5569');
Insert into BOLETAS (NRO_BOLETA,ORDEN_ID,FECHA,EMPLEADO_ID,VALOR_NETO,IVA,DESCUENTO,TOTAL) values ('6','6',to_date('12/04/23','DD/MM/RR'),'3','15925','3026','1895','17056');
Insert into BOLETAS (NRO_BOLETA,ORDEN_ID,FECHA,EMPLEADO_ID,VALOR_NETO,IVA,DESCUENTO,TOTAL) values ('7','7',to_date('14/04/23','DD/MM/RR'),'3','8385','1593','299','9679');
Insert into BOLETAS (NRO_BOLETA,ORDEN_ID,FECHA,EMPLEADO_ID,VALOR_NETO,IVA,DESCUENTO,TOTAL) values ('8','8',to_date('15/04/23','DD/MM/RR'),'4','3055','580','364','3271');
Insert into BOLETAS (NRO_BOLETA,ORDEN_ID,FECHA,EMPLEADO_ID,VALOR_NETO,IVA,DESCUENTO,TOTAL) values ('9','9',to_date('17/04/23','DD/MM/RR'),'2','8385','1593','998','8980');

Insert into DETALLE_ORDENES (ORDEN_ID,DETALLE_ID,PRODUCTO_ID,CANTIDAD) values ('1','1','1','2');
Insert into DETALLE_ORDENES (ORDEN_ID,DETALLE_ID,PRODUCTO_ID,CANTIDAD) values ('1','2','4','1');
Insert into DETALLE_ORDENES (ORDEN_ID,DETALLE_ID,PRODUCTO_ID,CANTIDAD) values ('1','3','6','1');
Insert into DETALLE_ORDENES (ORDEN_ID,DETALLE_ID,PRODUCTO_ID,CANTIDAD) values ('1','4','9','1');
Insert into DETALLE_ORDENES (ORDEN_ID,DETALLE_ID,PRODUCTO_ID,CANTIDAD) values ('2','1','10','10');
Insert into DETALLE_ORDENES (ORDEN_ID,DETALLE_ID,PRODUCTO_ID,CANTIDAD) values ('2','2','13','20');
Insert into DETALLE_ORDENES (ORDEN_ID,DETALLE_ID,PRODUCTO_ID,CANTIDAD) values ('3','1','3','10');
Insert into DETALLE_ORDENES (ORDEN_ID,DETALLE_ID,PRODUCTO_ID,CANTIDAD) values ('4','1','9','12');
Insert into DETALLE_ORDENES (ORDEN_ID,DETALLE_ID,PRODUCTO_ID,CANTIDAD) values ('5','1','1','14');
Insert into DETALLE_ORDENES (ORDEN_ID,DETALLE_ID,PRODUCTO_ID,CANTIDAD) values ('5','2','4','20');
Insert into DETALLE_ORDENES (ORDEN_ID,DETALLE_ID,PRODUCTO_ID,CANTIDAD) values ('6','1','3','12');
Insert into DETALLE_ORDENES (ORDEN_ID,DETALLE_ID,PRODUCTO_ID,CANTIDAD) values ('7','1','11','10');
Insert into DETALLE_ORDENES (ORDEN_ID,DETALLE_ID,PRODUCTO_ID,CANTIDAD) values ('8','1','2','10');
Insert into DETALLE_ORDENES (ORDEN_ID,DETALLE_ID,PRODUCTO_ID,CANTIDAD) values ('8','2','5','14');
Insert into DETALLE_ORDENES (ORDEN_ID,DETALLE_ID,PRODUCTO_ID,CANTIDAD) values ('8','3','7','10');
Insert into DETALLE_ORDENES (ORDEN_ID,DETALLE_ID,PRODUCTO_ID,CANTIDAD) values ('9','1','11','10');
Insert into DETALLE_ORDENES (ORDEN_ID,DETALLE_ID,PRODUCTO_ID,CANTIDAD) values ('10','1','1','5');

Insert into EMPLEADOS (EMPLEADO_ID,NOMBRE,APELLIDO,FECHA_NAC,SUELDO,REPORTA_A,EXTENSION) values ('1','JUAN','CRUZ',to_date('18/06/67','DD/MM/RR'),500000,null,'231');
Insert into EMPLEADOS (EMPLEADO_ID,NOMBRE,APELLIDO,FECHA_NAC,SUELDO,REPORTA_A,EXTENSION) values ('2','MARIO','SANCHEZ',to_date('01/06/79','DD/MM/RR'),455000,'1','144');
Insert into EMPLEADOS (EMPLEADO_ID,NOMBRE,APELLIDO,FECHA_NAC,SUELDO,REPORTA_A,EXTENSION) values ('3','VERONICA','ARIAS',to_date('23/07/77','DD/MM/RR'),850000,'1','234');
Insert into EMPLEADOS (EMPLEADO_ID,NOMBRE,APELLIDO,FECHA_NAC,SUELDO,REPORTA_A,EXTENSION) values ('4','PABLO','CELY',to_date('28/07/77','DD/MM/RR'),750000,'2','567');
Insert into EMPLEADOS (EMPLEADO_ID,NOMBRE,APELLIDO,FECHA_NAC,SUELDO,REPORTA_A,EXTENSION) values ('5','DIEGO','ANDRADE',to_date('15/08/70','DD/MM/RR'),654000,'2','890');
Insert into EMPLEADOS (EMPLEADO_ID,NOMBRE,APELLIDO,FECHA_NAC,SUELDO,REPORTA_A,EXTENSION) values ('6','JUAN','ANDRADE',to_date('17/08/76','DD/MM/RR'),456000,'3','230');
Insert into EMPLEADOS (EMPLEADO_ID,NOMBRE,APELLIDO,FECHA_NAC,SUELDO,REPORTA_A,EXTENSION) values ('7','MARIA','NOVOA',to_date('21/09/79','DD/MM/RR'),650000,'3','261');

Insert into PRODUCTOS (PRODUCTO_ID,PROVEEDOR_ID,CATEGORIA_ID,DESCRIPCION,PRECIO_UNIT,EXISTENCIA) values ('1','10','100','SALCHICHAS VIENESAS','1690','200');
Insert into PRODUCTOS (PRODUCTO_ID,PROVEEDOR_ID,CATEGORIA_ID,DESCRIPCION,PRECIO_UNIT,EXISTENCIA) values ('2','10','100','SALAMI DE AJO','2340','300');
Insert into PRODUCTOS (PRODUCTO_ID,PROVEEDOR_ID,CATEGORIA_ID,DESCRIPCION,PRECIO_UNIT,EXISTENCIA) values ('3','10','100','BOTON PARA ASADO','3055','400');
Insert into PRODUCTOS (PRODUCTO_ID,PROVEEDOR_ID,CATEGORIA_ID,DESCRIPCION,PRECIO_UNIT,EXISTENCIA) values ('4','20','100','SALCHICHAS DE POLLO','1885','200');
Insert into PRODUCTOS (PRODUCTO_ID,PROVEEDOR_ID,CATEGORIA_ID,DESCRIPCION,PRECIO_UNIT,EXISTENCIA) values ('5','20','100','JAMON DE POLLO','1820','100');
Insert into PRODUCTOS (PRODUCTO_ID,PROVEEDOR_ID,CATEGORIA_ID,DESCRIPCION,PRECIO_UNIT,EXISTENCIA) values ('6','30','200','YOGURT NATURAL','2795','80');
Insert into PRODUCTOS (PRODUCTO_ID,PROVEEDOR_ID,CATEGORIA_ID,DESCRIPCION,PRECIO_UNIT,EXISTENCIA) values ('7','30','200','LECHE CHOCOLATE','1040','90');
Insert into PRODUCTOS (PRODUCTO_ID,PROVEEDOR_ID,CATEGORIA_ID,DESCRIPCION,PRECIO_UNIT,EXISTENCIA) values ('8','40','200','YOGURT DE SABORES','1040','200');
Insert into PRODUCTOS (PRODUCTO_ID,PROVEEDOR_ID,CATEGORIA_ID,DESCRIPCION,PRECIO_UNIT,EXISTENCIA) values ('9','40','200','CREMA DE LECHE','2340','30');
Insert into PRODUCTOS (PRODUCTO_ID,PROVEEDOR_ID,CATEGORIA_ID,DESCRIPCION,PRECIO_UNIT,EXISTENCIA) values ('10','50','600','BASE DE MAQUILLAJE','9555','40');
Insert into PRODUCTOS (PRODUCTO_ID,PROVEEDOR_ID,CATEGORIA_ID,DESCRIPCION,PRECIO_UNIT,EXISTENCIA) values ('11','50','600','RIMMEL','8385','20');
Insert into PRODUCTOS (PRODUCTO_ID,PROVEEDOR_ID,CATEGORIA_ID,DESCRIPCION,PRECIO_UNIT,EXISTENCIA) values ('13','60','600','SOMBRA DE OJOS','6370','100');

Insert into PROVEEDORES (PROVEEDOR_ID,NOMBRE_PROV,CONTACTO,CELULAR_PROV,FIJO_PROV,estado) values ('10','DON DIEGO','MANUEL ANDRADE','099234567','2124456',null);
Insert into PROVEEDORES (PROVEEDOR_ID,NOMBRE_PROV,CONTACTO,CELULAR_PROV,FIJO_PROV,estado) values ('20','PRONACA','JUAN PEREZ','0923434467','2124456',null);
Insert into PROVEEDORES (PROVEEDOR_ID,NOMBRE_PROV,CONTACTO,CELULAR_PROV,FIJO_PROV,estado) values ('30','TONY','JORGE BRITO','099234567','2124456',null);
Insert into PROVEEDORES (PROVEEDOR_ID,NOMBRE_PROV,CONTACTO,CELULAR_PROV,FIJO_PROV,estado) values ('40','MIRAFLORES','MARIA PAZ','098124498','2458799','OK');
Insert into PROVEEDORES (PROVEEDOR_ID,NOMBRE_PROV,CONTACTO,CELULAR_PROV,FIJO_PROV,estado) values ('50','ALMAY','PEDRO GONZALEZ','097654567','2507190',null);
Insert into PROVEEDORES (PROVEEDOR_ID,NOMBRE_PROV,CONTACTO,CELULAR_PROV,FIJO_PROV,estado) values ('60','REVLON','MONICA SALAS','099245678','2609876',null);
Insert into PROVEEDORES (PROVEEDOR_ID,NOMBRE_PROV,CONTACTO,CELULAR_PROV,FIJO_PROV,estado) values ('70','YANBAL','BETY ARIAS','098124458','2450887',null);
Insert into PROVEEDORES (PROVEEDOR_ID,NOMBRE_PROV,CONTACTO,CELULAR_PROV,FIJO_PROV,estado) values ('120','JURIS','MANUEL ANDRADE','099234567','2124456',null);
Insert into PROVEEDORES (PROVEEDOR_ID,NOMBRE_PROV,CONTACTO,CELULAR_PROV,FIJO_PROV,estado) values ('80','CLEANER','MANUEL ANDRADE','099234567','2124456',null);
Insert into PROVEEDORES (PROVEEDOR_ID,NOMBRE_PROV,CONTACTO,CELULAR_PROV,FIJO_PROV,estado) values ('90','BAYER','MANUEL ANDRADE','099234567','2124456',null);
Insert into PROVEEDORES (PROVEEDOR_ID,NOMBRE_PROV,CONTACTO,CELULAR_PROV,FIJO_PROV,estado) values ('110','PALMOLIVE','MANUEL ANDRADE','099234567','2124456',null);

--------------------------------------------------------
--  Constraints for Table CLIENTES
--------------------------------------------------------

  ALTER TABLE CLIENTES ADD CONSTRAINT "PK_CLIENTES" PRIMARY KEY ("CLIENTE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE CLIENTES MODIFY ("DIRECCION_CLI" NOT NULL ENABLE);
  ALTER TABLE CLIENTES MODIFY ("NOMBRE_CONTACTO" NOT NULL ENABLE);
  ALTER TABLE CLIENTES MODIFY ("NOMBRE_CIA" NOT NULL ENABLE);
  ALTER TABLE CLIENTES MODIFY ("CEDULA_RUC" NOT NULL ENABLE);
  ALTER TABLE CLIENTES MODIFY ("CLIENTE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMUNA
--------------------------------------------------------

ALTER TABLE COMUNA ADD CONSTRAINT PK_COMUNA PRIMARY KEY(ID_COMUNA);
--------------------------------------------------------
--  Constraints for Table ORDENES
--------------------------------------------------------


  ALTER TABLE ORDENES ADD CONSTRAINT "PK_ORDENES" PRIMARY KEY ("ORDEN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE ORDENES MODIFY ("FECHA_ORDEN" NOT NULL ENABLE);
  ALTER TABLE ORDENES MODIFY ("CLIENTE_ID" NOT NULL ENABLE);
  ALTER TABLE ORDENES MODIFY ("EMPLEADO_ID" NOT NULL ENABLE);
  ALTER TABLE ORDENES MODIFY ("ORDEN_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROVEEDORES
--------------------------------------------------------

  ALTER TABLE PROVEEDORES ADD CONSTRAINT "PK_PROVEEDORES" PRIMARY KEY ("PROVEEDOR_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE PROVEEDORES MODIFY ("CONTACTO" NOT NULL ENABLE);
  ALTER TABLE PROVEEDORES MODIFY ("NOMBRE_PROV" NOT NULL ENABLE);
  ALTER TABLE PROVEEDORES MODIFY ("PROVEEDOR_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCTOS
--------------------------------------------------------

  ALTER TABLE PRODUCTOS ADD CONSTRAINT "PK_PRODUCTOS" PRIMARY KEY ("PRODUCTO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE PRODUCTOS MODIFY ("EXISTENCIA" NOT NULL ENABLE);
  ALTER TABLE PRODUCTOS MODIFY ("PRECIO_UNIT" NOT NULL ENABLE);
  ALTER TABLE PRODUCTOS MODIFY ("CATEGORIA_ID" NOT NULL ENABLE);
  ALTER TABLE PRODUCTOS MODIFY ("PROVEEDOR_ID" NOT NULL ENABLE);
  ALTER TABLE PRODUCTOS MODIFY ("PRODUCTO_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DETALLE_ORDENES
--------------------------------------------------------

  ALTER TABLE DETALLE_ORDENES ADD CONSTRAINT "PK_DETALLE_ORDENES" PRIMARY KEY ("ORDEN_ID", "DETALLE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE DETALLE_ORDENES MODIFY ("CANTIDAD" NOT NULL ENABLE);
  ALTER TABLE DETALLE_ORDENES MODIFY ("PRODUCTO_ID" NOT NULL ENABLE);
  ALTER TABLE DETALLE_ORDENES MODIFY ("DETALLE_ID" NOT NULL ENABLE);
  ALTER TABLE DETALLE_ORDENES MODIFY ("ORDEN_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMISIONES
--------------------------------------------------------

  ALTER TABLE COMISIONES ADD CONSTRAINT "PK_COMISION" PRIMARY KEY ("ID_COMISION")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE COMISIONES MODIFY ("FECHA_COMISION" NOT NULL ENABLE);
  ALTER TABLE COMISIONES MODIFY ("VALOR_COMISION" NOT NULL ENABLE);
  ALTER TABLE COMISIONES MODIFY ("NRO_BOLETA" NOT NULL ENABLE);
  ALTER TABLE COMISIONES MODIFY ("EMPLEADO_ID" NOT NULL ENABLE);
  ALTER TABLE COMISIONES MODIFY ("ID_COMISION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BOLETAS
--------------------------------------------------------

  ALTER TABLE BOLETAS ADD PRIMARY KEY ("NRO_BOLETA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE BOLETAS MODIFY ("TOTAL" NOT NULL ENABLE);
  ALTER TABLE BOLETAS MODIFY ("IVA" NOT NULL ENABLE);
  ALTER TABLE BOLETAS MODIFY ("VALOR_NETO" NOT NULL ENABLE);
  ALTER TABLE BOLETAS MODIFY ("EMPLEADO_ID" NOT NULL ENABLE);
  ALTER TABLE BOLETAS MODIFY ("FECHA" NOT NULL ENABLE);
  ALTER TABLE BOLETAS MODIFY ("ORDEN_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EMPLEADOS
--------------------------------------------------------

  ALTER TABLE EMPLEADOS ADD CONSTRAINT "PK_EMPLEADOS" PRIMARY KEY ("EMPLEADO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE EMPLEADOS MODIFY ("EMPLEADO_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CATEGORIAS
--------------------------------------------------------

  ALTER TABLE CATEGORIAS ADD CONSTRAINT "PK_CATEGORIAS" PRIMARY KEY ("CATEGORIA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE CATEGORIAS MODIFY ("NOMBRE_CAT" NOT NULL ENABLE);
  ALTER TABLE CATEGORIAS MODIFY ("CATEGORIA_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table BOLETAS
--------------------------------------------------------

  ALTER TABLE BOLETAS ADD CONSTRAINT "FK_BOLETA_EMPLEADO" FOREIGN KEY ("EMPLEADO_ID")
	  REFERENCES EMPLEADOS ("EMPLEADO_ID") ENABLE;
  ALTER TABLE BOLETAS ADD CONSTRAINT "FK_BOLETA_ORDEN" FOREIGN KEY ("ORDEN_ID")
	  REFERENCES ORDENES ("ORDEN_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMISIONES
--------------------------------------------------------

  ALTER TABLE COMISIONES ADD CONSTRAINT "FK_COMISION_EMPLEADO" FOREIGN KEY ("EMPLEADO_ID")
	  REFERENCES EMPLEADOS ("EMPLEADO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table DETALLE_ORDENES
--------------------------------------------------------

  ALTER TABLE DETALLE_ORDENES ADD CONSTRAINT "FK_DETALLE__ORDEN_DET_ORDENES" FOREIGN KEY ("ORDEN_ID")
	  REFERENCES ORDENES ("ORDEN_ID") ENABLE;
  ALTER TABLE DETALLE_ORDENES ADD CONSTRAINT "FK_DETALLE__PROD_DETA_PRODUCTO" FOREIGN KEY ("PRODUCTO_ID")
	  REFERENCES PRODUCTOS ("PRODUCTO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EMPLEADOS
--------------------------------------------------------

  ALTER TABLE EMPLEADOS ADD CONSTRAINT "FK_EMPLEADO_REPORTA" FOREIGN KEY ("REPORTA_A")
	  REFERENCES EMPLEADOS ("EMPLEADO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDENES
--------------------------------------------------------

  ALTER TABLE ORDENES ADD CONSTRAINT "FK_ORDENES_CLIEN_ORD_CLIENTES" FOREIGN KEY ("CLIENTE_ID")
	  REFERENCES CLIENTES ("CLIENTE_ID") ENABLE;
  ALTER TABLE ORDENES ADD CONSTRAINT "FK_ORDENES_EMPLE_ORD_EMPLEADO" FOREIGN KEY ("EMPLEADO_ID")
	  REFERENCES EMPLEADOS ("EMPLEADO_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRODUCTOS
--------------------------------------------------------

  ALTER TABLE PRODUCTOS ADD CONSTRAINT "FK_PRODUCTO_CATE_PROD_CATEGORI" FOREIGN KEY ("CATEGORIA_ID")
	  REFERENCES CATEGORIAS ("CATEGORIA_ID") ENABLE;
  ALTER TABLE PRODUCTOS ADD CONSTRAINT "FK_PRODUCTO_PROV_PROD_PROVEEDO" FOREIGN KEY ("PROVEEDOR_ID")
	  REFERENCES PROVEEDORES ("PROVEEDOR_ID") ENABLE;
  
--------------------------------------------------------
--  Ref Constraints for Table EMPLEADOS
--------------------------------------------------------

ALTER TABLE CLIENTES ADD CONSTRAINT CLIENTES_Comuna_FK FOREIGN KEY ( Id_comuna ) 
REFERENCES Comuna ( Id_comuna ) NOT DEFERRABLE ;

---------------------------------------------------------------------------------------------------------------------------      
DROP TABLE INFORME_SUBIDA_COMISION
DROP TABLE RANGO_SUBIDA_COMISION
---------------------------------------------------------------------------------------------------------------------------    
--REQUERIMIENTO 1: 
SET SERVEROUTPUT ON;

-- CREACI�N DE TABLA INFORME_SUBIDA_COMISION
CREATE TABLE INFORME_SUBIDA_COMISION (
    MES_ANNIO_INFORME VARCHAR2(6),
    ID_EMPLEADO NUMBER,
    NOMBRE_COMPLETO VARCHAR2(100),
    COMISION NUMBER,
    SUELDO_ACTUAL NUMBER,
    PORCENTAJE_SUB NUMBER,
    NUEVA_COMISION NUMBER,
    CONSTRAINT INFORME_SUBIDA_COMISION_PK PRIMARY KEY (ID_EMPLEADO, MES_ANNIO_INFORME)
);

-- CREACI�N DE TABLA RANGO_SUBIDA_COMISION
CREATE TABLE RANGO_SUBIDA_COMISION (
    ID_RANGOS NUMBER(5) PRIMARY KEY,
    INICIO NUMBER(15),
    FIN NUMBER(15),
    PORCENTAJE NUMBER(15)
);

-- INSERTAR RANGOS DE COMISI�N
INSERT INTO RANGO_SUBIDA_COMISION (ID_RANGOS, INICIO, FIN, PORCENTAJE) VALUES (1, 1, 1200, 15);
INSERT INTO RANGO_SUBIDA_COMISION (ID_RANGOS, INICIO, FIN, PORCENTAJE) VALUES (2, 1201, 2300, 20);
INSERT INTO RANGO_SUBIDA_COMISION (ID_RANGOS, INICIO, FIN, PORCENTAJE) VALUES (3, 2301, 3500, 25);
INSERT INTO RANGO_SUBIDA_COMISION (ID_RANGOS, INICIO, FIN, PORCENTAJE) VALUES (4, 3501, 4500, 30);
INSERT INTO RANGO_SUBIDA_COMISION (ID_RANGOS, INICIO, FIN, PORCENTAJE) VALUES (5, 4501, 6500, 35);
INSERT INTO RANGO_SUBIDA_COMISION (ID_RANGOS, INICIO, FIN, PORCENTAJE) VALUES (6, 6501, 8900, 40);
INSERT INTO RANGO_SUBIDA_COMISION (ID_RANGOS, INICIO, FIN, PORCENTAJE) VALUES (7, 8901, 20000, 45);
INSERT INTO RANGO_SUBIDA_COMISION (ID_RANGOS, INICIO, FIN, PORCENTAJE) VALUES (8, 20001, 40000, 50);
INSERT INTO RANGO_SUBIDA_COMISION (ID_RANGOS, INICIO, FIN, PORCENTAJE) VALUES (9, 40001, 400000000, 60);

-- PROCEDIMIENTO PL/SQL PARA CALCULAR Y ACTUALIZAR LAS NUEVAS COMISIONES
DECLARE
    -- Definir variables locales
    CURSOR cur_empleados IS
        SELECT e.EMPLEADO_ID, e.NOMBRE, e.APELLIDO, e.SUELDO,
               SUM(c.VALOR_COMISION) AS TOTAL_COMISION
        FROM EMPLEADOS e
        JOIN COMISIONES c ON e.EMPLEADO_ID = c.EMPLEADO_ID
        GROUP BY e.EMPLEADO_ID, e.NOMBRE, e.APELLIDO, e.SUELDO
        ORDER BY TOTAL_COMISION DESC;  -- Ordenamos por total de comisiones

    -- Definir variables para almacenar los datos de cada empleado
    v_empleado_id EMPLEADOS.EMPLEADO_ID%TYPE;
    v_nombre EMPLEADOS.NOMBRE%TYPE;
    v_apellido EMPLEADOS.APELLIDO%TYPE;
    v_sueldo EMPLEADOS.SUELDO%TYPE;
    v_total_comisiones NUMBER := 0;
    v_nueva_comision NUMBER;
    v_porcentaje_sub NUMBER;
    v_contador NUMBER := 0;  -- Contador para limitar a los tres primeros empleados

    -- Variables para obtener el porcentaje del rango
    v_rango_inicio NUMBER;
    v_rango_fin NUMBER;
    v_porcentaje NUMBER;

BEGIN
    -- Bucle sobre los empleados, solo procesamos los tres primeros
    FOR empleado IN cur_empleados LOOP
        -- Incrementamos el contador
        v_contador := v_contador + 1;
        
        -- Solo procesamos los primeros tres empleados
        IF v_contador > 3 THEN
            EXIT;  -- Salimos del ciclo cuando ya hemos procesado tres empleados
        END IF;
        -- Guardar los datos del empleado
        v_empleado_id := empleado.EMPLEADO_ID;
        v_nombre := empleado.NOMBRE;
        v_apellido := empleado.APELLIDO;
        v_sueldo := empleado.SUELDO;
        v_total_comisiones := empleado.TOTAL_COMISION;
        -- Obtener el rango de comisi�n desde la tabla RANGO_SUBIDA_COMISION
        SELECT INICIO, FIN, PORCENTAJE
        INTO v_rango_inicio, v_rango_fin, v_porcentaje
        FROM RANGO_SUBIDA_COMISION
        WHERE v_total_comisiones BETWEEN INICIO AND FIN;
        -- Calcular la nueva comisi�n total
        v_nueva_comision := ROUND(v_total_comisiones * (1 + v_porcentaje / 100), 0);
        -- Insertar el resultado en la tabla de informe
        INSERT INTO INFORME_SUBIDA_COMISION (MES_ANNIO_INFORME, ID_EMPLEADO, NOMBRE_COMPLETO, COMISION, SUELDO_ACTUAL, PORCENTAJE_SUB, NUEVA_COMISION)
        VALUES ('042023', v_empleado_id, v_nombre || ' ' || v_apellido, v_total_comisiones, v_sueldo, v_porcentaje, v_nueva_comision);
    END LOOP;
    
    -- Mostrar el mensaje final con el total de empleados procesados
    DBMS_OUTPUT.PUT_LINE('Procedimiento PL/SQL terminado correctamente. El total de empleados con comisiones es de ' || v_contador);
    
    COMMIT;
END;

------------------------------------------------------------------------------------------------------------------------------------------

--Requerimiento 2
CREATE OR REPLACE TRIGGER CLIENTES_JORNADA
BEFORE INSERT OR UPDATE OR DELETE ON CLIENTES 
FOR EACH ROW
DECLARE 
    V_DIA NUMBER; 
    V_HORA NUMBER; 
BEGIN
    V_DIA := TO_NUMBER(TO_CHAR(SYSDATE, 'D'));  -- D�a de la semana (1=Domingo, 2=Lunes, ..., 7=S�bado)
    V_HORA := TO_NUMBER(TO_CHAR(SYSDATE, 'HH24'));  -- Hora en formato 24 horas
    
    -- Verificar si el d�a es entre lunes y viernes (2 a 6) y la hora entre 08:00 y 18:00
    IF (V_DIA BETWEEN 2 AND 6) AND (V_HORA BETWEEN 8 AND 18) THEN
        NULL;  -- Permitir la operaci�n (no se hace nada)
    ELSE
        -- Si la operaci�n se realiza fuera del horario laboral
        IF INSERTING THEN
            RAISE_APPLICATION_ERROR(-20501, 'SE DEBE INSERTAR VALORES SOLO EN LA JORNADA DE TRABAJO');
        ELSIF UPDATING THEN
            RAISE_APPLICATION_ERROR(-20503, 'SE DEBE MODIFICAR VALORES SOLO EN LA JORNADA DE TRABAJO');
        ELSIF DELETING THEN
            RAISE_APPLICATION_ERROR(-20502, 'SE DEBE ELIMINAR SOLO EN LA JORNADA DE TRABAJO');
        END IF;
    END IF;
END;
/


--INSERTAR UN CLIENTE
INSERT INTO CLIENTES ( CLIENTE_ID, CEDULA_RUC, NOMBRE_CIA, NOMBRE_CONTACTO, DIRECCION_CLI, FAX, EMAIL, CELULAR, FIJO, ID_COMUNA)
VALUES (11, '21345678', 'SUPERMERCADO TODOCARO', 'LUIS SEPULVEDA', 'VICU�A MACKENNA', NULL, NULL, NULL, NULL, 2);

--ELIMINAR A UN CLIENTE
DELETE FROM CLIENTES WHERE CLIENTE_ID = 10;

--ACTUALIZAR INFORMACION DE UN CLIENTE
UPDATE CLIENTES SET CELULAR = '9555889' WHERE CLIENTE_ID = 9;




























    
    