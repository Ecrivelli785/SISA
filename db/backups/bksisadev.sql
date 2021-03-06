PGDMP     3                    x            SISA_development %   10.10 (Ubuntu 10.10-0ubuntu0.18.04.1) %   10.10 (Ubuntu 10.10-0ubuntu0.18.04.1) M    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                        0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16431    SISA_development    DATABASE     �   CREATE DATABASE "SISA_development" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_AR.UTF-8' LC_CTYPE = 'es_AR.UTF-8';
 "   DROP DATABASE "SISA_development";
             mdiaz    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    13081    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16441    ar_internal_metadata    TABLE     �   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         mdiaz    false    3            �            1259    17240 	   buscadors    TABLE     �   CREATE TABLE public.buscadors (
    id bigint NOT NULL,
    palabra character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.buscadors;
       public         mdiaz    false    3            �            1259    17238    buscadors_id_seq    SEQUENCE     y   CREATE SEQUENCE public.buscadors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.buscadors_id_seq;
       public       mdiaz    false    3    219                       0    0    buscadors_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.buscadors_id_seq OWNED BY public.buscadors.id;
            public       mdiaz    false    218            �            1259    16462    certificados    TABLE     o  CREATE TABLE public.certificados (
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
     DROP TABLE public.certificados;
       public         mdiaz    false    3            �            1259    16460    certificados_id_seq    SEQUENCE     |   CREATE SEQUENCE public.certificados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.certificados_id_seq;
       public       mdiaz    false    3    205                       0    0    certificados_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.certificados_id_seq OWNED BY public.certificados.id;
            public       mdiaz    false    204            �            1259    16451    clientes    TABLE       CREATE TABLE public.clientes (
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
    DROP TABLE public.clientes;
       public         mdiaz    false    3            �            1259    16449    clientes_id_seq    SEQUENCE     x   CREATE SEQUENCE public.clientes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.clientes_id_seq;
       public       mdiaz    false    3    203                       0    0    clientes_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;
            public       mdiaz    false    202            �            1259    17151    drogas    TABLE     �   CREATE TABLE public.drogas (
    id bigint NOT NULL,
    descripcion_td character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.drogas;
       public         mdiaz    false    3            �            1259    17149    drogas_id_seq    SEQUENCE     v   CREATE SEQUENCE public.drogas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.drogas_id_seq;
       public       mdiaz    false    3    213                       0    0    drogas_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.drogas_id_seq OWNED BY public.drogas.id;
            public       mdiaz    false    212            �            1259    17173    rubros    TABLE     �   CREATE TABLE public.rubros (
    id bigint NOT NULL,
    descripcion_tr character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.rubros;
       public         mdiaz    false    3            �            1259    17171    rubros_id_seq    SEQUENCE     v   CREATE SEQUENCE public.rubros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.rubros_id_seq;
       public       mdiaz    false    217    3            	           0    0    rubros_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.rubros_id_seq OWNED BY public.rubros.id;
            public       mdiaz    false    216            �            1259    16433    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         mdiaz    false    3            �            1259    17101    tecnicos    TABLE     \  CREATE TABLE public.tecnicos (
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
    DROP TABLE public.tecnicos;
       public         mdiaz    false    3            �            1259    17099    tecnicos_id_seq    SEQUENCE     x   CREATE SEQUENCE public.tecnicos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tecnicos_id_seq;
       public       mdiaz    false    3    207            
           0    0    tecnicos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tecnicos_id_seq OWNED BY public.tecnicos.id;
            public       mdiaz    false    206            �            1259    17162    tipos_clientes    TABLE     �   CREATE TABLE public.tipos_clientes (
    id bigint NOT NULL,
    descripcion_tc character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 "   DROP TABLE public.tipos_clientes;
       public         mdiaz    false    3            �            1259    17160    tipos_clientes_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.tipos_clientes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tipos_clientes_id_seq;
       public       mdiaz    false    3    215                       0    0    tipos_clientes_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tipos_clientes_id_seq OWNED BY public.tipos_clientes.id;
            public       mdiaz    false    214            �            1259    17129    tratamientos    TABLE     �   CREATE TABLE public.tratamientos (
    id bigint NOT NULL,
    descripcion_tt character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
     DROP TABLE public.tratamientos;
       public         mdiaz    false    3            �            1259    17127    tratamientos_id_seq    SEQUENCE     |   CREATE SEQUENCE public.tratamientos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tratamientos_id_seq;
       public       mdiaz    false    209    3                       0    0    tratamientos_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tratamientos_id_seq OWNED BY public.tratamientos.id;
            public       mdiaz    false    208            �            1259    17140    vectores    TABLE     �   CREATE TABLE public.vectores (
    id bigint NOT NULL,
    descripcion_tv character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.vectores;
       public         mdiaz    false    3            �            1259    17138    vectores_id_seq    SEQUENCE     x   CREATE SEQUENCE public.vectores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.vectores_id_seq;
       public       mdiaz    false    3    211                       0    0    vectores_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.vectores_id_seq OWNED BY public.vectores.id;
            public       mdiaz    false    210            Y           2604    17243    buscadors id    DEFAULT     l   ALTER TABLE ONLY public.buscadors ALTER COLUMN id SET DEFAULT nextval('public.buscadors_id_seq'::regclass);
 ;   ALTER TABLE public.buscadors ALTER COLUMN id DROP DEFAULT;
       public       mdiaz    false    218    219    219            R           2604    16465    certificados id    DEFAULT     r   ALTER TABLE ONLY public.certificados ALTER COLUMN id SET DEFAULT nextval('public.certificados_id_seq'::regclass);
 >   ALTER TABLE public.certificados ALTER COLUMN id DROP DEFAULT;
       public       mdiaz    false    205    204    205            Q           2604    16454    clientes id    DEFAULT     j   ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);
 :   ALTER TABLE public.clientes ALTER COLUMN id DROP DEFAULT;
       public       mdiaz    false    202    203    203            V           2604    17154 	   drogas id    DEFAULT     f   ALTER TABLE ONLY public.drogas ALTER COLUMN id SET DEFAULT nextval('public.drogas_id_seq'::regclass);
 8   ALTER TABLE public.drogas ALTER COLUMN id DROP DEFAULT;
       public       mdiaz    false    212    213    213            X           2604    17176 	   rubros id    DEFAULT     f   ALTER TABLE ONLY public.rubros ALTER COLUMN id SET DEFAULT nextval('public.rubros_id_seq'::regclass);
 8   ALTER TABLE public.rubros ALTER COLUMN id DROP DEFAULT;
       public       mdiaz    false    217    216    217            S           2604    17104    tecnicos id    DEFAULT     j   ALTER TABLE ONLY public.tecnicos ALTER COLUMN id SET DEFAULT nextval('public.tecnicos_id_seq'::regclass);
 :   ALTER TABLE public.tecnicos ALTER COLUMN id DROP DEFAULT;
       public       mdiaz    false    207    206    207            W           2604    17165    tipos_clientes id    DEFAULT     v   ALTER TABLE ONLY public.tipos_clientes ALTER COLUMN id SET DEFAULT nextval('public.tipos_clientes_id_seq'::regclass);
 @   ALTER TABLE public.tipos_clientes ALTER COLUMN id DROP DEFAULT;
       public       mdiaz    false    214    215    215            T           2604    17132    tratamientos id    DEFAULT     r   ALTER TABLE ONLY public.tratamientos ALTER COLUMN id SET DEFAULT nextval('public.tratamientos_id_seq'::regclass);
 >   ALTER TABLE public.tratamientos ALTER COLUMN id DROP DEFAULT;
       public       mdiaz    false    209    208    209            U           2604    17143    vectores id    DEFAULT     j   ALTER TABLE ONLY public.vectores ALTER COLUMN id SET DEFAULT nextval('public.vectores_id_seq'::regclass);
 :   ALTER TABLE public.vectores ALTER COLUMN id DROP DEFAULT;
       public       mdiaz    false    211    210    211            �          0    16441    ar_internal_metadata 
   TABLE DATA               R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public       mdiaz    false    201   V       �          0    17240 	   buscadors 
   TABLE DATA               H   COPY public.buscadors (id, palabra, created_at, updated_at) FROM stdin;
    public       mdiaz    false    219   iV       �          0    16462    certificados 
   TABLE DATA               >  COPY public.certificados (id, id_certificado, nro_certificado, fecha_aplicacion, fecha_vencimiento, hora_aplicacion, proximo_tratamiento, estado, id_cliente, created_at, updated_at, id_rubro, id_tratamiento, id_vector, superficie, id_drogas, codigo, id_tipo_cliente, observaciones_certificado, id_tecnico) FROM stdin;
    public       mdiaz    false    205   �V       �          0    16451    clientes 
   TABLE DATA               �   COPY public.clientes (id, id_cliente, apellido, nombre, domicilio, celular, barrio, estado, estado_mkt, created_at, updated_at, cuit, correo, observaciones_cliente, id_tipo_cliente, id_rubro, telefono) FROM stdin;
    public       mdiaz    false    203   �V       �          0    17151    drogas 
   TABLE DATA               L   COPY public.drogas (id, descripcion_td, created_at, updated_at) FROM stdin;
    public       mdiaz    false    213   �X       �          0    17173    rubros 
   TABLE DATA               L   COPY public.rubros (id, descripcion_tr, created_at, updated_at) FROM stdin;
    public       mdiaz    false    217   Y       �          0    16433    schema_migrations 
   TABLE DATA               4   COPY public.schema_migrations (version) FROM stdin;
    public       mdiaz    false    200   bY       �          0    17101    tecnicos 
   TABLE DATA               �   COPY public.tecnicos (id, dni, apellido, nombre, domicilio, telefono, created_at, updated_at, observaciones_tecnico) FROM stdin;
    public       mdiaz    false    207   Z       �          0    17162    tipos_clientes 
   TABLE DATA               T   COPY public.tipos_clientes (id, descripcion_tc, created_at, updated_at) FROM stdin;
    public       mdiaz    false    215   %Z       �          0    17129    tratamientos 
   TABLE DATA               R   COPY public.tratamientos (id, descripcion_tt, created_at, updated_at) FROM stdin;
    public       mdiaz    false    209   �Z       �          0    17140    vectores 
   TABLE DATA               N   COPY public.vectores (id, descripcion_tv, created_at, updated_at) FROM stdin;
    public       mdiaz    false    211   �Z                  0    0    buscadors_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.buscadors_id_seq', 1, false);
            public       mdiaz    false    218                       0    0    certificados_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.certificados_id_seq', 1, true);
            public       mdiaz    false    204                       0    0    clientes_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.clientes_id_seq', 4, true);
            public       mdiaz    false    202                       0    0    drogas_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.drogas_id_seq', 2, true);
            public       mdiaz    false    212                       0    0    rubros_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.rubros_id_seq', 12, true);
            public       mdiaz    false    216                       0    0    tecnicos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tecnicos_id_seq', 1, false);
            public       mdiaz    false    206                       0    0    tipos_clientes_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tipos_clientes_id_seq', 5, true);
            public       mdiaz    false    214                       0    0    tratamientos_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tratamientos_id_seq', 4, true);
            public       mdiaz    false    208                       0    0    vectores_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.vectores_id_seq', 5, true);
            public       mdiaz    false    210            ]           2606    16448 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public         mdiaz    false    201            o           2606    17248    buscadors buscadors_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.buscadors
    ADD CONSTRAINT buscadors_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.buscadors DROP CONSTRAINT buscadors_pkey;
       public         mdiaz    false    219            a           2606    16470    certificados certificados_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.certificados
    ADD CONSTRAINT certificados_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.certificados DROP CONSTRAINT certificados_pkey;
       public         mdiaz    false    205            _           2606    16459    clientes clientes_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public         mdiaz    false    203            i           2606    17159    drogas drogas_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.drogas
    ADD CONSTRAINT drogas_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.drogas DROP CONSTRAINT drogas_pkey;
       public         mdiaz    false    213            m           2606    17181    rubros rubros_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.rubros
    ADD CONSTRAINT rubros_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.rubros DROP CONSTRAINT rubros_pkey;
       public         mdiaz    false    217            [           2606    16440 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public         mdiaz    false    200            c           2606    17109    tecnicos tecnicos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tecnicos
    ADD CONSTRAINT tecnicos_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tecnicos DROP CONSTRAINT tecnicos_pkey;
       public         mdiaz    false    207            k           2606    17170 "   tipos_clientes tipos_clientes_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tipos_clientes
    ADD CONSTRAINT tipos_clientes_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.tipos_clientes DROP CONSTRAINT tipos_clientes_pkey;
       public         mdiaz    false    215            e           2606    17137    tratamientos tratamientos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tratamientos
    ADD CONSTRAINT tratamientos_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tratamientos DROP CONSTRAINT tratamientos_pkey;
       public         mdiaz    false    209            g           2606    17148    vectores vectores_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.vectores
    ADD CONSTRAINT vectores_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.vectores DROP CONSTRAINT vectores_pkey;
       public         mdiaz    false    211            �   ?   x�K�+�,���M�+�LI-K��/ ���t�t-�M�L�L�,L͍�Hq��qqq ��R      �      x������ � �      �   H   x�3�4�460��420��50�54�0 L+�J���J�JS9QU����&@ ��d^bJ"�!W� H��      �   �  x���M��0���)x���ę%#����Jr�1f�r�ަ�.ۋ��t���đ!��#)5�����>�.��6�i��<�7=�TM���mux��>�6;=�ipgI^�s¶ҏ;Sumwh!Gݲ�˒V!���i�Ncy����{����<d��*��i���H�GA�V;h���˄[UN�D�T��3g
�pq1\(Lï�h��`)��uQ�;@�y<F^��БDR��ⳣ���GN�������#���YYϮ�g{ �T������a\��SB|Ҏ�r��N��Qbv�:L�b$�eR~��;5�y���ڔVv��7pu��a�<J�4�KC��:��Ig� �x�H��u	�RVO؛%��,}��JS[x�����KΘ��j#���2%�꼎6��m_�S���e���k�G���W������=N���5Z^g���f���E��      �   =   x�3��,J-)ʯLI-�4202�50�5�P00�#lb\F�NE���)�9�y�D����� ���      �   L   x���H,.I�I-�L�4202�50�5�P00�#lb\��.���y�$�1���ZD�#N�Ĳļ������ m,�      �   �   x�]��C!����8�K���HWj�~"TTD"��X�~��B2�aE�	��;y��SX�RVY�	���c�	�:�F����(����hg�}�ª��h��Whr�����ݮ�,#4��*����ꌉ���c�p�s��7����9��5�� ��p�      �      x������ � �      �   W   x�3�t��M-J�L��4202�50�5�P00�#lb\F��y)��%E�h2�tM)MNL���#A�	�kqIb		:L9�K��V���� ��7d      �   F   x�3�t,.H-*����4202�50�5�P00�#lb\F����D+7��KM�I$Z�	�IQ~1��c���� w�(-      �   R   x�3���+NM.�/�4202�50�5�P00�#lb\F�A��)�E��k1���I$M�	�SbrIjQf"�zL9�K�H�J� �6X     