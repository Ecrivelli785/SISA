--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

-- Started on 2020-02-15 11:04:36 -03

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 13081)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3076 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 201 (class 1259 OID 16441)
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: mdiaz
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO mdiaz;

--
-- TOC entry 219 (class 1259 OID 17240)
-- Name: buscadors; Type: TABLE; Schema: public; Owner: mdiaz
--

CREATE TABLE public.buscadors (
    id bigint NOT NULL,
    palabra character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.buscadors OWNER TO mdiaz;

--
-- TOC entry 218 (class 1259 OID 17238)
-- Name: buscadors_id_seq; Type: SEQUENCE; Schema: public; Owner: mdiaz
--

CREATE SEQUENCE public.buscadors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.buscadors_id_seq OWNER TO mdiaz;

--
-- TOC entry 3077 (class 0 OID 0)
-- Dependencies: 218
-- Name: buscadors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mdiaz
--

ALTER SEQUENCE public.buscadors_id_seq OWNED BY public.buscadors.id;


--
-- TOC entry 205 (class 1259 OID 16462)
-- Name: certificados; Type: TABLE; Schema: public; Owner: mdiaz
--

CREATE TABLE public.certificados (
    id bigint NOT NULL,
    id_certificado integer,
    nro_certificado integer,
    fecha_aplicacion date,
    fecha_vencimiento date,
    hora_aplicacion time without time zone,
    proximo_tratamiento date,
    estado character varying,
    id_cliente integer,
    created_at date NOT NULL,
    updated_at date NOT NULL,
    id_rubro integer,
    id_tratamiento integer,
    id_vector integer,
    superficie character varying,
    id_drogas integer,
    codigo character varying,
    id_tipo_cliente integer,
    observaciones_certificado character varying,
    id_tecnico integer
);


ALTER TABLE public.certificados OWNER TO mdiaz;

--
-- TOC entry 204 (class 1259 OID 16460)
-- Name: certificados_id_seq; Type: SEQUENCE; Schema: public; Owner: mdiaz
--

CREATE SEQUENCE public.certificados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.certificados_id_seq OWNER TO mdiaz;

--
-- TOC entry 3078 (class 0 OID 0)
-- Dependencies: 204
-- Name: certificados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mdiaz
--

ALTER SEQUENCE public.certificados_id_seq OWNED BY public.certificados.id;


--
-- TOC entry 203 (class 1259 OID 16451)
-- Name: clientes; Type: TABLE; Schema: public; Owner: mdiaz
--

CREATE TABLE public.clientes (
    id bigint NOT NULL,
    id_cliente integer,
    apellido character varying,
    nombre character varying,
    domicilio character varying,
    celular character varying,
    barrio character varying,
    estado boolean,
    estado_mkt character varying,
    created_at date NOT NULL,
    updated_at date NOT NULL,
    cuit character varying,
    correo character varying,
    observaciones_cliente character varying,
    id_tipo_cliente integer,
    id_rubro integer,
    telefono character varying
);


ALTER TABLE public.clientes OWNER TO mdiaz;

--
-- TOC entry 202 (class 1259 OID 16449)
-- Name: clientes_id_seq; Type: SEQUENCE; Schema: public; Owner: mdiaz
--

CREATE SEQUENCE public.clientes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clientes_id_seq OWNER TO mdiaz;

--
-- TOC entry 3079 (class 0 OID 0)
-- Dependencies: 202
-- Name: clientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mdiaz
--

ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;


--
-- TOC entry 213 (class 1259 OID 17151)
-- Name: drogas; Type: TABLE; Schema: public; Owner: mdiaz
--

CREATE TABLE public.drogas (
    id bigint NOT NULL,
    descripcion_td character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.drogas OWNER TO mdiaz;

--
-- TOC entry 212 (class 1259 OID 17149)
-- Name: drogas_id_seq; Type: SEQUENCE; Schema: public; Owner: mdiaz
--

CREATE SEQUENCE public.drogas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.drogas_id_seq OWNER TO mdiaz;

--
-- TOC entry 3080 (class 0 OID 0)
-- Dependencies: 212
-- Name: drogas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mdiaz
--

ALTER SEQUENCE public.drogas_id_seq OWNED BY public.drogas.id;


--
-- TOC entry 217 (class 1259 OID 17173)
-- Name: rubros; Type: TABLE; Schema: public; Owner: mdiaz
--

CREATE TABLE public.rubros (
    id bigint NOT NULL,
    descripcion_tr character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.rubros OWNER TO mdiaz;

--
-- TOC entry 216 (class 1259 OID 17171)
-- Name: rubros_id_seq; Type: SEQUENCE; Schema: public; Owner: mdiaz
--

CREATE SEQUENCE public.rubros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rubros_id_seq OWNER TO mdiaz;

--
-- TOC entry 3081 (class 0 OID 0)
-- Dependencies: 216
-- Name: rubros_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mdiaz
--

ALTER SEQUENCE public.rubros_id_seq OWNED BY public.rubros.id;


--
-- TOC entry 200 (class 1259 OID 16433)
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: mdiaz
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO mdiaz;

--
-- TOC entry 207 (class 1259 OID 17101)
-- Name: tecnicos; Type: TABLE; Schema: public; Owner: mdiaz
--

CREATE TABLE public.tecnicos (
    id bigint NOT NULL,
    dni integer,
    apellido character varying,
    nombre character varying,
    domicilio character varying,
    telefono integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    observaciones_tecnico character varying
);


ALTER TABLE public.tecnicos OWNER TO mdiaz;

--
-- TOC entry 206 (class 1259 OID 17099)
-- Name: tecnicos_id_seq; Type: SEQUENCE; Schema: public; Owner: mdiaz
--

CREATE SEQUENCE public.tecnicos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tecnicos_id_seq OWNER TO mdiaz;

--
-- TOC entry 3082 (class 0 OID 0)
-- Dependencies: 206
-- Name: tecnicos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mdiaz
--

ALTER SEQUENCE public.tecnicos_id_seq OWNED BY public.tecnicos.id;


--
-- TOC entry 215 (class 1259 OID 17162)
-- Name: tipos_clientes; Type: TABLE; Schema: public; Owner: mdiaz
--

CREATE TABLE public.tipos_clientes (
    id bigint NOT NULL,
    descripcion_tc character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.tipos_clientes OWNER TO mdiaz;

--
-- TOC entry 214 (class 1259 OID 17160)
-- Name: tipos_clientes_id_seq; Type: SEQUENCE; Schema: public; Owner: mdiaz
--

CREATE SEQUENCE public.tipos_clientes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipos_clientes_id_seq OWNER TO mdiaz;

--
-- TOC entry 3083 (class 0 OID 0)
-- Dependencies: 214
-- Name: tipos_clientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mdiaz
--

ALTER SEQUENCE public.tipos_clientes_id_seq OWNED BY public.tipos_clientes.id;


--
-- TOC entry 209 (class 1259 OID 17129)
-- Name: tratamientos; Type: TABLE; Schema: public; Owner: mdiaz
--

CREATE TABLE public.tratamientos (
    id bigint NOT NULL,
    descripcion_tt character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.tratamientos OWNER TO mdiaz;

--
-- TOC entry 208 (class 1259 OID 17127)
-- Name: tratamientos_id_seq; Type: SEQUENCE; Schema: public; Owner: mdiaz
--

CREATE SEQUENCE public.tratamientos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tratamientos_id_seq OWNER TO mdiaz;

--
-- TOC entry 3084 (class 0 OID 0)
-- Dependencies: 208
-- Name: tratamientos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mdiaz
--

ALTER SEQUENCE public.tratamientos_id_seq OWNED BY public.tratamientos.id;


--
-- TOC entry 211 (class 1259 OID 17140)
-- Name: vectores; Type: TABLE; Schema: public; Owner: mdiaz
--

CREATE TABLE public.vectores (
    id bigint NOT NULL,
    descripcion_tv character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.vectores OWNER TO mdiaz;

--
-- TOC entry 210 (class 1259 OID 17138)
-- Name: vectores_id_seq; Type: SEQUENCE; Schema: public; Owner: mdiaz
--

CREATE SEQUENCE public.vectores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vectores_id_seq OWNER TO mdiaz;

--
-- TOC entry 3085 (class 0 OID 0)
-- Dependencies: 210
-- Name: vectores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mdiaz
--

ALTER SEQUENCE public.vectores_id_seq OWNED BY public.vectores.id;


--
-- TOC entry 2905 (class 2604 OID 17243)
-- Name: buscadors id; Type: DEFAULT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.buscadors ALTER COLUMN id SET DEFAULT nextval('public.buscadors_id_seq'::regclass);


--
-- TOC entry 2898 (class 2604 OID 16465)
-- Name: certificados id; Type: DEFAULT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.certificados ALTER COLUMN id SET DEFAULT nextval('public.certificados_id_seq'::regclass);


--
-- TOC entry 2897 (class 2604 OID 16454)
-- Name: clientes id; Type: DEFAULT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);


--
-- TOC entry 2902 (class 2604 OID 17154)
-- Name: drogas id; Type: DEFAULT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.drogas ALTER COLUMN id SET DEFAULT nextval('public.drogas_id_seq'::regclass);


--
-- TOC entry 2904 (class 2604 OID 17176)
-- Name: rubros id; Type: DEFAULT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.rubros ALTER COLUMN id SET DEFAULT nextval('public.rubros_id_seq'::regclass);


--
-- TOC entry 2899 (class 2604 OID 17104)
-- Name: tecnicos id; Type: DEFAULT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.tecnicos ALTER COLUMN id SET DEFAULT nextval('public.tecnicos_id_seq'::regclass);


--
-- TOC entry 2903 (class 2604 OID 17165)
-- Name: tipos_clientes id; Type: DEFAULT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.tipos_clientes ALTER COLUMN id SET DEFAULT nextval('public.tipos_clientes_id_seq'::regclass);


--
-- TOC entry 2900 (class 2604 OID 17132)
-- Name: tratamientos id; Type: DEFAULT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.tratamientos ALTER COLUMN id SET DEFAULT nextval('public.tratamientos_id_seq'::regclass);


--
-- TOC entry 2901 (class 2604 OID 17143)
-- Name: vectores id; Type: DEFAULT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.vectores ALTER COLUMN id SET DEFAULT nextval('public.vectores_id_seq'::regclass);


--
-- TOC entry 3050 (class 0 OID 16441)
-- Dependencies: 201
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: mdiaz
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-02-01 19:15:41.528573	2020-02-01 19:15:41.528573
\.


--
-- TOC entry 3068 (class 0 OID 17240)
-- Dependencies: 219
-- Data for Name: buscadors; Type: TABLE DATA; Schema: public; Owner: mdiaz
--

COPY public.buscadors (id, palabra, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3054 (class 0 OID 16462)
-- Dependencies: 205
-- Data for Name: certificados; Type: TABLE DATA; Schema: public; Owner: mdiaz
--

COPY public.certificados (id, id_certificado, nro_certificado, fecha_aplicacion, fecha_vencimiento, hora_aplicacion, proximo_tratamiento, estado, id_cliente, created_at, updated_at, id_rubro, id_tratamiento, id_vector, superficie, id_drogas, codigo, id_tipo_cliente, observaciones_certificado, id_tecnico) FROM stdin;
1	6	3019	2009-06-12	2009-10-12	20:00:00	2009-07-12	true	1	2009-10-12	2009-10-12	1	4	4	200	1	400	1	nada	1
2	118	3021	2009-06-12	2009-10-10	19:31:00	2009-09-10	true	3	2009-10-12	2009-10-12	2	1	1	200	1	200	1	\N	1
3	6	3019	2009-06-12	2009-10-12	20:00:00	2009-07-12	1	19	2009-10-12	2009-10-12	4	4	4	200	1	0.00	1	\N	2
4	7	3020	2009-06-12	2009-09-12	20:00:00	2009-09-12	1	13	2009-10-12	2009-10-12	1	1	1	400	1	135.00	2	\N	3
5	8	3021	2009-06-12	2009-09-10	19:31:31	2009-09-10	1	2003	2009-10-12	2009-10-12	1	1	1	200	1	200.00	3	\N	4
6	9	2774	2014-11-01	2015-02-01	21:30:00	2015-02-01	1	1208	2009-10-12	2009-10-12	1	1	1	24	1	250.00	1	\N	5
7	10	2334	2009-11-14	2010-02-12	19:31:31	2010-02-12	1	12	2009-10-12	2009-10-12	1	1	1	30 M2	1	0.00	2	\N	1
8	11	2773	2012-06-08	2012-10-06	19:31:31	2012-10-06	1	1015	2009-10-12	2009-10-12	1	2	3	100	1	350.00	3	\N	2
9	12	652	2012-06-14	2012-10-12	13:00:00	2012-10-12	1	47	2009-10-12	2009-10-12	1	1	1	34  M2	1	60.00	1	\N	3
10	13	653	2012-06-14	2012-09-14	13:00:00	2012-09-14	1	48	2009-10-12	2009-10-12	1	1	1	24  M2	1	60.00	2	\N	4
11	14	654	2012-06-14	2012-10-14	14:30:00	2012-10-14	1	49	2009-10-12	2009-10-12	1	1	1	24  M2	1	120.00	3	\N	5
12	15	654	2012-06-14	2012-10-14	14:30:00	2012-10-14	1	49	2009-10-12	2009-10-12	1	1	1	30  M2	1	120.00	1	\N	1
13	16	2745	2014-10-31	2015-01-31	22:00:00	2015-01-31	1	1657	2009-10-12	2009-10-12	1	1	1	30  M2	1	100.00	2	\N	2
14	17	2773	2014-11-01	2015-02-01	20:30:00	2015-02-01	1	1015	2009-10-12	2009-10-12	1	1	1	100	1	350.00	3	\N	3
15	18	2774	2014-11-01	2015-02-01	21:30:00	2015-02-01	1	1208	2009-10-12	2009-10-12	1	1	1	40	1	250.00	1	\N	4
16	19	2776	2014-11-01	2015-02-01	16:00:00	2015-02-01	1	1839	2009-10-12	2009-10-12	1	1	1	600	1	800.00	2	\N	5
17	20	2775	2014-11-01	2015-01-01	14:30:00	2015-01-01	1	1761	2009-10-12	2009-10-12	1	1	1	300	1	800.00	3	\N	1
18	21	2777	2014-11-01	2015-02-01	18:00:00	2015-02-01	1	1814	2009-10-12	2009-10-12	1	1	1	400	1	500.00	1	\N	2
19	22	2779	2014-11-01	2015-05-01	13:00:00	2015-05-01	1	1322	2009-10-12	2009-10-12	1	1	1	400	1	300.00	2	\N	3
20	23	2780	2014-11-03	2014-12-03	15:00:00	2014-12-03	1	1373	2009-10-12	2009-10-12	1	1	1	500	1	2000.00	3	\N	4
21	24	2782	2014-11-03	2015-01-03	11:00:00	2015-01-03	1	453	2009-10-12	2009-10-12	1	1	1	200	1	450.00	1	\N	5
22	25	2783	2014-11-03	2015-02-03	21:30:00	2015-02-03	1	2349	2009-10-12	2009-10-12	1	1	1	100	1	500.00	2	\N	1
23	26	2784	2014-11-03	2015-02-03	13:00:00	2015-02-03	1	1738	2009-10-12	2009-10-12	1	1	1	300	1	100.00	3	\N	2
24	27	2785	2014-11-03	2015-02-03	13:00:00	2015-02-03	1	568	2009-10-12	2009-10-12	1	1	1	30	1	100.00	1	\N	3
25	28	2786	2014-11-03	2015-02-03	13:00:00	2015-02-03	1	1472	2009-10-12	2009-10-12	1	1	1	30	1	100.00	2	\N	4
26	29	2787	2014-11-03	2015-02-03	13:00:00	2015-02-03	1	2504	2009-10-12	2009-10-12	1	1	1	H/300	1	100.00	3	\N	5
27	30	2788	2014-11-03	2015-02-03	00:00:00	2015-02-03	1	1174	2009-10-12	2009-10-12	1	1	1	H/300	1	300.00	1	\N	1
28	31	2789	2014-11-03	2015-02-03	13:00:00	2015-02-03	1	1388	2009-10-12	2009-10-12	1	1	1	H/300	1	100.00	2	\N	2
29	32	3307	2014-11-02	2015-01-02	13:00:00	2015-01-02	1	1910	2009-10-12	2009-10-12	1	1	1	H/300	1	700.00	3	\N	3
30	33	2791	2014-11-03	2014-12-03	00:00:00	2014-12-03	1	1907	2009-10-12	2009-10-12	1	1	1	H/300	1	1500.00	1	\N	4
31	34	2792	2014-11-03	2014-12-03	00:00:00	2014-12-03	1	1909	2009-10-12	2009-10-12	1	1	1	H/300	1	700.00	2	\N	5
32	35	2793	2014-11-03	2014-12-03	13:00:00	2014-12-03	1	2503	2009-10-12	2009-10-12	1	1	1	H/300	1	150.00	3	\N	1
33	36	2795	2014-11-03	2015-01-03	14:00:00	2015-01-03	1	1086	2009-10-12	2009-10-12	1	1	1	H/300	1	450.00	1	\N	2
34	37	2796	2014-11-03	2015-01-03	14:00:00	2015-01-03	1	824	2009-10-12	2009-10-12	1	1	1	H/300	1	350.00	2	\N	3
35	38	2797	2014-11-04	2015-02-04	13:00:00	2015-02-04	1	252	2009-10-12	2009-10-12	1	1	1	H/300	1	0.00	3	\N	4
36	39	2798	2014-11-04	2015-02-04	11:00:00	2015-02-04	1	2654	2009-10-12	2009-10-12	1	1	1	H/300	1	300.00	1	\N	5
37	40	2799	2014-11-04	2015-02-04	15:00:00	2015-02-04	1	2637	2009-10-12	2009-10-12	1	1	1	H/300	1	330.00	2	\N	1
38	41	2800	2014-11-04	2015-01-04	19:00:00	2015-01-04	1	2456	2009-10-12	2009-10-12	1	1	1	H/300	1	300.00	1	\N	2
39	42	2801	2014-11-04	2015-01-04	20:00:00	2015-01-04	1	2680	2009-10-12	2009-10-12	1	1	1	H/300	1	500.00	2	\N	3
40	43	2802	2014-11-04	2015-02-04	13:00:00	2015-02-04	1	1161	2009-10-12	2009-10-12	1	1	1	H/300	1	100.00	3	\N	4
\.


--
-- TOC entry 3052 (class 0 OID 16451)
-- Dependencies: 203
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: mdiaz
--

COPY public.clientes (id, id_cliente, apellido, nombre, domicilio, celular, barrio, estado, estado_mkt, created_at, updated_at, cuit, correo, observaciones_cliente, id_tipo_cliente, id_rubro, telefono) FROM stdin;
4	1	wrwe	werwre	werwerer	4324	ewrr	t	1	2020-02-08	2020-02-08	\N	\N	\N	\N	\N	\N
5	1	TAPIA	JOSE	LOS PERALES 305	154073783	TRES CERRITOS	t	1	2020-02-08	2020-02-08	\N	\N	\N	\N	\N	\N
6	2	GUTIERREZ	PAOLA DANIELA	BLOCK 4 DEPTO 10	154123412	JUAN PALBO II	t	1	2020-02-08	2020-02-08	\N	\N	\N	\N	\N	\N
7	3	CUPITA - DESPENSA SAN CAYETANO 	MIRTA	MANZANA Nº 423 B - CASA N°1	\N	17 DE OCTUBRE	t	1	2020-02-08	2020-02-08	\N	\N	\N	\N	\N	\N
8	4	ABAN	RAMIRO	SANTIAGO DEL ESTERO ESQ PUEYREDON	\N	CENTRO	t	1	2020-02-08	2020-02-08	\N	\N	\N	\N	\N	\N
10	6	ACHA	MARIA	MATIENZO  ESQ  LAS  HERAS	\N	MIGUEL  ORTIZ	t	1	2020-02-08	2020-02-08	\N	\N	\N	\N	\N	\N
11	7	ACOSTA	JOSÉ	MANZANA Nº  422 - CASA   Nº 14	154749362	VIRGEN DEL ROSARIO DE SAN NICOLAS	t	1	2020-02-08	2020-02-08	\N	\N	\N	\N	\N	\N
12	8	ZOLOZA	AGUEDA	ANGEL  ROSAS   Nº 648	\N	AUTODROMO	t	1	2020-02-08	2020-02-08	\N	\N	\N	\N	\N	\N
13	9	ZOLOZA	AGUEDA	PJE.  SAN  SILVESTRE   Nº 1404	\N	VILLA  LUJAN	t	1	2020-02-08	2020-02-08	\N	\N	\N	\N	\N	\N
14	10	AGUDO	JOSE   CEFERINO	JUAN  XIII    Nº 1165	\N	VILLA  LOS  SAUCES	t	1	2020-02-08	2020-02-08	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 3062 (class 0 OID 17151)
-- Dependencies: 213
-- Data for Name: drogas; Type: TABLE DATA; Schema: public; Owner: mdiaz
--

COPY public.drogas (id, descripcion_td, created_at, updated_at) FROM stdin;
1	Piretroydes	2020-02-08 00:00:00	2020-02-08 00:00:00
2	Bromadilone	2020-02-08 00:00:00	2020-02-08 00:00:00
\.


--
-- TOC entry 3066 (class 0 OID 17173)
-- Dependencies: 217
-- Data for Name: rubros; Type: TABLE DATA; Schema: public; Owner: mdiaz
--

COPY public.rubros (id, descripcion_tr, created_at, updated_at) FROM stdin;
9	Pasteleria	2020-02-08 00:00:00	2020-02-08 00:00:00
10	Despensa	2020-02-08 00:00:00	2020-02-08 00:00:00
11	Hotel	2020-02-08 00:00:00	2020-02-08 00:00:00
12	Lavanderia	2020-02-08 00:00:00	2020-02-08 00:00:00
\.


--
-- TOC entry 3049 (class 0 OID 16433)
-- Dependencies: 200
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: mdiaz
--

COPY public.schema_migrations (version) FROM stdin;
20200130143137
20200130143248
20200130145511
20200201190541
20200208151907
20200208151956
20200208152052
20200208152226
20200208152513
20200208152603
20200208152803
20200208152829
20200208152906
20200208152932
20200208153205
20200208153303
20200208153323
20200208153418
20200208153452
20200208153539
20200208153702
20200208153755
20200208153845
20200208154708
20200208154803
20200208155047
20200208155153
20200208155212
20200208155235
20200208155312
20200208155359
20200208155532
20200208160637
20200208160638
20200208160639
20200208160640
20200208160641
20200208183243
20200208183318
20200208193516
\.


--
-- TOC entry 3056 (class 0 OID 17101)
-- Dependencies: 207
-- Data for Name: tecnicos; Type: TABLE DATA; Schema: public; Owner: mdiaz
--

COPY public.tecnicos (id, dni, apellido, nombre, domicilio, telefono, created_at, updated_at, observaciones_tecnico) FROM stdin;
\.


--
-- TOC entry 3064 (class 0 OID 17162)
-- Dependencies: 215
-- Data for Name: tipos_clientes; Type: TABLE DATA; Schema: public; Owner: mdiaz
--

COPY public.tipos_clientes (id, descripcion_tc, created_at, updated_at) FROM stdin;
1	Comercial	2020-02-08 00:00:00	2020-02-08 00:00:00
2	Industrial	2020-02-08 00:00:00	2020-02-08 00:00:00
3	Educacional	2020-02-08 00:00:00	2020-02-08 00:00:00
4	Estatal	2020-02-08 00:00:00	2020-02-08 00:00:00
5	Otros	2020-02-08 00:00:00	2020-02-08 00:00:00
\.


--
-- TOC entry 3058 (class 0 OID 17129)
-- Dependencies: 209
-- Data for Name: tratamientos; Type: TABLE DATA; Schema: public; Owner: mdiaz
--

COPY public.tratamientos (id, descripcion_tt, created_at, updated_at) FROM stdin;
1	Aspersion	2020-02-08 00:00:00	2020-02-08 00:00:00
2	Humo	2020-02-08 00:00:00	2020-02-08 00:00:00
3	Nebla	2020-02-08 00:00:00	2020-02-08 00:00:00
4	Otros	2020-02-08 00:00:00	2020-02-08 00:00:00
\.


--
-- TOC entry 3060 (class 0 OID 17140)
-- Dependencies: 211
-- Data for Name: vectores; Type: TABLE DATA; Schema: public; Owner: mdiaz
--

COPY public.vectores (id, descripcion_tv, created_at, updated_at) FROM stdin;
1	Insectos	2020-02-08 00:00:00	2020-02-08 00:00:00
2	Roedores	2020-02-08 00:00:00	2020-02-08 00:00:00
3	Voladores	2020-02-08 00:00:00	2020-02-08 00:00:00
4	Bacterias	2020-02-08 00:00:00	2020-02-08 00:00:00
5	Otros	2020-02-08 00:00:00	2020-02-08 00:00:00
\.


--
-- TOC entry 3086 (class 0 OID 0)
-- Dependencies: 218
-- Name: buscadors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mdiaz
--

SELECT pg_catalog.setval('public.buscadors_id_seq', 1, false);


--
-- TOC entry 3087 (class 0 OID 0)
-- Dependencies: 204
-- Name: certificados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mdiaz
--

SELECT pg_catalog.setval('public.certificados_id_seq', 40, true);


--
-- TOC entry 3088 (class 0 OID 0)
-- Dependencies: 202
-- Name: clientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mdiaz
--

SELECT pg_catalog.setval('public.clientes_id_seq', 4, true);


--
-- TOC entry 3089 (class 0 OID 0)
-- Dependencies: 212
-- Name: drogas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mdiaz
--

SELECT pg_catalog.setval('public.drogas_id_seq', 2, true);


--
-- TOC entry 3090 (class 0 OID 0)
-- Dependencies: 216
-- Name: rubros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mdiaz
--

SELECT pg_catalog.setval('public.rubros_id_seq', 12, true);


--
-- TOC entry 3091 (class 0 OID 0)
-- Dependencies: 206
-- Name: tecnicos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mdiaz
--

SELECT pg_catalog.setval('public.tecnicos_id_seq', 1, false);


--
-- TOC entry 3092 (class 0 OID 0)
-- Dependencies: 214
-- Name: tipos_clientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mdiaz
--

SELECT pg_catalog.setval('public.tipos_clientes_id_seq', 5, true);


--
-- TOC entry 3093 (class 0 OID 0)
-- Dependencies: 208
-- Name: tratamientos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mdiaz
--

SELECT pg_catalog.setval('public.tratamientos_id_seq', 4, true);


--
-- TOC entry 3094 (class 0 OID 0)
-- Dependencies: 210
-- Name: vectores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mdiaz
--

SELECT pg_catalog.setval('public.vectores_id_seq', 5, true);


--
-- TOC entry 2909 (class 2606 OID 16448)
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- TOC entry 2927 (class 2606 OID 17248)
-- Name: buscadors buscadors_pkey; Type: CONSTRAINT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.buscadors
    ADD CONSTRAINT buscadors_pkey PRIMARY KEY (id);


--
-- TOC entry 2913 (class 2606 OID 16470)
-- Name: certificados certificados_pkey; Type: CONSTRAINT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.certificados
    ADD CONSTRAINT certificados_pkey PRIMARY KEY (id);


--
-- TOC entry 2911 (class 2606 OID 16459)
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);


--
-- TOC entry 2921 (class 2606 OID 17159)
-- Name: drogas drogas_pkey; Type: CONSTRAINT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.drogas
    ADD CONSTRAINT drogas_pkey PRIMARY KEY (id);


--
-- TOC entry 2925 (class 2606 OID 17181)
-- Name: rubros rubros_pkey; Type: CONSTRAINT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.rubros
    ADD CONSTRAINT rubros_pkey PRIMARY KEY (id);


--
-- TOC entry 2907 (class 2606 OID 16440)
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- TOC entry 2915 (class 2606 OID 17109)
-- Name: tecnicos tecnicos_pkey; Type: CONSTRAINT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.tecnicos
    ADD CONSTRAINT tecnicos_pkey PRIMARY KEY (id);


--
-- TOC entry 2923 (class 2606 OID 17170)
-- Name: tipos_clientes tipos_clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.tipos_clientes
    ADD CONSTRAINT tipos_clientes_pkey PRIMARY KEY (id);


--
-- TOC entry 2917 (class 2606 OID 17137)
-- Name: tratamientos tratamientos_pkey; Type: CONSTRAINT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.tratamientos
    ADD CONSTRAINT tratamientos_pkey PRIMARY KEY (id);


--
-- TOC entry 2919 (class 2606 OID 17148)
-- Name: vectores vectores_pkey; Type: CONSTRAINT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.vectores
    ADD CONSTRAINT vectores_pkey PRIMARY KEY (id);


-- Completed on 2020-02-15 11:04:36 -03

--
-- PostgreSQL database dump complete
--

