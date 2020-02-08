-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.1
-- PostgreSQL version: 10.0
-- Project Site: pgmodeler.io
-- Model Author: ---
-- Scrip de creación de la base de datos 

-- object: mdiaz | type: ROLE --
-- DROP ROLE IF EXISTS mdiaz;
CREATE ROLE mdiaz WITH 
	CREATEDB
	INHERIT
	LOGIN
	ENCRYPTED PASSWORD '********';
-- ddl-end --

-- object: login | type: ROLE --
-- DROP ROLE IF EXISTS login;
CREATE ROLE login WITH 
	CREATEDB
	INHERIT
	ENCRYPTED PASSWORD '********';
-- ddl-end --

-- object: createdb | type: ROLE --
-- DROP ROLE IF EXISTS createdb;
CREATE ROLE createdb WITH 
	INHERIT
	ENCRYPTED PASSWORD '********';
-- ddl-end --


-- Database creation must be done outside a multicommand file.
-- These commands were put in this file only as a convenience.
-- -- object: "SISA_development" | type: DATABASE --
-- -- DROP DATABASE IF EXISTS "SISA_development";
-- CREATE DATABASE "SISA_development"
-- 	ENCODING = 'UTF8'
-- 	LC_COLLATE = 'es_AR.UTF-8'
-- 	LC_CTYPE = 'es_AR.UTF-8'
-- 	TABLESPACE = pg_default
-- 	OWNER = mdiaz;
-- -- ddl-end --
-- 

-- object: public.schema_migrations | type: TABLE --
-- DROP TABLE IF EXISTS public.schema_migrations CASCADE;
CREATE TABLE public.schema_migrations(
	version character varying NOT NULL,
	CONSTRAINT schema_migrations_pkey PRIMARY KEY (version)

);
-- ddl-end --
ALTER TABLE public.schema_migrations OWNER TO mdiaz;
-- ddl-end --

-- object: public.ar_internal_metadata | type: TABLE --
-- DROP TABLE IF EXISTS public.ar_internal_metadata CASCADE;
CREATE TABLE public.ar_internal_metadata(
	key character varying NOT NULL,
	value character varying,
	created_at timestamp(6) NOT NULL,
	updated_at timestamp(6) NOT NULL,
	CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key)

);
-- ddl-end --
ALTER TABLE public.ar_internal_metadata OWNER TO mdiaz;
-- ddl-end --

-- object: public.clientes_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.clientes_id_seq CASCADE;
CREATE SEQUENCE public.clientes_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
-- ddl-end --
ALTER SEQUENCE public.clientes_id_seq OWNER TO mdiaz;
-- ddl-end --

