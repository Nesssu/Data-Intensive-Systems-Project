PGDMP                      |         	   Warehouse    17.2    17.0 |    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16748 	   Warehouse    DATABASE     �   CREATE DATABASE "Warehouse" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Kingdom.utf8';
    DROP DATABASE "Warehouse";
                     postgres    false            �            1259    16749 	   cars_asia    TABLE     �   CREATE TABLE public.cars_asia (
    carid integer NOT NULL,
    manufacturer text NOT NULL,
    model text NOT NULL,
    year integer,
    color text,
    mileage real,
    warehouseid integer
);
    DROP TABLE public.cars_asia;
       public         heap r       postgres    false            �            1259    16754    cars_asia_carid_seq    SEQUENCE     �   CREATE SEQUENCE public.cars_asia_carid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cars_asia_carid_seq;
       public               postgres    false    217            �           0    0    cars_asia_carid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.cars_asia_carid_seq OWNED BY public.cars_asia.carid;
          public               postgres    false    218            �            1259    16755    cars_europe    TABLE     �   CREATE TABLE public.cars_europe (
    carid integer NOT NULL,
    manufacturer text NOT NULL,
    model text NOT NULL,
    year integer,
    color text,
    mileage real,
    warehouseid integer
);
    DROP TABLE public.cars_europe;
       public         heap r       postgres    false            �            1259    16760    cars_europe_carid_seq    SEQUENCE     �   CREATE SEQUENCE public.cars_europe_carid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.cars_europe_carid_seq;
       public               postgres    false    219            �           0    0    cars_europe_carid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.cars_europe_carid_seq OWNED BY public.cars_europe.carid;
          public               postgres    false    220            �            1259    16761    cars_usa    TABLE     �   CREATE TABLE public.cars_usa (
    carid integer NOT NULL,
    manufacturer text NOT NULL,
    model text NOT NULL,
    year integer,
    color text,
    mileage real,
    warehouseid integer
);
    DROP TABLE public.cars_usa;
       public         heap r       postgres    false            �            1259    16766    cars_usa_carid_seq    SEQUENCE     �   CREATE SEQUENCE public.cars_usa_carid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.cars_usa_carid_seq;
       public               postgres    false    221            �           0    0    cars_usa_carid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.cars_usa_carid_seq OWNED BY public.cars_usa.carid;
          public               postgres    false    222            �            1259    16767    employee_asia    TABLE     �  CREATE TABLE public.employee_asia (
    employeeid integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    jobid text,
    hire_date date NOT NULL,
    salary real,
    warehouseid integer,
    CONSTRAINT employee_asia_jobid_check CHECK ((jobid = ANY (ARRAY['intern'::text, 'IT'::text, 'HR'::text, 'SYS-ADMIN'::text, 'CEO'::text, 'WH-SUP'::text, 'WH-WORK'::text]))),
    CONSTRAINT employee_asia_salary_check CHECK ((salary >= (0)::double precision))
);
 !   DROP TABLE public.employee_asia;
       public         heap r       postgres    false            �            1259    16774    employee_asia_employeeid_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_asia_employeeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.employee_asia_employeeid_seq;
       public               postgres    false    223            �           0    0    employee_asia_employeeid_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.employee_asia_employeeid_seq OWNED BY public.employee_asia.employeeid;
          public               postgres    false    224            �            1259    16775    employee_europe    TABLE     �  CREATE TABLE public.employee_europe (
    employeeid integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    jobid text,
    hire_date date NOT NULL,
    salary real,
    warehouseid integer,
    CONSTRAINT employee_europe_jobid_check CHECK ((jobid = ANY (ARRAY['intern'::text, 'IT'::text, 'HR'::text, 'SYS-ADMIN'::text, 'CEO'::text, 'WH-SUP'::text, 'WH-WORK'::text]))),
    CONSTRAINT employee_europe_salary_check CHECK ((salary >= (0)::double precision))
);
 #   DROP TABLE public.employee_europe;
       public         heap r       postgres    false            �            1259    16782    employee_europe_employeeid_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_europe_employeeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.employee_europe_employeeid_seq;
       public               postgres    false    225            �           0    0    employee_europe_employeeid_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.employee_europe_employeeid_seq OWNED BY public.employee_europe.employeeid;
          public               postgres    false    226            �            1259    16783    employee_usa    TABLE     �  CREATE TABLE public.employee_usa (
    employeeid integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    jobid text,
    hire_date date NOT NULL,
    salary real,
    warehouseid integer,
    CONSTRAINT employee_usa_jobid_check CHECK ((jobid = ANY (ARRAY['intern'::text, 'IT'::text, 'HR'::text, 'SYS-ADMIN'::text, 'CEO'::text, 'WH-SUP'::text, 'WH-WORK'::text]))),
    CONSTRAINT employee_usa_salary_check CHECK ((salary >= (0)::double precision))
);
     DROP TABLE public.employee_usa;
       public         heap r       postgres    false            �            1259    16790    employee_usa_employeeid_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_usa_employeeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.employee_usa_employeeid_seq;
       public               postgres    false    227            �           0    0    employee_usa_employeeid_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.employee_usa_employeeid_seq OWNED BY public.employee_usa.employeeid;
          public               postgres    false    228            �            1259    16791    machinery_asia    TABLE     i  CREATE TABLE public.machinery_asia (
    machineryid integer NOT NULL,
    type text,
    model text,
    purchase_date date,
    condition text,
    maintenance_schedule text,
    last_inspection date,
    warehouseid integer,
    country text,
    CONSTRAINT machinery_asia_country_check CHECK ((country = ANY (ARRAY['South Korea'::text, 'Japan'::text])))
);
 "   DROP TABLE public.machinery_asia;
       public         heap r       postgres    false            �            1259    16797    machinery_asia_machineryid_seq    SEQUENCE     �   CREATE SEQUENCE public.machinery_asia_machineryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.machinery_asia_machineryid_seq;
       public               postgres    false    229            �           0    0    machinery_asia_machineryid_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.machinery_asia_machineryid_seq OWNED BY public.machinery_asia.machineryid;
          public               postgres    false    230            �            1259    16798    machinery_europe    TABLE     k  CREATE TABLE public.machinery_europe (
    machineryid integer NOT NULL,
    type text,
    model text,
    purchase_date date,
    condition text,
    maintenance_schedule text,
    last_inspection date,
    warehouseid integer,
    country text,
    CONSTRAINT machinery_europe_country_check CHECK ((country = ANY (ARRAY['Finland'::text, 'Germany'::text])))
);
 $   DROP TABLE public.machinery_europe;
       public         heap r       postgres    false            �            1259    16804     machinery_europe_machineryid_seq    SEQUENCE     �   CREATE SEQUENCE public.machinery_europe_machineryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.machinery_europe_machineryid_seq;
       public               postgres    false    231            �           0    0     machinery_europe_machineryid_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.machinery_europe_machineryid_seq OWNED BY public.machinery_europe.machineryid;
          public               postgres    false    232            �            1259    16805    machinery_usa    TABLE     h  CREATE TABLE public.machinery_usa (
    machineryid integer NOT NULL,
    type text,
    model text,
    purchase_date date,
    condition text,
    maintenance_schedule text,
    last_inspection date,
    warehouseid integer,
    region text,
    CONSTRAINT machinery_usa_region_check CHECK ((region = ANY (ARRAY['East Coast'::text, 'West Coast'::text])))
);
 !   DROP TABLE public.machinery_usa;
       public         heap r       postgres    false            �            1259    16811    machinery_usa_machineryid_seq    SEQUENCE     �   CREATE SEQUENCE public.machinery_usa_machineryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.machinery_usa_machineryid_seq;
       public               postgres    false    233            �           0    0    machinery_usa_machineryid_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.machinery_usa_machineryid_seq OWNED BY public.machinery_usa.machineryid;
          public               postgres    false    234            �            1259    16812    orders_asia    TABLE     �  CREATE TABLE public.orders_asia (
    orderid integer NOT NULL,
    order_date date,
    delivery_date date,
    total_amount real,
    currency text,
    status text,
    employeeid integer,
    warehouseid integer,
    shipping_method text,
    country text,
    CONSTRAINT orders_asia_country_check CHECK ((country = ANY (ARRAY['South Korea'::text, 'Japan'::text]))),
    CONSTRAINT orders_asia_currency_check CHECK ((currency = ANY (ARRAY['JPY'::text, 'KRW'::text])))
);
    DROP TABLE public.orders_asia;
       public         heap r       postgres    false            �            1259    16819    orders_asia_orderid_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_asia_orderid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.orders_asia_orderid_seq;
       public               postgres    false    235            �           0    0    orders_asia_orderid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.orders_asia_orderid_seq OWNED BY public.orders_asia.orderid;
          public               postgres    false    236            �            1259    16820    orders_europe    TABLE     �  CREATE TABLE public.orders_europe (
    orderid integer NOT NULL,
    order_date date,
    delivery_date date,
    total_amount real,
    currency text DEFAULT 'EUR'::text,
    status text,
    employeeid integer,
    warehouseid integer,
    shipping_method text,
    country text,
    CONSTRAINT orders_europe_country_check CHECK ((country = ANY (ARRAY['Finland'::text, 'Germany'::text])))
);
 !   DROP TABLE public.orders_europe;
       public         heap r       postgres    false            �            1259    16827    orders_europe_orderid_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_europe_orderid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.orders_europe_orderid_seq;
       public               postgres    false    237            �           0    0    orders_europe_orderid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.orders_europe_orderid_seq OWNED BY public.orders_europe.orderid;
          public               postgres    false    238            �            1259    16828 
   orders_usa    TABLE     �  CREATE TABLE public.orders_usa (
    orderid integer NOT NULL,
    order_date date,
    delivery_date date,
    total_amount real,
    currency text DEFAULT 'USD'::text,
    status text,
    employeeid integer,
    warehouseid integer,
    shipping_method text,
    region text,
    CONSTRAINT orders_usa_region_check CHECK ((region = ANY (ARRAY['East Coast'::text, 'West Coast'::text])))
);
    DROP TABLE public.orders_usa;
       public         heap r       postgres    false            �            1259    16835    orders_usa_orderid_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_usa_orderid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.orders_usa_orderid_seq;
       public               postgres    false    239            �           0    0    orders_usa_orderid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.orders_usa_orderid_seq OWNED BY public.orders_usa.orderid;
          public               postgres    false    240            �            1259    16836    warehouses_asia    TABLE     &  CREATE TABLE public.warehouses_asia (
    warehouseid integer NOT NULL,
    name text,
    location text,
    country text,
    capacity integer,
    manager_employeeid integer,
    CONSTRAINT warehouses_asia_country_check CHECK ((country = ANY (ARRAY['South Korea'::text, 'Japan'::text])))
);
 #   DROP TABLE public.warehouses_asia;
       public         heap r       postgres    false            �            1259    16842    warehouses_asia_warehouseid_seq    SEQUENCE     �   CREATE SEQUENCE public.warehouses_asia_warehouseid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.warehouses_asia_warehouseid_seq;
       public               postgres    false    241            �           0    0    warehouses_asia_warehouseid_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.warehouses_asia_warehouseid_seq OWNED BY public.warehouses_asia.warehouseid;
          public               postgres    false    242            �            1259    16843    warehouses_europe    TABLE     (  CREATE TABLE public.warehouses_europe (
    warehouseid integer NOT NULL,
    name text,
    location text,
    country text,
    capacity integer,
    manager_employeeid integer,
    CONSTRAINT warehouses_europe_country_check CHECK ((country = ANY (ARRAY['Finland'::text, 'Germany'::text])))
);
 %   DROP TABLE public.warehouses_europe;
       public         heap r       postgres    false            �            1259    16849 !   warehouses_europe_warehouseid_seq    SEQUENCE     �   CREATE SEQUENCE public.warehouses_europe_warehouseid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.warehouses_europe_warehouseid_seq;
       public               postgres    false    243            �           0    0 !   warehouses_europe_warehouseid_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.warehouses_europe_warehouseid_seq OWNED BY public.warehouses_europe.warehouseid;
          public               postgres    false    244            �            1259    16850    warehouses_usa    TABLE     %  CREATE TABLE public.warehouses_usa (
    warehouseid integer NOT NULL,
    name text,
    location text,
    region text,
    capacity integer,
    manager_employeeid integer,
    CONSTRAINT warehouses_usa_region_check CHECK ((region = ANY (ARRAY['East Coast'::text, 'West Coast'::text])))
);
 "   DROP TABLE public.warehouses_usa;
       public         heap r       postgres    false            �            1259    16856    warehouses_usa_warehouseid_seq    SEQUENCE     �   CREATE SEQUENCE public.warehouses_usa_warehouseid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.warehouses_usa_warehouseid_seq;
       public               postgres    false    245            �           0    0    warehouses_usa_warehouseid_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.warehouses_usa_warehouseid_seq OWNED BY public.warehouses_usa.warehouseid;
          public               postgres    false    246            �           2604    16857    cars_asia carid    DEFAULT     r   ALTER TABLE ONLY public.cars_asia ALTER COLUMN carid SET DEFAULT nextval('public.cars_asia_carid_seq'::regclass);
 >   ALTER TABLE public.cars_asia ALTER COLUMN carid DROP DEFAULT;
       public               postgres    false    218    217            �           2604    16858    cars_europe carid    DEFAULT     v   ALTER TABLE ONLY public.cars_europe ALTER COLUMN carid SET DEFAULT nextval('public.cars_europe_carid_seq'::regclass);
 @   ALTER TABLE public.cars_europe ALTER COLUMN carid DROP DEFAULT;
       public               postgres    false    220    219            �           2604    16859    cars_usa carid    DEFAULT     p   ALTER TABLE ONLY public.cars_usa ALTER COLUMN carid SET DEFAULT nextval('public.cars_usa_carid_seq'::regclass);
 =   ALTER TABLE public.cars_usa ALTER COLUMN carid DROP DEFAULT;
       public               postgres    false    222    221            �           2604    16860    employee_asia employeeid    DEFAULT     �   ALTER TABLE ONLY public.employee_asia ALTER COLUMN employeeid SET DEFAULT nextval('public.employee_asia_employeeid_seq'::regclass);
 G   ALTER TABLE public.employee_asia ALTER COLUMN employeeid DROP DEFAULT;
       public               postgres    false    224    223            �           2604    16861    employee_europe employeeid    DEFAULT     �   ALTER TABLE ONLY public.employee_europe ALTER COLUMN employeeid SET DEFAULT nextval('public.employee_europe_employeeid_seq'::regclass);
 I   ALTER TABLE public.employee_europe ALTER COLUMN employeeid DROP DEFAULT;
       public               postgres    false    226    225            �           2604    16862    employee_usa employeeid    DEFAULT     �   ALTER TABLE ONLY public.employee_usa ALTER COLUMN employeeid SET DEFAULT nextval('public.employee_usa_employeeid_seq'::regclass);
 F   ALTER TABLE public.employee_usa ALTER COLUMN employeeid DROP DEFAULT;
       public               postgres    false    228    227            �           2604    16863    machinery_asia machineryid    DEFAULT     �   ALTER TABLE ONLY public.machinery_asia ALTER COLUMN machineryid SET DEFAULT nextval('public.machinery_asia_machineryid_seq'::regclass);
 I   ALTER TABLE public.machinery_asia ALTER COLUMN machineryid DROP DEFAULT;
       public               postgres    false    230    229            �           2604    16864    machinery_europe machineryid    DEFAULT     �   ALTER TABLE ONLY public.machinery_europe ALTER COLUMN machineryid SET DEFAULT nextval('public.machinery_europe_machineryid_seq'::regclass);
 K   ALTER TABLE public.machinery_europe ALTER COLUMN machineryid DROP DEFAULT;
       public               postgres    false    232    231            �           2604    16865    machinery_usa machineryid    DEFAULT     �   ALTER TABLE ONLY public.machinery_usa ALTER COLUMN machineryid SET DEFAULT nextval('public.machinery_usa_machineryid_seq'::regclass);
 H   ALTER TABLE public.machinery_usa ALTER COLUMN machineryid DROP DEFAULT;
       public               postgres    false    234    233            �           2604    16866    orders_asia orderid    DEFAULT     z   ALTER TABLE ONLY public.orders_asia ALTER COLUMN orderid SET DEFAULT nextval('public.orders_asia_orderid_seq'::regclass);
 B   ALTER TABLE public.orders_asia ALTER COLUMN orderid DROP DEFAULT;
       public               postgres    false    236    235            �           2604    16867    orders_europe orderid    DEFAULT     ~   ALTER TABLE ONLY public.orders_europe ALTER COLUMN orderid SET DEFAULT nextval('public.orders_europe_orderid_seq'::regclass);
 D   ALTER TABLE public.orders_europe ALTER COLUMN orderid DROP DEFAULT;
       public               postgres    false    238    237            �           2604    16868    orders_usa orderid    DEFAULT     x   ALTER TABLE ONLY public.orders_usa ALTER COLUMN orderid SET DEFAULT nextval('public.orders_usa_orderid_seq'::regclass);
 A   ALTER TABLE public.orders_usa ALTER COLUMN orderid DROP DEFAULT;
       public               postgres    false    240    239            �           2604    16869    warehouses_asia warehouseid    DEFAULT     �   ALTER TABLE ONLY public.warehouses_asia ALTER COLUMN warehouseid SET DEFAULT nextval('public.warehouses_asia_warehouseid_seq'::regclass);
 J   ALTER TABLE public.warehouses_asia ALTER COLUMN warehouseid DROP DEFAULT;
       public               postgres    false    242    241            �           2604    16870    warehouses_europe warehouseid    DEFAULT     �   ALTER TABLE ONLY public.warehouses_europe ALTER COLUMN warehouseid SET DEFAULT nextval('public.warehouses_europe_warehouseid_seq'::regclass);
 L   ALTER TABLE public.warehouses_europe ALTER COLUMN warehouseid DROP DEFAULT;
       public               postgres    false    244    243            �           2604    16871    warehouses_usa warehouseid    DEFAULT     �   ALTER TABLE ONLY public.warehouses_usa ALTER COLUMN warehouseid SET DEFAULT nextval('public.warehouses_usa_warehouseid_seq'::regclass);
 I   ALTER TABLE public.warehouses_usa ALTER COLUMN warehouseid DROP DEFAULT;
       public               postgres    false    246    245            |          0    16749 	   cars_asia 
   TABLE DATA           b   COPY public.cars_asia (carid, manufacturer, model, year, color, mileage, warehouseid) FROM stdin;
    public               postgres    false    217   �       ~          0    16755    cars_europe 
   TABLE DATA           d   COPY public.cars_europe (carid, manufacturer, model, year, color, mileage, warehouseid) FROM stdin;
    public               postgres    false    219   ��       �          0    16761    cars_usa 
   TABLE DATA           a   COPY public.cars_usa (carid, manufacturer, model, year, color, mileage, warehouseid) FROM stdin;
    public               postgres    false    221   i�       �          0    16767    employee_asia 
   TABLE DATA           q   COPY public.employee_asia (employeeid, first_name, last_name, jobid, hire_date, salary, warehouseid) FROM stdin;
    public               postgres    false    223   �       �          0    16775    employee_europe 
   TABLE DATA           s   COPY public.employee_europe (employeeid, first_name, last_name, jobid, hire_date, salary, warehouseid) FROM stdin;
    public               postgres    false    225   ׫       �          0    16783    employee_usa 
   TABLE DATA           p   COPY public.employee_usa (employeeid, first_name, last_name, jobid, hire_date, salary, warehouseid) FROM stdin;
    public               postgres    false    227   ��       �          0    16791    machinery_asia 
   TABLE DATA           �   COPY public.machinery_asia (machineryid, type, model, purchase_date, condition, maintenance_schedule, last_inspection, warehouseid, country) FROM stdin;
    public               postgres    false    229   ��       �          0    16798    machinery_europe 
   TABLE DATA           �   COPY public.machinery_europe (machineryid, type, model, purchase_date, condition, maintenance_schedule, last_inspection, warehouseid, country) FROM stdin;
    public               postgres    false    231   �       �          0    16805    machinery_usa 
   TABLE DATA           �   COPY public.machinery_usa (machineryid, type, model, purchase_date, condition, maintenance_schedule, last_inspection, warehouseid, region) FROM stdin;
    public               postgres    false    233   ��       �          0    16812    orders_asia 
   TABLE DATA           �   COPY public.orders_asia (orderid, order_date, delivery_date, total_amount, currency, status, employeeid, warehouseid, shipping_method, country) FROM stdin;
    public               postgres    false    235   �       �          0    16820    orders_europe 
   TABLE DATA           �   COPY public.orders_europe (orderid, order_date, delivery_date, total_amount, currency, status, employeeid, warehouseid, shipping_method, country) FROM stdin;
    public               postgres    false    237   ��       �          0    16828 
   orders_usa 
   TABLE DATA           �   COPY public.orders_usa (orderid, order_date, delivery_date, total_amount, currency, status, employeeid, warehouseid, shipping_method, region) FROM stdin;
    public               postgres    false    239   �       �          0    16836    warehouses_asia 
   TABLE DATA           m   COPY public.warehouses_asia (warehouseid, name, location, country, capacity, manager_employeeid) FROM stdin;
    public               postgres    false    241   F�       �          0    16843    warehouses_europe 
   TABLE DATA           o   COPY public.warehouses_europe (warehouseid, name, location, country, capacity, manager_employeeid) FROM stdin;
    public               postgres    false    243   ּ       �          0    16850    warehouses_usa 
   TABLE DATA           k   COPY public.warehouses_usa (warehouseid, name, location, region, capacity, manager_employeeid) FROM stdin;
    public               postgres    false    245   r�       �           0    0    cars_asia_carid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.cars_asia_carid_seq', 5, true);
          public               postgres    false    218            �           0    0    cars_europe_carid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.cars_europe_carid_seq', 5, true);
          public               postgres    false    220            �           0    0    cars_usa_carid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.cars_usa_carid_seq', 5, true);
          public               postgres    false    222            �           0    0    employee_asia_employeeid_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.employee_asia_employeeid_seq', 5, true);
          public               postgres    false    224            �           0    0    employee_europe_employeeid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.employee_europe_employeeid_seq', 5, true);
          public               postgres    false    226            �           0    0    employee_usa_employeeid_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.employee_usa_employeeid_seq', 5, true);
          public               postgres    false    228            �           0    0    machinery_asia_machineryid_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.machinery_asia_machineryid_seq', 1, false);
          public               postgres    false    230            �           0    0     machinery_europe_machineryid_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.machinery_europe_machineryid_seq', 5, true);
          public               postgres    false    232            �           0    0    machinery_usa_machineryid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.machinery_usa_machineryid_seq', 1, false);
          public               postgres    false    234            �           0    0    orders_asia_orderid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.orders_asia_orderid_seq', 1, false);
          public               postgres    false    236            �           0    0    orders_europe_orderid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.orders_europe_orderid_seq', 5, true);
          public               postgres    false    238            �           0    0    orders_usa_orderid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.orders_usa_orderid_seq', 1, false);
          public               postgres    false    240            �           0    0    warehouses_asia_warehouseid_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.warehouses_asia_warehouseid_seq', 5, true);
          public               postgres    false    242            �           0    0 !   warehouses_europe_warehouseid_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.warehouses_europe_warehouseid_seq', 5, true);
          public               postgres    false    244            �           0    0    warehouses_usa_warehouseid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.warehouses_usa_warehouseid_seq', 5, true);
          public               postgres    false    246            �           2606    16873    cars_asia cars_asia_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.cars_asia
    ADD CONSTRAINT cars_asia_pkey PRIMARY KEY (carid);
 B   ALTER TABLE ONLY public.cars_asia DROP CONSTRAINT cars_asia_pkey;
       public                 postgres    false    217            �           2606    16875    cars_europe cars_europe_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.cars_europe
    ADD CONSTRAINT cars_europe_pkey PRIMARY KEY (carid);
 F   ALTER TABLE ONLY public.cars_europe DROP CONSTRAINT cars_europe_pkey;
       public                 postgres    false    219            �           2606    16877    cars_usa cars_usa_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.cars_usa
    ADD CONSTRAINT cars_usa_pkey PRIMARY KEY (carid);
 @   ALTER TABLE ONLY public.cars_usa DROP CONSTRAINT cars_usa_pkey;
       public                 postgres    false    221            �           2606    16879     employee_asia employee_asia_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.employee_asia
    ADD CONSTRAINT employee_asia_pkey PRIMARY KEY (employeeid);
 J   ALTER TABLE ONLY public.employee_asia DROP CONSTRAINT employee_asia_pkey;
       public                 postgres    false    223            �           2606    16881 $   employee_europe employee_europe_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.employee_europe
    ADD CONSTRAINT employee_europe_pkey PRIMARY KEY (employeeid);
 N   ALTER TABLE ONLY public.employee_europe DROP CONSTRAINT employee_europe_pkey;
       public                 postgres    false    225            �           2606    16883    employee_usa employee_usa_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.employee_usa
    ADD CONSTRAINT employee_usa_pkey PRIMARY KEY (employeeid);
 H   ALTER TABLE ONLY public.employee_usa DROP CONSTRAINT employee_usa_pkey;
       public                 postgres    false    227            �           2606    16885 "   machinery_asia machinery_asia_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.machinery_asia
    ADD CONSTRAINT machinery_asia_pkey PRIMARY KEY (machineryid);
 L   ALTER TABLE ONLY public.machinery_asia DROP CONSTRAINT machinery_asia_pkey;
       public                 postgres    false    229            �           2606    16887 &   machinery_europe machinery_europe_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.machinery_europe
    ADD CONSTRAINT machinery_europe_pkey PRIMARY KEY (machineryid);
 P   ALTER TABLE ONLY public.machinery_europe DROP CONSTRAINT machinery_europe_pkey;
       public                 postgres    false    231            �           2606    16889     machinery_usa machinery_usa_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.machinery_usa
    ADD CONSTRAINT machinery_usa_pkey PRIMARY KEY (machineryid);
 J   ALTER TABLE ONLY public.machinery_usa DROP CONSTRAINT machinery_usa_pkey;
       public                 postgres    false    233            �           2606    16891    orders_asia orders_asia_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.orders_asia
    ADD CONSTRAINT orders_asia_pkey PRIMARY KEY (orderid);
 F   ALTER TABLE ONLY public.orders_asia DROP CONSTRAINT orders_asia_pkey;
       public                 postgres    false    235            �           2606    16893     orders_europe orders_europe_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.orders_europe
    ADD CONSTRAINT orders_europe_pkey PRIMARY KEY (orderid);
 J   ALTER TABLE ONLY public.orders_europe DROP CONSTRAINT orders_europe_pkey;
       public                 postgres    false    237            �           2606    16895    orders_usa orders_usa_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.orders_usa
    ADD CONSTRAINT orders_usa_pkey PRIMARY KEY (orderid);
 D   ALTER TABLE ONLY public.orders_usa DROP CONSTRAINT orders_usa_pkey;
       public                 postgres    false    239            �           2606    16897 $   warehouses_asia warehouses_asia_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.warehouses_asia
    ADD CONSTRAINT warehouses_asia_pkey PRIMARY KEY (warehouseid);
 N   ALTER TABLE ONLY public.warehouses_asia DROP CONSTRAINT warehouses_asia_pkey;
       public                 postgres    false    241            �           2606    16899 (   warehouses_europe warehouses_europe_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.warehouses_europe
    ADD CONSTRAINT warehouses_europe_pkey PRIMARY KEY (warehouseid);
 R   ALTER TABLE ONLY public.warehouses_europe DROP CONSTRAINT warehouses_europe_pkey;
       public                 postgres    false    243            �           2606    16901 "   warehouses_usa warehouses_usa_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.warehouses_usa
    ADD CONSTRAINT warehouses_usa_pkey PRIMARY KEY (warehouseid);
 L   ALTER TABLE ONLY public.warehouses_usa DROP CONSTRAINT warehouses_usa_pkey;
       public                 postgres    false    245            �           2606    16902    orders_europe fk_employee    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_europe
    ADD CONSTRAINT fk_employee FOREIGN KEY (employeeid) REFERENCES public.employee_europe(employeeid);
 C   ALTER TABLE ONLY public.orders_europe DROP CONSTRAINT fk_employee;
       public               postgres    false    237    225    4807            �           2606    16907    orders_usa fk_employee    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_usa
    ADD CONSTRAINT fk_employee FOREIGN KEY (employeeid) REFERENCES public.employee_usa(employeeid);
 @   ALTER TABLE ONLY public.orders_usa DROP CONSTRAINT fk_employee;
       public               postgres    false    227    239    4809            �           2606    16912    orders_asia fk_employee    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_asia
    ADD CONSTRAINT fk_employee FOREIGN KEY (employeeid) REFERENCES public.employee_asia(employeeid);
 A   ALTER TABLE ONLY public.orders_asia DROP CONSTRAINT fk_employee;
       public               postgres    false    4805    223    235            �           2606    16917    employee_europe fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_europe
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_europe(warehouseid);
 F   ALTER TABLE ONLY public.employee_europe DROP CONSTRAINT fk_warehouse;
       public               postgres    false    243    225    4825            �           2606    16922    cars_europe fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.cars_europe
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_europe(warehouseid);
 B   ALTER TABLE ONLY public.cars_europe DROP CONSTRAINT fk_warehouse;
       public               postgres    false    219    4825    243            �           2606    16927    employee_usa fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_usa
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_usa(warehouseid);
 C   ALTER TABLE ONLY public.employee_usa DROP CONSTRAINT fk_warehouse;
       public               postgres    false    245    227    4827            �           2606    16932    cars_usa fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.cars_usa
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_usa(warehouseid);
 ?   ALTER TABLE ONLY public.cars_usa DROP CONSTRAINT fk_warehouse;
       public               postgres    false    245    221    4827            �           2606    16937    employee_asia fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_asia
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_asia(warehouseid);
 D   ALTER TABLE ONLY public.employee_asia DROP CONSTRAINT fk_warehouse;
       public               postgres    false    4823    223    241            �           2606    16942    cars_asia fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.cars_asia
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_asia(warehouseid);
 @   ALTER TABLE ONLY public.cars_asia DROP CONSTRAINT fk_warehouse;
       public               postgres    false    4823    217    241            �           2606    16947    machinery_europe fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.machinery_europe
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_europe(warehouseid);
 G   ALTER TABLE ONLY public.machinery_europe DROP CONSTRAINT fk_warehouse;
       public               postgres    false    231    243    4825            �           2606    16952    orders_europe fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_europe
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_europe(warehouseid);
 D   ALTER TABLE ONLY public.orders_europe DROP CONSTRAINT fk_warehouse;
       public               postgres    false    243    4825    237            �           2606    16957    machinery_usa fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.machinery_usa
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_usa(warehouseid);
 D   ALTER TABLE ONLY public.machinery_usa DROP CONSTRAINT fk_warehouse;
       public               postgres    false    245    233    4827            �           2606    16962    orders_usa fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_usa
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_usa(warehouseid);
 A   ALTER TABLE ONLY public.orders_usa DROP CONSTRAINT fk_warehouse;
       public               postgres    false    239    4827    245            �           2606    16967    machinery_asia fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.machinery_asia
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_asia(warehouseid);
 E   ALTER TABLE ONLY public.machinery_asia DROP CONSTRAINT fk_warehouse;
       public               postgres    false    241    229    4823            �           2606    16972    orders_asia fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_asia
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_asia(warehouseid);
 B   ALTER TABLE ONLY public.orders_asia DROP CONSTRAINT fk_warehouse;
       public               postgres    false    241    235    4823            |   |  x�m�[K1��g~�@�d�o�
V�%ݍ64n`7��_o.���Ù�	�l��N(8Ӣ�� �8�B�79 �1 �pov�
85��:�<����43�Tf��5A�a����s�Q�(z�h�^�{�Z��:Hr,�Z|t~���sj`.;ȢA��?��H�%V03}pPo�M�?WTX���[�iy�56�w���A� ��q�b�����}�4����­�����U@�(�����z�H\+;���*(=PP�OR�?�F�b��m�~�Z��GQ�T��|w#̗GY�R�T�Ѩ@*a�:��j��U�H\�ϪWV�]��,_���
}��k��a�`RA�e��/Nǚ����R����Xs���Ah�����	"~\���      ~   �  x�]�[n�0E�gV���C�O[H1�@��a��M�!SJr�n����ʇ�����;3�����ř���da��vڜ�/c�QXmA.v�5�Q���'
�(($l��4�x�"���Ψ1iC��	x�J,�Aò��VF�'�M�-P�����SW�ƌ���d*.QT�Ӫ�L��r�l%��P��@��n�l��E7ZMP�˄K^�@�"�9�A�}?��V�>c�"JZ�vZܑ�y�ګ��D�������	Z�3��#9�����0+O7�C�)�@d�e ���ι�h��\�,�N�a�u��V������ϔm%c�[Ч�e	K�WA�B�z6)`��!����(+�����_:�a�uT(k�%�q�*;|8U��(i�^yqLn��eg�%K��Y^��?c��٫^ٿ�"��l�`�Q#y5iX�����ɯL0��	� ]�i      �   �  x�e��N�0�ϻO��b�N�k���@+�Y�Q��?�۳��j+n�2�;󍍂i�-����W��`��#EP�(
Ph4��t���Fn�bH���ݞ�3�4�ơ]�]\�<k4��@eI����v��,����rn��r�N�����E�����+�P�-M�.���LvK�]K�I��
��ʷdr������Z(L�yV��j4l�m���ˤ����l�3������j2��b+�w��B�LـRh�ԡcK�~��1�Q5/!�AKm	�]���w�Vn��&T���s)�?������ʠ���Ƈ�:Hp!�s2e�V�f���C�iu�%�k��$��Ϩʺ�Z�e4}{�#1l�Ԝ�ʰU���4<Z�/��$l�*n��`P�A��������      �   �  x�m�Mo�0��3�ŕǉ��u��V�j/S��q�,Y�߱IEw��ȊͼCP���́��`�!�s�+pVk�{�-��֑0J�2�a0�5��д<tͶQ����2�Z&)MP$4����ü��n=lfj�s=�l&�2B���h��� +>�Ol^V�Q�H+����YtP��>�}+��Q�EĦ�Y����:-*,��&��b��?;Ų�pI[�<z�M���Ή8�e�*�g����x:q;��"ЂKH#���GaS��T�X��"�&B2P�L����3`�����8���T�ز��!���a�h�(��\br�D�-<�o%K�Ք6Y$'S�>��jd�UF:�� �P<-}`X��gs�6�+�eiV�TB3�����Q*�S��^^Y�w��m_�n�HT�rZ3�s[���q%u�p)���"~ ���      �   �  x�e�M��@��Uw騫�XZJ$���v2)�^M�s"n��RՐ8��z�~�`���]?��]����6�4)�`��T!\=���+����2҈L`�/�*�N�'���zT+��D�ӂ&��&t=�5���R�����T(��LE�-���P��ӏ��&J'�XH��E�y
�!	����.�	�5��_n/�c	�	�a��w�Ьx�� �[��c[�u1���p�)�[V '*��p��Uo��5f�4��9��ʵ	w�LQ
.�!8�M㡜�v�.�R$?�Α�in�� �D����?t)-ҥ�'���u����/�ųg��;��R�\\�o���<50I@m�&�"9�t�������sٔӹ�9�������
KB},	3�[?��G�����&�9R��d���!���$��T ��7�4��Z�[�'���� ��S��      �   �  x�]��n�0E��aAR"%-�&��ZNa9
dC�HD��R�_�Z��z����}�����Z۽��PBI.�

�?�L�Sރ���9�/���).��)�!0�l���w�Ww��AY�W
�f,�f|�(�`���5o��?I3�es�Hr�al{��H`���8|�ಂ<Ijf`�c�`mcӒD�C��"ʰ��\����-�I#	*X	�3V���WJ��ʒ�b`�A(Y��'?�vZԜ(@WDU?���Όq���pr�4o��EF���LJ��?�7�?��T��DY�%Ýj;��}@=����h�J�	VLf��|��І��\a	�Р�g+���MP��s�?a\��V�9���~߱����s9&ͤI�	6�ছI1��.�I�d7M�h�{?�+Ks\i0)�ˎ��:��m�.����Zr�>�#���>tg4ᇥ���\�^nY��(h�0�T-�����1�e��<      �   l  x�}T�r�0��O�`'	"p�R��:u�kg�&�T�"�`�]޾'6�E�w����|a�yv�{Y��g�,J�?G�s�#�8d�0�fJ����WZTEc��%������#��‰T�����tB�@���KP�eu�B �!�(�TB���u�υ,+��x��ڝ(\޻�8�C b�|�Z�;�*�'�;��w�{3����b�?pk��HR� ��RU�/U%��NP��C!�4�7u��3��Gf�c07�q�w�<��hT���B��ԧ�Q�r����Q0�-�v?����[7��(A��x�y�
ȌL�`���;`nOP8�
�/�+m8 � m�`�-�ږ��9^�J�/��Ą0ւ�w3��T�dƼ�Ս����/�ZڥJ�ns�Qo�6Đf(�!�ُPa'�?xsT���&�}H1lvЂ��ܖ0P���l|o��(�O�W���{,����8��V;��ֻa`Z�[�uبF��A2��_ 
u i��6x�ٸ��>�8��L�F�a������o�R)2s:��-�`�U��H�n�ѸR�J��̽6�ܛ�s���0t�h�o"�����w����� uĳ5y]*<GsX|�zg��_F��
~��      �   n  x�}��r�0���S����6�/)�(ZhJfz�T��1v[�}V��w� �9�[�L�O�[N^d���{�!����ِ����$KK�G8��82N���eO�����d�s��dR�I�j`�s�=&���4Mt~��8A"�S�7=�,$��T�{2��_M��y� _��GReWc��Éӌ��e�23:���#�W���>�iη��f���d�l��ؓ�A��b_�������]�r&8���m�+S�\� ����f��7B>F��V�-��x����q�6���S���T>�7j�E��c�)nmԱN�U��Mv�*���`�xEFhs뜭o3%�q.s�rk�txM��v�#�����g��cA������ڥc-�8��"�X����^����LZ����E����7������ٵ@Ŗ~��_����p�yu���r���v[!���^rF��u��ws�NCK?����,�F**�/��="��-eKp��cW%<���4y�:p,�w?>ث�|`vZ��.Q:S񎎦�*��7�E�Ю �W�^�46t8�~M.f}�Z� �v׀D�/E��r-�7�;}^���z��;����      �   o  x�}Tݒ�0��O�H''��%eEW묭vם�MYME�Ah���D�
�1CΗ��H��}���*ӄ���Dp��8d���|-e^$yz�?�b�g�	���X�P�c1$����s�9I29�N�*0�q�	AF�$M���`��-��x��S�I��?]�&��<�߬I��,7d'Vs9�e���Β�|i�^U,=su'K��K9$(}�E��Km����}I��C"6�{T9�8�����I�z�8�.��v P�^<2lb�([��[�m�\�;���;��4X֔]3�	�1��mzW�>fx�M��kƖ�t�\��k����&O�m�'�Wq񍆝�~�.�NTa���c�w��1��|��� Ň�ǒFc�Ժ�	q��h5	܄e^�흿,͜��ڹ�τG�U	�:�}�x����[ف��N�Li���˱,
�E�p�8���p�o���r��2W(�����a]�����:���rLNe���
�s�Y,t�O,�v�.7�<���4y�,�L�T����k�yZf�]��\�;:��*%�-�4r�VA0����������u�Q���Xg[��jަ&**��v���6����5!|� ���      �   X  x�mT�j�0=+_��l+��Aw�4�%�@�e��O�ֲc�wP��g�Y�w��;ĝ�&���?��p:��r�g����~9��z�=�|\o�<`~���g��i���2,��Q+��s[�I`i$��k� �S�m�9�-7QIKe�PS��tS����2�TN�������ʫ�	��#
:��L�wA�b?��e@_�]R�=�]���ַg����Q �?Ȯ^�ȓ��Av%���5r=7s(s��*)AΛ~'�%=��	�[��֥�޶B��9*���<��o�8�1��é�aH�ڧj���V!pl'��<4�N�6_�n��-�]2������S�0�      �   N  x�m��n�0���]:�mb����U��R��V�˪H����ր$��:�#�!i�@���y���z����$v�Np�����=8��	#��Ƿ��&�dV�=w���#D�ﺨ�hX+j��q�p;,��y�Y5�@n��X���D�� ���#�b���e������v
��Q���J�V��6���`֪����,KZ��6@��X���J��&����n^(�)H6�ZR��ȬY�߽\R�[>T[�����S����3{9���)#o�x�G�i��N�X��tJ�C0n�K�[>kY���s�<^.����!��of��>��h�&�      �   U  x�mS�N�0=�_��I�$����e�*1	�i|?��M"��V~���M����hDҐ��e����q��/�Hl7��u��6���68�x8F���ޏ糀%��8:^B�Y�ץ�X�K=B<��������`X;6sL@�e`��aRX��������?�i�ࣕ܎�j|k�ID+f�<��6km�w��b�� �m�Rgs�x�@V����=*^3�gv��[ �⭂d�0���~I�P��櫒��P�ZdZ-��SG�r��Խb��e���QepFi��C,�^��I�Z-S�E��fAE�ؼh.�R8�u�\3�fv��a�d9      �   �  x�uSAn�@<�W�*Bׂh=���ť�$@�h��*�o�������=���	 ���ꕲ��š�7��l�6d4B<�~;���N�g��_��
KH8£��TK]���A���"x��*�d0���NS.��<�J��F��j�#����úM�����Ht�.�`��,�e+������sa�	�(fDK�ǎ�MF"Sb�SF�Z+�/,zZ�q�Y@0�:Q�ߨv˺�7�}J0q��V��s�Uչ�����1��R�*2t]��I0a@[̨�7%�9�Ʉ\;������n7'��n����۫�[hնgΫ�mφ���K��~���[P��n�Y%��y����NO67���Zډ�s�<d*?�_���t���h�m8'K      �   �  x�uSKn�0]ON�T	Il�����n�0���#*����q�6v�rf�|ޛ���)�+��f��P�0�@ǰ|�z�H$���3g�3�{�(,,�'U��ZH\k�Z�e�j8]�И�B;�W�[P���$h&J�4]������l1�%'h|BJ�2�
�&xM��5�[��%/�K�u<��a��uf7U+�Om� >0����}�7�^��������Yi��Ce�x�����E���}bIv�(Ҏ�ܡ����0�榮Y㈜=a��3���Ϋ%����g3RXYO����C���{�뻰�g�I��]X���Qf�Fsm�.�Է��;Hd�1��I�jkN���p,V�L�~edy��t/������sw����W�}��r�}�E�/Z8�      �   �  x�uS�n�0=���Lhǭ��hhS��*	���eu�5+\"������V��})}f/�F���e�r/$�!�W�,�a�e�%7��z��a���)ŏ�E�J��Jc����yB��`��\�\�9��m��)�bxxl�
a�����c���%�5^I��Ekq�Z�z[`.���N@�T��	�l�RaC�wX�>3
�BvB-���e��W�u}�	����{�R�Ѝ5��E	|�Ybyd[����P��x��$"X����#u�*y�1�.%��'!��eu���?\�
M(��Ϭ!���ݔ�f��1׊�w) �-uG�{���7܍+��5�S������w��� I̦��h��}1�#�;�w)�(/&!�Ip�}uܳ����`0�N�W�     