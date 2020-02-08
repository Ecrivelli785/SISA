--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

-- Started on 2020-02-01 19:13:38 -03

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
-- TOC entry 2990 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 16441)
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
-- TOC entry 201 (class 1259 OID 16462)
-- Name: certificados; Type: TABLE; Schema: public; Owner: mdiaz
--

CREATE TABLE public.certificados (
    id bigint NOT NULL,
    id_certificado integer,
    nro_certificado integer,
    rubro character varying,
    tratamiento character varying,
    otro_tratamiento character varying,
    vectores_tratados integer,
    otros_vectores character varying,
    superficie_tratada character varying,
    veneno_clase character varying,
    droga_usada integer,
    otra_droga_usada character varying,
    fecha_aplicacion date,
    fecha_vencimiento date,
    hora_aplicacion time without time zone,
    proximo_tratamiento date,
    estado character varying,
    importe double precision,
    id_cliente integer,
    cliente_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    observaciones text
);


ALTER TABLE public.certificados OWNER TO mdiaz;

--
-- TOC entry 200 (class 1259 OID 16460)
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
-- TOC entry 2991 (class 0 OID 0)
-- Dependencies: 200
-- Name: certificados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mdiaz
--

ALTER SEQUENCE public.certificados_id_seq OWNED BY public.certificados.id;


--
-- TOC entry 199 (class 1259 OID 16451)
-- Name: clientes; Type: TABLE; Schema: public; Owner: mdiaz
--

CREATE TABLE public.clientes (
    id bigint NOT NULL,
    id_cliente integer,
    apellido character varying,
    nombre character varying,
    domicilio character varying,
    telefono integer,
    celular character varying,
    barrio character varying,
    rubro character varying,
    estado boolean,
    estado_mkt character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.clientes OWNER TO mdiaz;

--
-- TOC entry 198 (class 1259 OID 16449)
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
-- TOC entry 2992 (class 0 OID 0)
-- Dependencies: 198
-- Name: clientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mdiaz
--

ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;


--
-- TOC entry 196 (class 1259 OID 16433)
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: mdiaz
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO mdiaz;

--
-- TOC entry 2845 (class 2604 OID 16465)
-- Name: certificados id; Type: DEFAULT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.certificados ALTER COLUMN id SET DEFAULT nextval('public.certificados_id_seq'::regclass);


--
-- TOC entry 2844 (class 2604 OID 16454)
-- Name: clientes id; Type: DEFAULT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);


--
-- TOC entry 2978 (class 0 OID 16441)
-- Dependencies: 197
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: mdiaz
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-02-01 19:15:41.528573	2020-02-01 19:15:41.528573
\.


--
-- TOC entry 2982 (class 0 OID 16462)
-- Dependencies: 201
-- Data for Name: certificados; Type: TABLE DATA; Schema: public; Owner: mdiaz
--

COPY public.certificados (id, id_certificado, nro_certificado, rubro, tratamiento, otro_tratamiento, vectores_tratados, otros_vectores, superficie_tratada, veneno_clase, droga_usada, otra_droga_usada, fecha_aplicacion, fecha_vencimiento, hora_aplicacion, proximo_tratamiento, estado, importe, id_cliente, cliente_id, created_at, updated_at, observaciones) FROM stdin;
\.


--
-- TOC entry 2980 (class 0 OID 16451)
-- Dependencies: 199
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: mdiaz
--

COPY public.clientes (id, id_cliente, apellido, nombre, domicilio, telefono, celular, barrio, rubro, estado, estado_mkt, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 2977 (class 0 OID 16433)
-- Dependencies: 196
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: mdiaz
--

COPY public.schema_migrations (version) FROM stdin;
20200130143137
20200130143248
20200130145511
\.


--
-- TOC entry 2993 (class 0 OID 0)
-- Dependencies: 200
-- Name: certificados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mdiaz
--

SELECT pg_catalog.setval('public.certificados_id_seq', 1, false);


--
-- TOC entry 2994 (class 0 OID 0)
-- Dependencies: 198
-- Name: clientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mdiaz
--

SELECT pg_catalog.setval('public.clientes_id_seq', 1, false);


--
-- TOC entry 2849 (class 2606 OID 16448)
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- TOC entry 2853 (class 2606 OID 16470)
-- Name: certificados certificados_pkey; Type: CONSTRAINT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.certificados
    ADD CONSTRAINT certificados_pkey PRIMARY KEY (id);


--
-- TOC entry 2851 (class 2606 OID 16459)
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);


--
-- TOC entry 2847 (class 2606 OID 16440)
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- TOC entry 2854 (class 1259 OID 16476)
-- Name: index_certificados_on_cliente_id; Type: INDEX; Schema: public; Owner: mdiaz
--

CREATE INDEX index_certificados_on_cliente_id ON public.certificados USING btree (cliente_id);


--
-- TOC entry 2855 (class 2606 OID 16471)
-- Name: certificados fk_rails_eb9e12893e; Type: FK CONSTRAINT; Schema: public; Owner: mdiaz
--

ALTER TABLE ONLY public.certificados
    ADD CONSTRAINT fk_rails_eb9e12893e FOREIGN KEY (cliente_id) REFERENCES public.clientes(id);


-- Completed on 2020-02-01 19:13:38 -03

--
-- PostgreSQL database dump complete
--