-- object: public.clientes | type: TABLE --
-- DROP TABLE IF EXISTS public.clientes CASCADE;
CREATE TABLE public.clientes(
	id bigint NOT NULL DEFAULT nextval('public.clientes_id_seq'::regclass),
	id_cliente integer,
	apellido character varying,
	nombre character varying,
	domicilio character varying,
	telefono integer,
	celular character varying,
	barrio character varying,
	estado boolean,
	estado_mkt character varying,
	cuit character varying,
	correo character varying,
	observaciones_cliente character varying,
	id_rubro integer,
	id_tipo_cliente integer,
	created_at date NOT NULL,
	updated_at date NOT NULL,
	CONSTRAINT clientes_pkey PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE public.clientes OWNER TO mdiaz;
-- ddl-end --

-- object: public.certificados_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.certificados_id_seq CASCADE;
CREATE SEQUENCE public.certificados_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
-- ddl-end --
ALTER SEQUENCE public.certificados_id_seq OWNER TO mdiaz;
-- ddl-end --

-- object: public.certificados | type: TABLE --
-- DROP TABLE IF EXISTS public.certificados CASCADE;
CREATE TABLE public.certificados(
	id bigint NOT NULL DEFAULT nextval('public.certificados_id_seq'::regclass),
	id_certificado integer,
	nro_certificado integer,
	fecha_aplicacion date,
	fecha_vencimiento date,
	hora_aplicacion time,
	proximo_tratamiento date,
	estado character varying,
	id_cliente integer,
	created_at timestamp(6) NOT NULL,
	updated_at timestamp(6) NOT NULL,
	id_rubro integer,
	id_tratamiento integer,
	id_vector integer,
	superficie character varying,
	id_drogas integer,
	codigo character varying,
	id_tipo_cliente integer,
	observaciones_certificado character varying,
	id_tecnico integer,
	CONSTRAINT certificados_pkey PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE public.certificados OWNER TO mdiaz;
-- ddl-end --

-- object: public.tecnicos_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.tecnicos_id_seq CASCADE;
CREATE SEQUENCE public.tecnicos_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
-- ddl-end --
ALTER SEQUENCE public.tecnicos_id_seq OWNER TO mdiaz;
-- ddl-end --

-- object: public.tecnicos | type: TABLE --
-- DROP TABLE IF EXISTS public.tecnicos CASCADE;
CREATE TABLE public.tecnicos(
	id bigint NOT NULL DEFAULT nextval('public.tecnicos_id_seq'::regclass),
	dni integer,
	apellido character varying,
	nombre character varying,
	domicilio character varying,
	telefono integer,
	created_at timestamp(6) NOT NULL,
	updated_at timestamp(6) NOT NULL,
	observaciones_tecnico character varying,
	CONSTRAINT tecnicos_pkey PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE public.tecnicos OWNER TO mdiaz;
-- ddl-end --

-- object: public.tratamientos_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.tratamientos_id_seq CASCADE;
CREATE SEQUENCE public.tratamientos_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
-- ddl-end --
ALTER SEQUENCE public.tratamientos_id_seq OWNER TO mdiaz;
-- ddl-end --

-- object: public.tratamientos | type: TABLE --
-- DROP TABLE IF EXISTS public.tratamientos CASCADE;
CREATE TABLE public.tratamientos(
	id bigint NOT NULL DEFAULT nextval('public.tratamientos_id_seq'::regclass),
	descripcion_tt character varying,
	created_at timestamp(6) NOT NULL,
	updated_at timestamp(6) NOT NULL,
	CONSTRAINT tratamientos_pkey PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE public.tratamientos OWNER TO mdiaz;
-- ddl-end --

-- object: public.vectores_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.vectores_id_seq CASCADE;
CREATE SEQUENCE public.vectores_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
-- ddl-end --
ALTER SEQUENCE public.vectores_id_seq OWNER TO mdiaz;
-- ddl-end --

-- object: public.vectores | type: TABLE --
-- DROP TABLE IF EXISTS public.vectores CASCADE;
CREATE TABLE public.vectores(
	id bigint NOT NULL DEFAULT nextval('public.vectores_id_seq'::regclass),
	descripcion_tv character varying,
	created_at timestamp(6) NOT NULL,
	updated_at timestamp(6) NOT NULL,
	CONSTRAINT vectores_pkey PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE public.vectores OWNER TO mdiaz;
-- ddl-end --

-- object: public.drogas_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.drogas_id_seq CASCADE;
CREATE SEQUENCE public.drogas_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
-- ddl-end --
ALTER SEQUENCE public.drogas_id_seq OWNER TO mdiaz;
-- ddl-end --

-- object: public.drogas | type: TABLE --
-- DROP TABLE IF EXISTS public.drogas CASCADE;
CREATE TABLE public.drogas(
	id bigint NOT NULL DEFAULT nextval('public.drogas_id_seq'::regclass),
	descripcion_td character varying,
	created_at timestamp(6) NOT NULL,
	updated_at timestamp(6) NOT NULL,
	CONSTRAINT drogas_pkey PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE public.drogas OWNER TO mdiaz;
-- ddl-end --

-- object: public.tipos_clientes_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.tipos_clientes_id_seq CASCADE;
CREATE SEQUENCE public.tipos_clientes_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
-- ddl-end --
ALTER SEQUENCE public.tipos_clientes_id_seq OWNER TO mdiaz;
-- ddl-end --

-- object: public.tipos_clientes | type: TABLE --
-- DROP TABLE IF EXISTS public.tipos_clientes CASCADE;
CREATE TABLE public.tipos_clientes(
	id bigint NOT NULL DEFAULT nextval('public.tipos_clientes_id_seq'::regclass),
	descripcion_tc character varying,
	created_at timestamp(6) NOT NULL,
	updated_at timestamp(6) NOT NULL,
	CONSTRAINT tipos_clientes_pkey PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE public.tipos_clientes OWNER TO mdiaz;
-- ddl-end --

-- object: public.rubros_id_seq | type: SEQUENCE --
-- DROP SEQUENCE IF EXISTS public.rubros_id_seq CASCADE;
CREATE SEQUENCE public.rubros_id_seq
	INCREMENT BY 1
	MINVALUE 1
	MAXVALUE 9223372036854775807
	START WITH 1
	CACHE 1
	NO CYCLE
	OWNED BY NONE;
-- ddl-end --
ALTER SEQUENCE public.rubros_id_seq OWNER TO mdiaz;
-- ddl-end --

-- object: public.rubros | type: TABLE --
-- DROP TABLE IF EXISTS public.rubros CASCADE;
CREATE TABLE public.rubros(
	id bigint NOT NULL DEFAULT nextval('public.rubros_id_seq'::regclass),
	descripcion_tr character varying,
	created_at date NOT NULL,
	updated_at date NOT NULL,
	CONSTRAINT rubros_pkey PRIMARY KEY (id)

);
-- ddl-end --
ALTER TABLE public.rubros OWNER TO mdiaz;
-- ddl-end --


