INSERT INTO public.clientes(
	id, id_cliente, apellido, nombre, domicilio, telefono, celular, barrio, rubro, estado, estado_mkt, created_at, updated_at) VALUES
 (5,1,'TAPIA','JOSE','LOS PERALES 305',4398335,'154073783','TRES CERRITOS','DOMICILIO PARTICULAR',true,'1','2020/02/08','2020/02/08');
 (6,2,'GUTIERREZ','PAOLA DANIELA','BLOCK 4 DEPTO 10',4244144,'154123412','JUAN PALBO II','LOCAL COMERCIAL',true,'1','2020/02/08','2020/02/08'),
 (7,3,'CUPITA - DESPENSA SAN CAYETANO ','MIRTA','MANZANA Nº 423 B - CASA N°1',NULL,NULL,'17 DE OCTUBRE','DESPENSA ',true,'1','2020/02/08','2020/02/08'),
 (8,4,'ABAN','RAMIRO','SANTIAGO DEL ESTERO ESQ PUEYREDON',NULL,NULL,'CENTRO','DESPENSA',true,'1','2020/02/08','2020/02/08'),
 (9,5,'','','','','','','',true,'1','2020/02/08','2020/02/08'),
 (10,6,'ACHA','MARIA','MATIENZO  ESQ  LAS  HERAS',4397301,NULL,'MIGUEL  ORTIZ','DESPENSA',true,'1','2020/02/08','2020/02/08'),
 (11,7,'ACOSTA','JOSÉ','MANZANA Nº  422 - CASA   Nº 14',NULL,'154749362','VIRGEN DEL ROSARIO DE SAN NICOLAS','CARNICERIA                    C.50',true,'1','2020/02/08','2020/02/08'),
 (12,8,'ZOLOZA','AGUEDA','ANGEL  ROSAS   Nº 648',4219407,NULL,'AUTODROMO','DESPENSA         C  25',true,'1','2020/02/08','2020/02/08'),
 (13,9,'ZOLOZA','AGUEDA','PJE.  SAN  SILVESTRE   Nº 1404',4219407,NULL,'VILLA  LUJAN','DESPENSA        C 25',true,'1','2020/02/08','2020/02/08'),
 (14,10,'AGUDO','JOSE   CEFERINO','JUAN  XIII    Nº 1165',4341672,NULL,'VILLA  LOS  SAUCES','DESPENSA              C 60',true,'1','2020/02/08','2020/02/08');

id, 
id_cliente, 
apellido, 
nombre, 
domicilio, 
telefono, 
celular, 
barrio, 
rubro, 
estado, 
estado_mkt, 
created_at, 
updated_at

INSERT INTO certificados (id_certificado,nro_certificado,rubro,tratamiento,otro_tratamiento,vectores_tratados,otros_vectores,supercie_tratada,veneno_clase,droga_usada,otra_droga_usada,fecha_aplicacion,fecha_venciiento,hora_aplicacion,proximo_tratamiento,estado,importe,id_cliente,id_tipo,observaciones) VALUES 
 (6,3019,4,4,NULL,4,NULL,'200','C',1,NULL,'2009-06-12','2009-10-12','20:00:00','2009-07-12','*',0.00,19,1,NULL),
 (7,3020,1,1,NULL,1,NULL,'400','C',1,NULL,'2009-06-12','2009-09-12','20:00:00','2009-09-12',' ',135.00,13,1,NULL),
 (8,3021,1,1,NULL,1,NULL,'200','C',1,NULL,'2009-06-12','2009-09-10','19:31:31','2009-09-10',' ',200.00,2003,1,NULL),
 (9,2774,1,1,NULL,1,NULL,'24','C',1,NULL,'2014-11-01','2015-02-01','21:30:00','2015-02-01',' ',250.00,1208,2,NULL),
 (10,2334,1,1,NULL,1,NULL,NULL,NULL,1,NULL,'2009-11-14','2010-02-12','19:31:31','2010-02-12','*',0.00,12,1,NULL),
 (11,2773,1,2,NULL,3,NULL,'100','C  GEL',1,NULL,'2012-06-08','2012-10-06','19:31:31','2012-10-06',' ',350.00,1015,2,NULL),
 (12,652,1,1,NULL,1,NULL,'34  M2','C',1,NULL,'2012-06-14','2012-10-12','13:00:00','2012-10-12',' ',60.00,47,1,NULL);

CREATE TABLE Certificados1 AS SELECT 
	id bigint NOT NULL DEFAULT nextval('certificados_id_seq'::regclass),
    id_certificado integer,
    nro_certificado integer,
    fecha_aplicacion date,
    fecha_vencimiento date,
    hora_aplicacion time without time zone,
    proximo_tratamiento date,
    estado character varying COLLATE pg_catalog."default",
    id_cliente integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    id_rubro integer,
    id_tratamiento integer,
    id_vector integer,
    superficie character varying COLLATE pg_catalog."default",
    id_drogas integer,
    codigo character varying COLLATE pg_catalog."default",
    id_tipo_cliente integer,
    observaciones_certificado character varying COLLATE pg_catalog."default",
    id_tecnico integer,
    CONSTRAINT certificados_pkey PRIMARY KEY (id)
FROM Certificados;

#INSERT INTO certificados (id_certificado,nro_certificado,rubro,tratamiento,otro_tratamiento,vectores_tratados,otros_vectores,supercie_tratada,veneno_clase,droga_usada,otra_droga_usada,fecha_aplicacion,fecha_venciiento,hora_aplicacion,proximo_tratamiento,estado,importe,id_cliente,id_tipo,observaciones) VALUES 


#INSERT INTO public.tecnicos(
#	id, dni, apellido, nombre, domicilio, telefono, created_at, updated_at)
#	VALUES (, ?, ?, ?, ?, ?, ?, ?);

#SELECT id, dni, apellido, nombre, domicilio, telefono, created_at, updated_at
#FROM public.tecnicos;