PGDMP  	                
    |         	   warehouse    17.0    17.0 |    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16857 	   warehouse    DATABASE     ~   CREATE DATABASE warehouse WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Finnish_Finland.1252';
    DROP DATABASE warehouse;
                     postgres    false            �            1259    16965 	   cars_asia    TABLE     �   CREATE TABLE public.cars_asia (
    carid integer NOT NULL,
    manufacturer text NOT NULL,
    model text NOT NULL,
    year integer,
    color text,
    mileage real,
    warehouseid integer
);
    DROP TABLE public.cars_asia;
       public         heap r       postgres    false            �            1259    16964    cars_asia_carid_seq    SEQUENCE     �   CREATE SEQUENCE public.cars_asia_carid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cars_asia_carid_seq;
       public               postgres    false    234            �           0    0    cars_asia_carid_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.cars_asia_carid_seq OWNED BY public.cars_asia.carid;
          public               postgres    false    233            �            1259    16885    cars_europe    TABLE     �   CREATE TABLE public.cars_europe (
    carid integer NOT NULL,
    manufacturer text NOT NULL,
    model text NOT NULL,
    year integer,
    color text,
    mileage real,
    warehouseid integer
);
    DROP TABLE public.cars_europe;
       public         heap r       postgres    false            �            1259    16884    cars_europe_carid_seq    SEQUENCE     �   CREATE SEQUENCE public.cars_europe_carid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.cars_europe_carid_seq;
       public               postgres    false    222            �           0    0    cars_europe_carid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.cars_europe_carid_seq OWNED BY public.cars_europe.carid;
          public               postgres    false    221            �            1259    16925    cars_usa    TABLE     �   CREATE TABLE public.cars_usa (
    carid integer NOT NULL,
    manufacturer text NOT NULL,
    model text NOT NULL,
    year integer,
    color text,
    mileage real,
    warehouseid integer
);
    DROP TABLE public.cars_usa;
       public         heap r       postgres    false            �            1259    16924    cars_usa_carid_seq    SEQUENCE     �   CREATE SEQUENCE public.cars_usa_carid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.cars_usa_carid_seq;
       public               postgres    false    228            �           0    0    cars_usa_carid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.cars_usa_carid_seq OWNED BY public.cars_usa.carid;
          public               postgres    false    227            �            1259    16949    employee_asia    TABLE     �  CREATE TABLE public.employee_asia (
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
       public         heap r       postgres    false            �            1259    16948    employee_asia_employeeid_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_asia_employeeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.employee_asia_employeeid_seq;
       public               postgres    false    232            �           0    0    employee_asia_employeeid_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.employee_asia_employeeid_seq OWNED BY public.employee_asia.employeeid;
          public               postgres    false    231            �            1259    16869    employee_europe    TABLE     �  CREATE TABLE public.employee_europe (
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
       public         heap r       postgres    false            �            1259    16868    employee_europe_employeeid_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_europe_employeeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.employee_europe_employeeid_seq;
       public               postgres    false    220            �           0    0    employee_europe_employeeid_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.employee_europe_employeeid_seq OWNED BY public.employee_europe.employeeid;
          public               postgres    false    219            �            1259    16909    employee_usa    TABLE     �  CREATE TABLE public.employee_usa (
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
       public         heap r       postgres    false            �            1259    16908    employee_usa_employeeid_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_usa_employeeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.employee_usa_employeeid_seq;
       public               postgres    false    226            �           0    0    employee_usa_employeeid_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.employee_usa_employeeid_seq OWNED BY public.employee_usa.employeeid;
          public               postgres    false    225            �            1259    17051    machinery_asia    TABLE     i  CREATE TABLE public.machinery_asia (
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
       public         heap r       postgres    false            �            1259    17050    machinery_asia_machineryid_seq    SEQUENCE     �   CREATE SEQUENCE public.machinery_asia_machineryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.machinery_asia_machineryid_seq;
       public               postgres    false    244            �           0    0    machinery_asia_machineryid_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.machinery_asia_machineryid_seq OWNED BY public.machinery_asia.machineryid;
          public               postgres    false    243            �            1259    16979    machinery_europe    TABLE     k  CREATE TABLE public.machinery_europe (
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
       public         heap r       postgres    false            �            1259    16978     machinery_europe_machineryid_seq    SEQUENCE     �   CREATE SEQUENCE public.machinery_europe_machineryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.machinery_europe_machineryid_seq;
       public               postgres    false    236            �           0    0     machinery_europe_machineryid_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.machinery_europe_machineryid_seq OWNED BY public.machinery_europe.machineryid;
          public               postgres    false    235            �            1259    17015    machinery_usa    TABLE     h  CREATE TABLE public.machinery_usa (
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
       public         heap r       postgres    false            �            1259    17014    machinery_usa_machineryid_seq    SEQUENCE     �   CREATE SEQUENCE public.machinery_usa_machineryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.machinery_usa_machineryid_seq;
       public               postgres    false    240            �           0    0    machinery_usa_machineryid_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.machinery_usa_machineryid_seq OWNED BY public.machinery_usa.machineryid;
          public               postgres    false    239            �            1259    17066    orders_asia    TABLE     �  CREATE TABLE public.orders_asia (
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
       public         heap r       postgres    false            �            1259    17065    orders_asia_orderid_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_asia_orderid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.orders_asia_orderid_seq;
       public               postgres    false    246            �           0    0    orders_asia_orderid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.orders_asia_orderid_seq OWNED BY public.orders_asia.orderid;
          public               postgres    false    245            �            1259    16994    orders_europe    TABLE     �  CREATE TABLE public.orders_europe (
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
       public         heap r       postgres    false            �            1259    16993    orders_europe_orderid_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_europe_orderid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.orders_europe_orderid_seq;
       public               postgres    false    238            �           0    0    orders_europe_orderid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.orders_europe_orderid_seq OWNED BY public.orders_europe.orderid;
          public               postgres    false    237            �            1259    17030 
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
       public         heap r       postgres    false            �            1259    17029    orders_usa_orderid_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_usa_orderid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.orders_usa_orderid_seq;
       public               postgres    false    242            �           0    0    orders_usa_orderid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.orders_usa_orderid_seq OWNED BY public.orders_usa.orderid;
          public               postgres    false    241            �            1259    16939    warehouses_asia    TABLE     &  CREATE TABLE public.warehouses_asia (
    warehouseid integer NOT NULL,
    name text,
    location text,
    country text,
    capacity integer,
    manager_employeeid integer,
    CONSTRAINT warehouses_asia_country_check CHECK ((country = ANY (ARRAY['South Korea'::text, 'Japan'::text])))
);
 #   DROP TABLE public.warehouses_asia;
       public         heap r       postgres    false            �            1259    16938    warehouses_asia_warehouseid_seq    SEQUENCE     �   CREATE SEQUENCE public.warehouses_asia_warehouseid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.warehouses_asia_warehouseid_seq;
       public               postgres    false    230            �           0    0    warehouses_asia_warehouseid_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.warehouses_asia_warehouseid_seq OWNED BY public.warehouses_asia.warehouseid;
          public               postgres    false    229            �            1259    16859    warehouses_europe    TABLE     (  CREATE TABLE public.warehouses_europe (
    warehouseid integer NOT NULL,
    name text,
    location text,
    country text,
    capacity integer,
    manager_employeeid integer,
    CONSTRAINT warehouses_europe_country_check CHECK ((country = ANY (ARRAY['Finland'::text, 'Germany'::text])))
);
 %   DROP TABLE public.warehouses_europe;
       public         heap r       postgres    false            �            1259    16858 !   warehouses_europe_warehouseid_seq    SEQUENCE     �   CREATE SEQUENCE public.warehouses_europe_warehouseid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.warehouses_europe_warehouseid_seq;
       public               postgres    false    218            �           0    0 !   warehouses_europe_warehouseid_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.warehouses_europe_warehouseid_seq OWNED BY public.warehouses_europe.warehouseid;
          public               postgres    false    217            �            1259    16899    warehouses_usa    TABLE     %  CREATE TABLE public.warehouses_usa (
    warehouseid integer NOT NULL,
    name text,
    location text,
    region text,
    capacity integer,
    manager_employeeid integer,
    CONSTRAINT warehouses_usa_region_check CHECK ((region = ANY (ARRAY['East Coast'::text, 'West Coast'::text])))
);
 "   DROP TABLE public.warehouses_usa;
       public         heap r       postgres    false            �            1259    16898    warehouses_usa_warehouseid_seq    SEQUENCE     �   CREATE SEQUENCE public.warehouses_usa_warehouseid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.warehouses_usa_warehouseid_seq;
       public               postgres    false    224            �           0    0    warehouses_usa_warehouseid_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.warehouses_usa_warehouseid_seq OWNED BY public.warehouses_usa.warehouseid;
          public               postgres    false    223            �           2604    16968    cars_asia carid    DEFAULT     r   ALTER TABLE ONLY public.cars_asia ALTER COLUMN carid SET DEFAULT nextval('public.cars_asia_carid_seq'::regclass);
 >   ALTER TABLE public.cars_asia ALTER COLUMN carid DROP DEFAULT;
       public               postgres    false    233    234    234            �           2604    16888    cars_europe carid    DEFAULT     v   ALTER TABLE ONLY public.cars_europe ALTER COLUMN carid SET DEFAULT nextval('public.cars_europe_carid_seq'::regclass);
 @   ALTER TABLE public.cars_europe ALTER COLUMN carid DROP DEFAULT;
       public               postgres    false    221    222    222            �           2604    16928    cars_usa carid    DEFAULT     p   ALTER TABLE ONLY public.cars_usa ALTER COLUMN carid SET DEFAULT nextval('public.cars_usa_carid_seq'::regclass);
 =   ALTER TABLE public.cars_usa ALTER COLUMN carid DROP DEFAULT;
       public               postgres    false    228    227    228            �           2604    16952    employee_asia employeeid    DEFAULT     �   ALTER TABLE ONLY public.employee_asia ALTER COLUMN employeeid SET DEFAULT nextval('public.employee_asia_employeeid_seq'::regclass);
 G   ALTER TABLE public.employee_asia ALTER COLUMN employeeid DROP DEFAULT;
       public               postgres    false    231    232    232            �           2604    16872    employee_europe employeeid    DEFAULT     �   ALTER TABLE ONLY public.employee_europe ALTER COLUMN employeeid SET DEFAULT nextval('public.employee_europe_employeeid_seq'::regclass);
 I   ALTER TABLE public.employee_europe ALTER COLUMN employeeid DROP DEFAULT;
       public               postgres    false    219    220    220            �           2604    16912    employee_usa employeeid    DEFAULT     �   ALTER TABLE ONLY public.employee_usa ALTER COLUMN employeeid SET DEFAULT nextval('public.employee_usa_employeeid_seq'::regclass);
 F   ALTER TABLE public.employee_usa ALTER COLUMN employeeid DROP DEFAULT;
       public               postgres    false    226    225    226            �           2604    17054    machinery_asia machineryid    DEFAULT     �   ALTER TABLE ONLY public.machinery_asia ALTER COLUMN machineryid SET DEFAULT nextval('public.machinery_asia_machineryid_seq'::regclass);
 I   ALTER TABLE public.machinery_asia ALTER COLUMN machineryid DROP DEFAULT;
       public               postgres    false    244    243    244            �           2604    16982    machinery_europe machineryid    DEFAULT     �   ALTER TABLE ONLY public.machinery_europe ALTER COLUMN machineryid SET DEFAULT nextval('public.machinery_europe_machineryid_seq'::regclass);
 K   ALTER TABLE public.machinery_europe ALTER COLUMN machineryid DROP DEFAULT;
       public               postgres    false    235    236    236            �           2604    17018    machinery_usa machineryid    DEFAULT     �   ALTER TABLE ONLY public.machinery_usa ALTER COLUMN machineryid SET DEFAULT nextval('public.machinery_usa_machineryid_seq'::regclass);
 H   ALTER TABLE public.machinery_usa ALTER COLUMN machineryid DROP DEFAULT;
       public               postgres    false    240    239    240            �           2604    17069    orders_asia orderid    DEFAULT     z   ALTER TABLE ONLY public.orders_asia ALTER COLUMN orderid SET DEFAULT nextval('public.orders_asia_orderid_seq'::regclass);
 B   ALTER TABLE public.orders_asia ALTER COLUMN orderid DROP DEFAULT;
       public               postgres    false    246    245    246            �           2604    16997    orders_europe orderid    DEFAULT     ~   ALTER TABLE ONLY public.orders_europe ALTER COLUMN orderid SET DEFAULT nextval('public.orders_europe_orderid_seq'::regclass);
 D   ALTER TABLE public.orders_europe ALTER COLUMN orderid DROP DEFAULT;
       public               postgres    false    238    237    238            �           2604    17033    orders_usa orderid    DEFAULT     x   ALTER TABLE ONLY public.orders_usa ALTER COLUMN orderid SET DEFAULT nextval('public.orders_usa_orderid_seq'::regclass);
 A   ALTER TABLE public.orders_usa ALTER COLUMN orderid DROP DEFAULT;
       public               postgres    false    241    242    242            �           2604    16942    warehouses_asia warehouseid    DEFAULT     �   ALTER TABLE ONLY public.warehouses_asia ALTER COLUMN warehouseid SET DEFAULT nextval('public.warehouses_asia_warehouseid_seq'::regclass);
 J   ALTER TABLE public.warehouses_asia ALTER COLUMN warehouseid DROP DEFAULT;
       public               postgres    false    229    230    230            �           2604    16862    warehouses_europe warehouseid    DEFAULT     �   ALTER TABLE ONLY public.warehouses_europe ALTER COLUMN warehouseid SET DEFAULT nextval('public.warehouses_europe_warehouseid_seq'::regclass);
 L   ALTER TABLE public.warehouses_europe ALTER COLUMN warehouseid DROP DEFAULT;
       public               postgres    false    217    218    218            �           2604    16902    warehouses_usa warehouseid    DEFAULT     �   ALTER TABLE ONLY public.warehouses_usa ALTER COLUMN warehouseid SET DEFAULT nextval('public.warehouses_usa_warehouseid_seq'::regclass);
 I   ALTER TABLE public.warehouses_usa ALTER COLUMN warehouseid DROP DEFAULT;
       public               postgres    false    224    223    224            �          0    16965 	   cars_asia 
   TABLE DATA           b   COPY public.cars_asia (carid, manufacturer, model, year, color, mileage, warehouseid) FROM stdin;
    public               postgres    false    234   z�       �          0    16885    cars_europe 
   TABLE DATA           d   COPY public.cars_europe (carid, manufacturer, model, year, color, mileage, warehouseid) FROM stdin;
    public               postgres    false    222   �       �          0    16925    cars_usa 
   TABLE DATA           a   COPY public.cars_usa (carid, manufacturer, model, year, color, mileage, warehouseid) FROM stdin;
    public               postgres    false    228   ��       �          0    16949    employee_asia 
   TABLE DATA           q   COPY public.employee_asia (employeeid, first_name, last_name, jobid, hire_date, salary, warehouseid) FROM stdin;
    public               postgres    false    232   b�                 0    16869    employee_europe 
   TABLE DATA           s   COPY public.employee_europe (employeeid, first_name, last_name, jobid, hire_date, salary, warehouseid) FROM stdin;
    public               postgres    false    220   �       �          0    16909    employee_usa 
   TABLE DATA           p   COPY public.employee_usa (employeeid, first_name, last_name, jobid, hire_date, salary, warehouseid) FROM stdin;
    public               postgres    false    226   Ȩ       �          0    17051    machinery_asia 
   TABLE DATA           �   COPY public.machinery_asia (machineryid, type, model, purchase_date, condition, maintenance_schedule, last_inspection, warehouseid, country) FROM stdin;
    public               postgres    false    244   w�       �          0    16979    machinery_europe 
   TABLE DATA           �   COPY public.machinery_europe (machineryid, type, model, purchase_date, condition, maintenance_schedule, last_inspection, warehouseid, country) FROM stdin;
    public               postgres    false    236   ��       �          0    17015    machinery_usa 
   TABLE DATA           �   COPY public.machinery_usa (machineryid, type, model, purchase_date, condition, maintenance_schedule, last_inspection, warehouseid, region) FROM stdin;
    public               postgres    false    240   ��       �          0    17066    orders_asia 
   TABLE DATA           �   COPY public.orders_asia (orderid, order_date, delivery_date, total_amount, currency, status, employeeid, warehouseid, shipping_method, country) FROM stdin;
    public               postgres    false    246   ��       �          0    16994    orders_europe 
   TABLE DATA           �   COPY public.orders_europe (orderid, order_date, delivery_date, total_amount, currency, status, employeeid, warehouseid, shipping_method, country) FROM stdin;
    public               postgres    false    238   ժ       �          0    17030 
   orders_usa 
   TABLE DATA           �   COPY public.orders_usa (orderid, order_date, delivery_date, total_amount, currency, status, employeeid, warehouseid, shipping_method, region) FROM stdin;
    public               postgres    false    242   ��       �          0    16939    warehouses_asia 
   TABLE DATA           m   COPY public.warehouses_asia (warehouseid, name, location, country, capacity, manager_employeeid) FROM stdin;
    public               postgres    false    230   ��       }          0    16859    warehouses_europe 
   TABLE DATA           o   COPY public.warehouses_europe (warehouseid, name, location, country, capacity, manager_employeeid) FROM stdin;
    public               postgres    false    218   C�       �          0    16899    warehouses_usa 
   TABLE DATA           k   COPY public.warehouses_usa (warehouseid, name, location, region, capacity, manager_employeeid) FROM stdin;
    public               postgres    false    224   ڬ       �           0    0    cars_asia_carid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.cars_asia_carid_seq', 5, true);
          public               postgres    false    233            �           0    0    cars_europe_carid_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.cars_europe_carid_seq', 5, true);
          public               postgres    false    221            �           0    0    cars_usa_carid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.cars_usa_carid_seq', 5, true);
          public               postgres    false    227            �           0    0    employee_asia_employeeid_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.employee_asia_employeeid_seq', 5, true);
          public               postgres    false    231            �           0    0    employee_europe_employeeid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.employee_europe_employeeid_seq', 5, true);
          public               postgres    false    219            �           0    0    employee_usa_employeeid_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.employee_usa_employeeid_seq', 5, true);
          public               postgres    false    225            �           0    0    machinery_asia_machineryid_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.machinery_asia_machineryid_seq', 1, false);
          public               postgres    false    243            �           0    0     machinery_europe_machineryid_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.machinery_europe_machineryid_seq', 5, true);
          public               postgres    false    235            �           0    0    machinery_usa_machineryid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.machinery_usa_machineryid_seq', 1, false);
          public               postgres    false    239            �           0    0    orders_asia_orderid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.orders_asia_orderid_seq', 1, false);
          public               postgres    false    245            �           0    0    orders_europe_orderid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.orders_europe_orderid_seq', 5, true);
          public               postgres    false    237            �           0    0    orders_usa_orderid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.orders_usa_orderid_seq', 1, false);
          public               postgres    false    241            �           0    0    warehouses_asia_warehouseid_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.warehouses_asia_warehouseid_seq', 5, true);
          public               postgres    false    229            �           0    0 !   warehouses_europe_warehouseid_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.warehouses_europe_warehouseid_seq', 5, true);
          public               postgres    false    217            �           0    0    warehouses_usa_warehouseid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.warehouses_usa_warehouseid_seq', 5, true);
          public               postgres    false    223            �           2606    16972    cars_asia cars_asia_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.cars_asia
    ADD CONSTRAINT cars_asia_pkey PRIMARY KEY (carid);
 B   ALTER TABLE ONLY public.cars_asia DROP CONSTRAINT cars_asia_pkey;
       public                 postgres    false    234            �           2606    16892    cars_europe cars_europe_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.cars_europe
    ADD CONSTRAINT cars_europe_pkey PRIMARY KEY (carid);
 F   ALTER TABLE ONLY public.cars_europe DROP CONSTRAINT cars_europe_pkey;
       public                 postgres    false    222            �           2606    16932    cars_usa cars_usa_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.cars_usa
    ADD CONSTRAINT cars_usa_pkey PRIMARY KEY (carid);
 @   ALTER TABLE ONLY public.cars_usa DROP CONSTRAINT cars_usa_pkey;
       public                 postgres    false    228            �           2606    16958     employee_asia employee_asia_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.employee_asia
    ADD CONSTRAINT employee_asia_pkey PRIMARY KEY (employeeid);
 J   ALTER TABLE ONLY public.employee_asia DROP CONSTRAINT employee_asia_pkey;
       public                 postgres    false    232            �           2606    16878 $   employee_europe employee_europe_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.employee_europe
    ADD CONSTRAINT employee_europe_pkey PRIMARY KEY (employeeid);
 N   ALTER TABLE ONLY public.employee_europe DROP CONSTRAINT employee_europe_pkey;
       public                 postgres    false    220            �           2606    16918    employee_usa employee_usa_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.employee_usa
    ADD CONSTRAINT employee_usa_pkey PRIMARY KEY (employeeid);
 H   ALTER TABLE ONLY public.employee_usa DROP CONSTRAINT employee_usa_pkey;
       public                 postgres    false    226            �           2606    17059 "   machinery_asia machinery_asia_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.machinery_asia
    ADD CONSTRAINT machinery_asia_pkey PRIMARY KEY (machineryid);
 L   ALTER TABLE ONLY public.machinery_asia DROP CONSTRAINT machinery_asia_pkey;
       public                 postgres    false    244            �           2606    16987 &   machinery_europe machinery_europe_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.machinery_europe
    ADD CONSTRAINT machinery_europe_pkey PRIMARY KEY (machineryid);
 P   ALTER TABLE ONLY public.machinery_europe DROP CONSTRAINT machinery_europe_pkey;
       public                 postgres    false    236            �           2606    17023     machinery_usa machinery_usa_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.machinery_usa
    ADD CONSTRAINT machinery_usa_pkey PRIMARY KEY (machineryid);
 J   ALTER TABLE ONLY public.machinery_usa DROP CONSTRAINT machinery_usa_pkey;
       public                 postgres    false    240            �           2606    17075    orders_asia orders_asia_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.orders_asia
    ADD CONSTRAINT orders_asia_pkey PRIMARY KEY (orderid);
 F   ALTER TABLE ONLY public.orders_asia DROP CONSTRAINT orders_asia_pkey;
       public                 postgres    false    246            �           2606    17003     orders_europe orders_europe_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.orders_europe
    ADD CONSTRAINT orders_europe_pkey PRIMARY KEY (orderid);
 J   ALTER TABLE ONLY public.orders_europe DROP CONSTRAINT orders_europe_pkey;
       public                 postgres    false    238            �           2606    17039    orders_usa orders_usa_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.orders_usa
    ADD CONSTRAINT orders_usa_pkey PRIMARY KEY (orderid);
 D   ALTER TABLE ONLY public.orders_usa DROP CONSTRAINT orders_usa_pkey;
       public                 postgres    false    242            �           2606    16947 $   warehouses_asia warehouses_asia_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.warehouses_asia
    ADD CONSTRAINT warehouses_asia_pkey PRIMARY KEY (warehouseid);
 N   ALTER TABLE ONLY public.warehouses_asia DROP CONSTRAINT warehouses_asia_pkey;
       public                 postgres    false    230            �           2606    16867 (   warehouses_europe warehouses_europe_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.warehouses_europe
    ADD CONSTRAINT warehouses_europe_pkey PRIMARY KEY (warehouseid);
 R   ALTER TABLE ONLY public.warehouses_europe DROP CONSTRAINT warehouses_europe_pkey;
       public                 postgres    false    218            �           2606    16907 "   warehouses_usa warehouses_usa_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.warehouses_usa
    ADD CONSTRAINT warehouses_usa_pkey PRIMARY KEY (warehouseid);
 L   ALTER TABLE ONLY public.warehouses_usa DROP CONSTRAINT warehouses_usa_pkey;
       public                 postgres    false    224            �           2606    17004    orders_europe fk_employee    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_europe
    ADD CONSTRAINT fk_employee FOREIGN KEY (employeeid) REFERENCES public.employee_europe(employeeid);
 C   ALTER TABLE ONLY public.orders_europe DROP CONSTRAINT fk_employee;
       public               postgres    false    238    220    4801            �           2606    17040    orders_usa fk_employee    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_usa
    ADD CONSTRAINT fk_employee FOREIGN KEY (employeeid) REFERENCES public.employee_usa(employeeid);
 @   ALTER TABLE ONLY public.orders_usa DROP CONSTRAINT fk_employee;
       public               postgres    false    242    4807    226            �           2606    17076    orders_asia fk_employee    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_asia
    ADD CONSTRAINT fk_employee FOREIGN KEY (employeeid) REFERENCES public.employee_asia(employeeid);
 A   ALTER TABLE ONLY public.orders_asia DROP CONSTRAINT fk_employee;
       public               postgres    false    232    246    4813            �           2606    16879    employee_europe fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_europe
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_europe(warehouseid);
 F   ALTER TABLE ONLY public.employee_europe DROP CONSTRAINT fk_warehouse;
       public               postgres    false    4799    220    218            �           2606    16893    cars_europe fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.cars_europe
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_europe(warehouseid);
 B   ALTER TABLE ONLY public.cars_europe DROP CONSTRAINT fk_warehouse;
       public               postgres    false    218    222    4799            �           2606    16919    employee_usa fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_usa
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_usa(warehouseid);
 C   ALTER TABLE ONLY public.employee_usa DROP CONSTRAINT fk_warehouse;
       public               postgres    false    4805    224    226            �           2606    16933    cars_usa fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.cars_usa
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_usa(warehouseid);
 ?   ALTER TABLE ONLY public.cars_usa DROP CONSTRAINT fk_warehouse;
       public               postgres    false    228    224    4805            �           2606    16959    employee_asia fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_asia
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_asia(warehouseid);
 D   ALTER TABLE ONLY public.employee_asia DROP CONSTRAINT fk_warehouse;
       public               postgres    false    232    230    4811            �           2606    16973    cars_asia fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.cars_asia
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_asia(warehouseid);
 @   ALTER TABLE ONLY public.cars_asia DROP CONSTRAINT fk_warehouse;
       public               postgres    false    4811    230    234            �           2606    16988    machinery_europe fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.machinery_europe
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_europe(warehouseid);
 G   ALTER TABLE ONLY public.machinery_europe DROP CONSTRAINT fk_warehouse;
       public               postgres    false    218    4799    236            �           2606    17009    orders_europe fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_europe
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_europe(warehouseid);
 D   ALTER TABLE ONLY public.orders_europe DROP CONSTRAINT fk_warehouse;
       public               postgres    false    218    238    4799            �           2606    17024    machinery_usa fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.machinery_usa
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_usa(warehouseid);
 D   ALTER TABLE ONLY public.machinery_usa DROP CONSTRAINT fk_warehouse;
       public               postgres    false    240    4805    224            �           2606    17045    orders_usa fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_usa
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_usa(warehouseid);
 A   ALTER TABLE ONLY public.orders_usa DROP CONSTRAINT fk_warehouse;
       public               postgres    false    224    4805    242            �           2606    17060    machinery_asia fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.machinery_asia
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_asia(warehouseid);
 E   ALTER TABLE ONLY public.machinery_asia DROP CONSTRAINT fk_warehouse;
       public               postgres    false    244    230    4811            �           2606    17081    orders_asia fk_warehouse    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders_asia
    ADD CONSTRAINT fk_warehouse FOREIGN KEY (warehouseid) REFERENCES public.warehouses_asia(warehouseid);
 B   ALTER TABLE ONLY public.orders_asia DROP CONSTRAINT fk_warehouse;
       public               postgres    false    246    230    4811            �   �   x�-��
�0�o�E�&�ъ ���/��	��P�޶x{0��~�c+� �d�V����ql�R`Ҹ�!�6��,)\���qN�&��4)�X�$hԡw���p�]'�P��ߩ�<^�դTdq�o;Vn;r^��Z����}ID?Z�,      �   �   x���
�0Dϳ��b�)�Q=KK��C/�Y�`P0j�_��9-���(<&?�/�ečC�:SgT��EEU��i"���[��4�(W�P�������&ќ
��d�~��q*P�|�x%� �F�^��C%����qH25�b�v���HD��+�      �   �   x�-�M
�0���Sx%?��mō-�q����z{��n�|�a4F~G��x�;���mC�J)h2$y�����E7=`UuC��9I��3'����lMKFYeq��3�����=���8��9L�W���2Uo�~ �/�+�      �   �   x��M�P�����eb�~.#�@1C�6	]DC��׳~x9����(�㩄e�ĖX ��A�E��~���87�	�#ad����;M�v�z%�g$���3�>κ�Ƶ�6�۽J-K"da��<�QQ��'Ֆu��#��X0ϝ1�Ц*�         �   x�-��
�0���w��6�ѥT`���nF�ӷ�k����G���d�c;8��W�\r��Br?&�:��<�޾&du�|"I($K$Y��1���'�[F��RI<"���F,F�����ufDso(��ҷbC��
녍��QϣFiMo�쭪��F�^\\�+��.J3C      �   �   x�%�A�0���wY�77�k&��^�X�L��}�����@F�C0(��D�IpA�b �D=x�n�ˈ�5�'�%!_�d��0��>U�$N9�T��)��u_n�_�+��.��5���SL�l��`z���'�7�)ٌ����V��}��#B,      �      x������ � �      �   �   x�m��J�0F��O��L�V��-����
�B�f�F6lLd�?}{\
�wC��}g��|q�5��I4��=�4j����aa�)�xvk~/�Ri
z�����1y�5/g�,�yJiL�j%��4�}��s�Gx� ���4�-�o�ע�#%0�{:]Rr���8�3�zKY��J
�ܔ*-���T�n�#m�SVj$6��2<��h��L�W�J]�f,v�E8����_+����Y���|T��<�E�Se      �      x������ � �      �      x������ � �      �   �   x�e��
1E�ɿ�L�Z��m���&���������Bns�9�;*�I١�+!"��'�a��ل���MN�z����*������3�|
}~�����M����+�i��'�4g�vҚz�*��h��֦�����S7g����_��7����o����B|�GH      �      x������ � �      �   �   x�U���0Eg�+���1#^�!H,]Le5UQ\����3�n�qt��Y��2���^����^$1A[U���2}��e	�4S���5�R�ϒ-/,�aܕ&B�%���~��!-�bX">)q���_���n��a<�      }   �   x�=���0 ��W���'�hI�n��%��E0����Z���C�]^�Bl��)K��jK���Q�]�(��/�SV�9x��#:1#&ʯ*E5��a�'�.��O�5�4�GAݹ�B�!�M��)�����=p      �   �   x�U��
�0���S�	d�^u*�.;��K�g#M��W��z	|?_�9���+�;�4�q�`E���UQ@ߚ4,��F<�n9Å&��%�X�v��:�a^.�YBg����qOO��-��Wgov^��8�W��gƘt5H�     