PGDMP     '    
    	            x            SISA_development %   10.12 (Ubuntu 10.12-0ubuntu0.18.04.1)     12.1 (Ubuntu 12.1-1.pgdg18.04+1) I    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17339    SISA_development    DATABASE     �   CREATE DATABASE "SISA_development" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_AR.UTF-8' LC_CTYPE = 'es_AR.UTF-8';
 "   DROP DATABASE "SISA_development";
                enzo    false            �            1259    17349    ar_internal_metadata    TABLE     �   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public            enzo    false            �            1259    17453 	   buscadors    TABLE     �   CREATE TABLE public.buscadors (
    id bigint NOT NULL,
    palabra character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.buscadors;
       public            enzo    false            �            1259    17451    buscadors_id_seq    SEQUENCE     y   CREATE SEQUENCE public.buscadors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.buscadors_id_seq;
       public          enzo    false    215            �           0    0    buscadors_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.buscadors_id_seq OWNED BY public.buscadors.id;
          public          enzo    false    214            �            1259    17370    certificados    TABLE     �  CREATE TABLE public.certificados (
    id bigint NOT NULL,
    id_certificado integer,
    nro_certificado integer,
    fecha_aplicacion date,
    fecha_vencimiento date,
    hora_aplicacion time without time zone,
    proximo_tratamiento date,
    id_cliente integer,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    id_rubro integer,
    id_tratamiento integer,
    id_vector integer,
    superficie character varying,
    id_drogas integer,
    codigo character varying,
    id_tipo_cliente integer,
    observaciones_certificado character varying,
    id_tecnico integer,
    estado boolean,
    cliente_id integer
);
     DROP TABLE public.certificados;
       public            enzo    false            �            1259    17368    certificados_id_seq    SEQUENCE     |   CREATE SEQUENCE public.certificados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.certificados_id_seq;
       public          enzo    false    201                        0    0    certificados_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.certificados_id_seq OWNED BY public.certificados.id;
          public          enzo    false    200            �            1259    17359    clientes    TABLE     M  CREATE TABLE public.clientes (
    id bigint NOT NULL,
    id_cliente integer,
    apellido character varying,
    nombre character varying,
    domicilio character varying,
    celular character varying,
    barrio character varying,
    estado boolean,
    estado_mkt character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    cuit character varying,
    correo character varying,
    observaciones_cliente character varying,
    id_tipo_cliente integer,
    id_rubro integer,
    telefono character varying
);
    DROP TABLE public.clientes;
       public            enzo    false            �            1259    17357    clientes_id_seq    SEQUENCE     x   CREATE SEQUENCE public.clientes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.clientes_id_seq;
       public          enzo    false    199                       0    0    clientes_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.clientes_id_seq OWNED BY public.clientes.id;
          public          enzo    false    198            �            1259    17420    drogas    TABLE     �   CREATE TABLE public.drogas (
    id bigint NOT NULL,
    descripcion_td character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.drogas;
       public            enzo    false            �            1259    17418    drogas_id_seq    SEQUENCE     v   CREATE SEQUENCE public.drogas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.drogas_id_seq;
       public          enzo    false    209                       0    0    drogas_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.drogas_id_seq OWNED BY public.drogas.id;
          public          enzo    false    208            �            1259    17442    rubros    TABLE     �   CREATE TABLE public.rubros (
    id bigint NOT NULL,
    descripcion_tr character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.rubros;
       public            enzo    false            �            1259    17440    rubros_id_seq    SEQUENCE     v   CREATE SEQUENCE public.rubros_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.rubros_id_seq;
       public          enzo    false    213                       0    0    rubros_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.rubros_id_seq OWNED BY public.rubros.id;
          public          enzo    false    212            �            1259    17341    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public            enzo    false            �            1259    17387    tecnicos    TABLE     z  CREATE TABLE public.tecnicos (
    id bigint NOT NULL,
    dni integer,
    apellido character varying,
    nombre character varying,
    domicilio character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    observaciones_tecnico character varying,
    telefono character varying,
    estado boolean
);
    DROP TABLE public.tecnicos;
       public            enzo    false            �            1259    17385    tecnicos_id_seq    SEQUENCE     x   CREATE SEQUENCE public.tecnicos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tecnicos_id_seq;
       public          enzo    false    203                       0    0    tecnicos_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tecnicos_id_seq OWNED BY public.tecnicos.id;
          public          enzo    false    202            �            1259    17431    tipos_clientes    TABLE     �   CREATE TABLE public.tipos_clientes (
    id bigint NOT NULL,
    descripcion_tc character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 "   DROP TABLE public.tipos_clientes;
       public            enzo    false            �            1259    17429    tipos_clientes_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.tipos_clientes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tipos_clientes_id_seq;
       public          enzo    false    211                       0    0    tipos_clientes_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tipos_clientes_id_seq OWNED BY public.tipos_clientes.id;
          public          enzo    false    210            �            1259    17398    tratamientos    TABLE     �   CREATE TABLE public.tratamientos (
    id bigint NOT NULL,
    descripcion_tt character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
     DROP TABLE public.tratamientos;
       public            enzo    false            �            1259    17396    tratamientos_id_seq    SEQUENCE     |   CREATE SEQUENCE public.tratamientos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tratamientos_id_seq;
       public          enzo    false    205                       0    0    tratamientos_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tratamientos_id_seq OWNED BY public.tratamientos.id;
          public          enzo    false    204            �            1259    17409    vectores    TABLE     �   CREATE TABLE public.vectores (
    id bigint NOT NULL,
    descripcion_tv character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
    DROP TABLE public.vectores;
       public            enzo    false            �            1259    17407    vectores_id_seq    SEQUENCE     x   CREATE SEQUENCE public.vectores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.vectores_id_seq;
       public          enzo    false    207                       0    0    vectores_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.vectores_id_seq OWNED BY public.vectores.id;
          public          enzo    false    206            U           2604    17498    buscadors id    DEFAULT     l   ALTER TABLE ONLY public.buscadors ALTER COLUMN id SET DEFAULT nextval('public.buscadors_id_seq'::regclass);
 ;   ALTER TABLE public.buscadors ALTER COLUMN id DROP DEFAULT;
       public          enzo    false    215    214    215            N           2604    17499    certificados id    DEFAULT     r   ALTER TABLE ONLY public.certificados ALTER COLUMN id SET DEFAULT nextval('public.certificados_id_seq'::regclass);
 >   ALTER TABLE public.certificados ALTER COLUMN id DROP DEFAULT;
       public          enzo    false    201    200    201            M           2604    17500    clientes id    DEFAULT     j   ALTER TABLE ONLY public.clientes ALTER COLUMN id SET DEFAULT nextval('public.clientes_id_seq'::regclass);
 :   ALTER TABLE public.clientes ALTER COLUMN id DROP DEFAULT;
       public          enzo    false    199    198    199            R           2604    17501 	   drogas id    DEFAULT     f   ALTER TABLE ONLY public.drogas ALTER COLUMN id SET DEFAULT nextval('public.drogas_id_seq'::regclass);
 8   ALTER TABLE public.drogas ALTER COLUMN id DROP DEFAULT;
       public          enzo    false    208    209    209            T           2604    17502 	   rubros id    DEFAULT     f   ALTER TABLE ONLY public.rubros ALTER COLUMN id SET DEFAULT nextval('public.rubros_id_seq'::regclass);
 8   ALTER TABLE public.rubros ALTER COLUMN id DROP DEFAULT;
       public          enzo    false    213    212    213            O           2604    17503    tecnicos id    DEFAULT     j   ALTER TABLE ONLY public.tecnicos ALTER COLUMN id SET DEFAULT nextval('public.tecnicos_id_seq'::regclass);
 :   ALTER TABLE public.tecnicos ALTER COLUMN id DROP DEFAULT;
       public          enzo    false    202    203    203            S           2604    17504    tipos_clientes id    DEFAULT     v   ALTER TABLE ONLY public.tipos_clientes ALTER COLUMN id SET DEFAULT nextval('public.tipos_clientes_id_seq'::regclass);
 @   ALTER TABLE public.tipos_clientes ALTER COLUMN id DROP DEFAULT;
       public          enzo    false    211    210    211            P           2604    17505    tratamientos id    DEFAULT     r   ALTER TABLE ONLY public.tratamientos ALTER COLUMN id SET DEFAULT nextval('public.tratamientos_id_seq'::regclass);
 >   ALTER TABLE public.tratamientos ALTER COLUMN id DROP DEFAULT;
       public          enzo    false    205    204    205            Q           2604    17506    vectores id    DEFAULT     j   ALTER TABLE ONLY public.vectores ALTER COLUMN id SET DEFAULT nextval('public.vectores_id_seq'::regclass);
 :   ALTER TABLE public.vectores ALTER COLUMN id DROP DEFAULT;
       public          enzo    false    207    206    207            �          0    17349    ar_internal_metadata 
   TABLE DATA           R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public          enzo    false    197   �T       �          0    17453 	   buscadors 
   TABLE DATA           H   COPY public.buscadors (id, palabra, created_at, updated_at) FROM stdin;
    public          enzo    false    215   �T       �          0    17370    certificados 
   TABLE DATA           J  COPY public.certificados (id, id_certificado, nro_certificado, fecha_aplicacion, fecha_vencimiento, hora_aplicacion, proximo_tratamiento, id_cliente, created_at, updated_at, id_rubro, id_tratamiento, id_vector, superficie, id_drogas, codigo, id_tipo_cliente, observaciones_certificado, id_tecnico, estado, cliente_id) FROM stdin;
    public          enzo    false    201   U       �          0    17359    clientes 
   TABLE DATA           �   COPY public.clientes (id, id_cliente, apellido, nombre, domicilio, celular, barrio, estado, estado_mkt, created_at, updated_at, cuit, correo, observaciones_cliente, id_tipo_cliente, id_rubro, telefono) FROM stdin;
    public          enzo    false    199   =X       �          0    17420    drogas 
   TABLE DATA           L   COPY public.drogas (id, descripcion_td, created_at, updated_at) FROM stdin;
    public          enzo    false    209   |[       �          0    17442    rubros 
   TABLE DATA           L   COPY public.rubros (id, descripcion_tr, created_at, updated_at) FROM stdin;
    public          enzo    false    213   �[       �          0    17341    schema_migrations 
   TABLE DATA           4   COPY public.schema_migrations (version) FROM stdin;
    public          enzo    false    196   %\       �          0    17387    tecnicos 
   TABLE DATA           �   COPY public.tecnicos (id, dni, apellido, nombre, domicilio, created_at, updated_at, observaciones_tecnico, telefono, estado) FROM stdin;
    public          enzo    false    203   �\       �          0    17431    tipos_clientes 
   TABLE DATA           T   COPY public.tipos_clientes (id, descripcion_tc, created_at, updated_at) FROM stdin;
    public          enzo    false    211   ]       �          0    17398    tratamientos 
   TABLE DATA           R   COPY public.tratamientos (id, descripcion_tt, created_at, updated_at) FROM stdin;
    public          enzo    false    205   �]       �          0    17409    vectores 
   TABLE DATA           N   COPY public.vectores (id, descripcion_tv, created_at, updated_at) FROM stdin;
    public          enzo    false    207   �]                  0    0    buscadors_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.buscadors_id_seq', 1, false);
          public          enzo    false    214            	           0    0    certificados_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.certificados_id_seq', 40, true);
          public          enzo    false    200            
           0    0    clientes_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.clientes_id_seq', 16, true);
          public          enzo    false    198                       0    0    drogas_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.drogas_id_seq', 2, true);
          public          enzo    false    208                       0    0    rubros_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.rubros_id_seq', 12, true);
          public          enzo    false    212                       0    0    tecnicos_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tecnicos_id_seq', 1, false);
          public          enzo    false    202                       0    0    tipos_clientes_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tipos_clientes_id_seq', 5, true);
          public          enzo    false    210                       0    0    tratamientos_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tratamientos_id_seq', 4, true);
          public          enzo    false    204                       0    0    vectores_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.vectores_id_seq', 5, true);
          public          enzo    false    206            Y           2606    17356 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public            enzo    false    197            k           2606    17461    buscadors buscadors_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.buscadors
    ADD CONSTRAINT buscadors_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.buscadors DROP CONSTRAINT buscadors_pkey;
       public            enzo    false    215            ]           2606    17378    certificados certificados_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.certificados
    ADD CONSTRAINT certificados_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.certificados DROP CONSTRAINT certificados_pkey;
       public            enzo    false    201            [           2606    17367    clientes clientes_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            enzo    false    199            e           2606    17428    drogas drogas_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.drogas
    ADD CONSTRAINT drogas_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.drogas DROP CONSTRAINT drogas_pkey;
       public            enzo    false    209            i           2606    17450    rubros rubros_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.rubros
    ADD CONSTRAINT rubros_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.rubros DROP CONSTRAINT rubros_pkey;
       public            enzo    false    213            W           2606    17348 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public            enzo    false    196            _           2606    17395    tecnicos tecnicos_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tecnicos
    ADD CONSTRAINT tecnicos_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tecnicos DROP CONSTRAINT tecnicos_pkey;
       public            enzo    false    203            g           2606    17439 "   tipos_clientes tipos_clientes_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tipos_clientes
    ADD CONSTRAINT tipos_clientes_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.tipos_clientes DROP CONSTRAINT tipos_clientes_pkey;
       public            enzo    false    211            a           2606    17406    tratamientos tratamientos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tratamientos
    ADD CONSTRAINT tratamientos_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tratamientos DROP CONSTRAINT tratamientos_pkey;
       public            enzo    false    205            c           2606    17417    vectores vectores_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.vectores
    ADD CONSTRAINT vectores_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.vectores DROP CONSTRAINT vectores_pkey;
       public            enzo    false    207            �   ?   x�K�+�,���M�+�LI-K��/ ���tu�M�L�L,�L�-�L�Hq��qqq ��R      �      x������ � �      �   !  x���Kr�0���)r� A�dN�M{�l:�u�,����B�5�8Z�g�x��`2 =ay�-&B1�@~��Aւz�6kh��b�����?߿MxX�nqΏ�/���p��`��W�V4��S^�g#�Bv��Y����޸*��?�
�����D�~�(&oV@EoB�vN���6ǭ�<�m��"��+f�i�z];�v�t٫�MtO^6s�����->;�*��w�w��3�}����h3?{�+����|�����MJ��!��;I=ȡ�O�&b׿������������6�iC�W��2�����#�����A�&cѓ7�:�uGݎ��c��=�j�{s��K7W�B��a�0�-�����n�g�հc�<L��r���ÍI�tG�J�,g��}��͉��.�}�#�OX�?ţ�����T�\t������|���E�8-�*��g�s����_�Y��_�/�u�׾��~p��]iܩ=�p�����#疰�aq=�`��9m��+��=�����\��������b�Aw:�y?k����*auOzx]���6hy����;��,����8.c͟�/يJ�6d�NB�3=�z�jk�#��ߊ�9�Ñ��uߝ�v�mDv+�4�}�oO;�Ns��I�Z�k�g���W�:��y�`��|t����x�W�eƑ��;�-ӭ��X��
<���/O9��kS����1���0e�f�#�Z��l�o;���U~��ݲ�$��� ��o��Kr�/0����an��=I�����ۯW�n���Ƒ�Y��ۮW8�������2�b�      �   /  x����n�8��GO�� u�
#s]��Jr�5z�:��X�
��}�^���b;�:At� $hH����P8����x�yuc7��L@wG������$�i<Ũ$T�,I�
B�D���PRH%|&��p�e�o�M��-|,OË�C�\�&>��za�Z�Z�$�L�KK�:�׺\�R���"'��!ӵ|� 4���f��2��Y�A�cEc�e��և�;�b
�����X���t���ہP�B���\E
}Xw��8�v>iG��T�@�h"��f^��.>��WЎ���q�$�Ly�T�v�ڋv���C��@�n��#%GH�V2�!�%dLM�Ji�(�1}s���1N|�(���p�����K�cT�8�t��v��(���c��%������)��0���T� V�G�S�R1�B���$����Un1��	+gU.Zt����"e�4hS�ޓ/��N6���Zl����u7���p��
���HE$"�L�5��˻/�?\����3\�7���`�y+�ы\Õ��&S��Ԅ�8)E��Ya(3U�7���Fy{����b,;}���46���&�s��XS7���zOK�23;��L����i�m��w�^�r�lrS�,��H�kB���k��:�/�ت�W�
S�P�����_�^\Lx3��{�L*���H�bp�WsSN�T�Fp��tەyf�\81�laW4�y��r����6�[����U���TpH^�.�L@�s�:/n�*��G(�ƛ�(Уby��s& Z:陝��2������<��# U�9 6
�.3s�������O      �   =   x�3��,J-)ʯLI-�4202�50�5�P00�#lb\F�NE���)�9�y�D����� ���      �   L   x���H,.I�I-�L�4202�50�5�P00�#lb\��.���y�$�1���ZD�#N�Ĳļ������ m,�      �   �   x�]��q�0л�� $�e��cq2���d?c����Bԡ8˾4Ob��MTK�/S����D�0�و���e0�ъY2R��0#`��98Ό �ő=1
�3�g��G!έ���ij��́E�!�ݲq&s�]&i�ٻ&�u���P����v�'�w�FY\j�k1�ߗEE�:2�U|���=ϻ�4��?7�
_�����E�      �      x������ � �      �   W   x�3�t��M-J�L��4202�50�5�P00�#lb\F��y)��%E�h2�tM)MNL���#A�	�kqIb		:L9�K��V���� ��7d      �   F   x�3�t,.H-*����4202�50�5�P00�#lb\F����D+7��KM�I$Z�	�IQ~1��c���� w�(-      �   R   x�3���+NM.�/�4202�50�5�P00�#lb\F�A��)�E��k1���I$M�	�SbrIjQf"�zL9�K�H�J� �6X     