PGDMP                  
    |            transaction    17.0    17.0 8    9           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            :           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            ;           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            <           1262    17087    transaction    DATABASE     �   CREATE DATABASE transaction WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Finnish_Finland.1252';
    DROP DATABASE transaction;
                     postgres    false            �            1259    17211    employee_asia    TABLE     �  CREATE TABLE public.employee_asia (
    employee_asiaid integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    jobid text,
    hire_date date NOT NULL,
    salary real,
    CONSTRAINT employee_asia_jobid_check CHECK ((jobid = ANY (ARRAY['intern'::text, 'IT'::text, 'HR'::text, 'SYS-ADMIN'::text, 'CEO'::text, 'WH-SUP'::text, 'WH-WORK'::text]))),
    CONSTRAINT employee_asia_salary_check CHECK ((salary >= (0)::double precision))
);
 !   DROP TABLE public.employee_asia;
       public         heap r       postgres    false            �            1259    17210 !   employee_asia_employee_asiaid_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_asia_employee_asiaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.employee_asia_employee_asiaid_seq;
       public               postgres    false    224            =           0    0 !   employee_asia_employee_asiaid_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.employee_asia_employee_asiaid_seq OWNED BY public.employee_asia.employee_asiaid;
          public               postgres    false    223            �            1259    17189    employee_europe    TABLE     �  CREATE TABLE public.employee_europe (
    employee_europeid integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    jobid text,
    hire_date date NOT NULL,
    salary real,
    CONSTRAINT employee_europe_jobid_check CHECK ((jobid = ANY (ARRAY['intern'::text, 'IT'::text, 'HR'::text, 'SYS-ADMIN'::text, 'CEO'::text, 'WH-SUP'::text, 'WH-WORK'::text]))),
    CONSTRAINT employee_europe_salary_check CHECK ((salary >= (0)::double precision))
);
 #   DROP TABLE public.employee_europe;
       public         heap r       postgres    false            �            1259    17188 %   employee_europe_employee_europeid_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_europe_employee_europeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.employee_europe_employee_europeid_seq;
       public               postgres    false    220            >           0    0 %   employee_europe_employee_europeid_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.employee_europe_employee_europeid_seq OWNED BY public.employee_europe.employee_europeid;
          public               postgres    false    219            �            1259    17200    employee_usa    TABLE     �  CREATE TABLE public.employee_usa (
    employee_usaid integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    jobid text,
    hire_date date NOT NULL,
    salary real,
    CONSTRAINT employee_usa_jobid_check CHECK ((jobid = ANY (ARRAY['intern'::text, 'IT'::text, 'HR'::text, 'SYS-ADMIN'::text, 'CEO'::text, 'WH-SUP'::text, 'WH-WORK'::text]))),
    CONSTRAINT employee_usa_salary_check CHECK ((salary >= (0)::double precision))
);
     DROP TABLE public.employee_usa;
       public         heap r       postgres    false            �            1259    17199    employee_usa_employee_usaid_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_usa_employee_usaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.employee_usa_employee_usaid_seq;
       public               postgres    false    222            ?           0    0    employee_usa_employee_usaid_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.employee_usa_employee_usaid_seq OWNED BY public.employee_usa.employee_usaid;
          public               postgres    false    221            �            1259    17269    salary_payment_asia    TABLE       CREATE TABLE public.salary_payment_asia (
    salary_payment_asiaid integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    salary real,
    employee_asiaid integer,
    CONSTRAINT salary_payment_asia_salary_check CHECK ((salary >= (0)::double precision))
);
 '   DROP TABLE public.salary_payment_asia;
       public         heap r       postgres    false            �            1259    17268 -   salary_payment_asia_salary_payment_asiaid_seq    SEQUENCE     �   CREATE SEQUENCE public.salary_payment_asia_salary_payment_asiaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.salary_payment_asia_salary_payment_asiaid_seq;
       public               postgres    false    230            @           0    0 -   salary_payment_asia_salary_payment_asiaid_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.salary_payment_asia_salary_payment_asiaid_seq OWNED BY public.salary_payment_asia.salary_payment_asiaid;
          public               postgres    false    229            �            1259    17222    salary_payment_europe    TABLE     $  CREATE TABLE public.salary_payment_europe (
    salary_payment_europeid integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    salary real,
    employee_europeid integer,
    CONSTRAINT salary_payment_europe_salary_check CHECK ((salary >= (0)::double precision))
);
 )   DROP TABLE public.salary_payment_europe;
       public         heap r       postgres    false            �            1259    17221 1   salary_payment_europe_salary_payment_europeid_seq    SEQUENCE     �   CREATE SEQUENCE public.salary_payment_europe_salary_payment_europeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.salary_payment_europe_salary_payment_europeid_seq;
       public               postgres    false    226            A           0    0 1   salary_payment_europe_salary_payment_europeid_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.salary_payment_europe_salary_payment_europeid_seq OWNED BY public.salary_payment_europe.salary_payment_europeid;
          public               postgres    false    225            �            1259    17237    salary_payment_usa    TABLE       CREATE TABLE public.salary_payment_usa (
    salary_payment_usaid integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    salary real,
    employee_usaid integer,
    CONSTRAINT salary_payment_usa_salary_check CHECK ((salary >= (0)::double precision))
);
 &   DROP TABLE public.salary_payment_usa;
       public         heap r       postgres    false            �            1259    17236 +   salary_payment_usa_salary_payment_usaid_seq    SEQUENCE     �   CREATE SEQUENCE public.salary_payment_usa_salary_payment_usaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.salary_payment_usa_salary_payment_usaid_seq;
       public               postgres    false    228            B           0    0 +   salary_payment_usa_salary_payment_usaid_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.salary_payment_usa_salary_payment_usaid_seq OWNED BY public.salary_payment_usa.salary_payment_usaid;
          public               postgres    false    227            �            1259    17178    users    TABLE     I  CREATE TABLE public.users (
    userid integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    warehouse_fee real,
    commission real,
    CONSTRAINT users_commission_check CHECK ((commission >= (0)::double precision)),
    CONSTRAINT users_warehouse_fee_check CHECK ((warehouse_fee >= (0)::double precision))
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    17177    users_userid_seq    SEQUENCE     �   CREATE SEQUENCE public.users_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.users_userid_seq;
       public               postgres    false    218            C           0    0    users_userid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.users_userid_seq OWNED BY public.users.userid;
          public               postgres    false    217            x           2604    17214    employee_asia employee_asiaid    DEFAULT     �   ALTER TABLE ONLY public.employee_asia ALTER COLUMN employee_asiaid SET DEFAULT nextval('public.employee_asia_employee_asiaid_seq'::regclass);
 L   ALTER TABLE public.employee_asia ALTER COLUMN employee_asiaid DROP DEFAULT;
       public               postgres    false    224    223    224            v           2604    17192 !   employee_europe employee_europeid    DEFAULT     �   ALTER TABLE ONLY public.employee_europe ALTER COLUMN employee_europeid SET DEFAULT nextval('public.employee_europe_employee_europeid_seq'::regclass);
 P   ALTER TABLE public.employee_europe ALTER COLUMN employee_europeid DROP DEFAULT;
       public               postgres    false    219    220    220            w           2604    17203    employee_usa employee_usaid    DEFAULT     �   ALTER TABLE ONLY public.employee_usa ALTER COLUMN employee_usaid SET DEFAULT nextval('public.employee_usa_employee_usaid_seq'::regclass);
 J   ALTER TABLE public.employee_usa ALTER COLUMN employee_usaid DROP DEFAULT;
       public               postgres    false    221    222    222            {           2604    17272 )   salary_payment_asia salary_payment_asiaid    DEFAULT     �   ALTER TABLE ONLY public.salary_payment_asia ALTER COLUMN salary_payment_asiaid SET DEFAULT nextval('public.salary_payment_asia_salary_payment_asiaid_seq'::regclass);
 X   ALTER TABLE public.salary_payment_asia ALTER COLUMN salary_payment_asiaid DROP DEFAULT;
       public               postgres    false    229    230    230            y           2604    17225 -   salary_payment_europe salary_payment_europeid    DEFAULT     �   ALTER TABLE ONLY public.salary_payment_europe ALTER COLUMN salary_payment_europeid SET DEFAULT nextval('public.salary_payment_europe_salary_payment_europeid_seq'::regclass);
 \   ALTER TABLE public.salary_payment_europe ALTER COLUMN salary_payment_europeid DROP DEFAULT;
       public               postgres    false    226    225    226            z           2604    17240 '   salary_payment_usa salary_payment_usaid    DEFAULT     �   ALTER TABLE ONLY public.salary_payment_usa ALTER COLUMN salary_payment_usaid SET DEFAULT nextval('public.salary_payment_usa_salary_payment_usaid_seq'::regclass);
 V   ALTER TABLE public.salary_payment_usa ALTER COLUMN salary_payment_usaid DROP DEFAULT;
       public               postgres    false    228    227    228            u           2604    17181    users userid    DEFAULT     l   ALTER TABLE ONLY public.users ALTER COLUMN userid SET DEFAULT nextval('public.users_userid_seq'::regclass);
 ;   ALTER TABLE public.users ALTER COLUMN userid DROP DEFAULT;
       public               postgres    false    217    218    218            0          0    17211    employee_asia 
   TABLE DATA           i   COPY public.employee_asia (employee_asiaid, first_name, last_name, jobid, hire_date, salary) FROM stdin;
    public               postgres    false    224   1M       ,          0    17189    employee_europe 
   TABLE DATA           m   COPY public.employee_europe (employee_europeid, first_name, last_name, jobid, hire_date, salary) FROM stdin;
    public               postgres    false    220   �M       .          0    17200    employee_usa 
   TABLE DATA           g   COPY public.employee_usa (employee_usaid, first_name, last_name, jobid, hire_date, salary) FROM stdin;
    public               postgres    false    222   �N       6          0    17269    salary_payment_asia 
   TABLE DATA           t   COPY public.salary_payment_asia (salary_payment_asiaid, first_name, last_name, salary, employee_asiaid) FROM stdin;
    public               postgres    false    230   =O       2          0    17222    salary_payment_europe 
   TABLE DATA           z   COPY public.salary_payment_europe (salary_payment_europeid, first_name, last_name, salary, employee_europeid) FROM stdin;
    public               postgres    false    226   �O       4          0    17237    salary_payment_usa 
   TABLE DATA           q   COPY public.salary_payment_usa (salary_payment_usaid, first_name, last_name, salary, employee_usaid) FROM stdin;
    public               postgres    false    228   /P       *          0    17178    users 
   TABLE DATA           O   COPY public.users (userid, name, email, warehouse_fee, commission) FROM stdin;
    public               postgres    false    218   �P       D           0    0 !   employee_asia_employee_asiaid_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.employee_asia_employee_asiaid_seq', 5, true);
          public               postgres    false    223            E           0    0 %   employee_europe_employee_europeid_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.employee_europe_employee_europeid_seq', 5, true);
          public               postgres    false    219            F           0    0    employee_usa_employee_usaid_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.employee_usa_employee_usaid_seq', 5, true);
          public               postgres    false    221            G           0    0 -   salary_payment_asia_salary_payment_asiaid_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.salary_payment_asia_salary_payment_asiaid_seq', 5, true);
          public               postgres    false    229            H           0    0 1   salary_payment_europe_salary_payment_europeid_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.salary_payment_europe_salary_payment_europeid_seq', 5, true);
          public               postgres    false    225            I           0    0 +   salary_payment_usa_salary_payment_usaid_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.salary_payment_usa_salary_payment_usaid_seq', 5, true);
          public               postgres    false    227            J           0    0    users_userid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.users_userid_seq', 5, true);
          public               postgres    false    217            �           2606    17220     employee_asia employee_asia_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.employee_asia
    ADD CONSTRAINT employee_asia_pkey PRIMARY KEY (employee_asiaid);
 J   ALTER TABLE ONLY public.employee_asia DROP CONSTRAINT employee_asia_pkey;
       public                 postgres    false    224            �           2606    17198 $   employee_europe employee_europe_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.employee_europe
    ADD CONSTRAINT employee_europe_pkey PRIMARY KEY (employee_europeid);
 N   ALTER TABLE ONLY public.employee_europe DROP CONSTRAINT employee_europe_pkey;
       public                 postgres    false    220            �           2606    17209    employee_usa employee_usa_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.employee_usa
    ADD CONSTRAINT employee_usa_pkey PRIMARY KEY (employee_usaid);
 H   ALTER TABLE ONLY public.employee_usa DROP CONSTRAINT employee_usa_pkey;
       public                 postgres    false    222            �           2606    17277 ,   salary_payment_asia salary_payment_asia_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.salary_payment_asia
    ADD CONSTRAINT salary_payment_asia_pkey PRIMARY KEY (salary_payment_asiaid);
 V   ALTER TABLE ONLY public.salary_payment_asia DROP CONSTRAINT salary_payment_asia_pkey;
       public                 postgres    false    230            �           2606    17230 0   salary_payment_europe salary_payment_europe_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.salary_payment_europe
    ADD CONSTRAINT salary_payment_europe_pkey PRIMARY KEY (salary_payment_europeid);
 Z   ALTER TABLE ONLY public.salary_payment_europe DROP CONSTRAINT salary_payment_europe_pkey;
       public                 postgres    false    226            �           2606    17245 *   salary_payment_usa salary_payment_usa_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.salary_payment_usa
    ADD CONSTRAINT salary_payment_usa_pkey PRIMARY KEY (salary_payment_usaid);
 T   ALTER TABLE ONLY public.salary_payment_usa DROP CONSTRAINT salary_payment_usa_pkey;
       public                 postgres    false    228            �           2606    17187    users users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    218            �           2606    17278 $   salary_payment_asia fk_employee_asia    FK CONSTRAINT     �   ALTER TABLE ONLY public.salary_payment_asia
    ADD CONSTRAINT fk_employee_asia FOREIGN KEY (employee_asiaid) REFERENCES public.employee_asia(employee_asiaid);
 N   ALTER TABLE ONLY public.salary_payment_asia DROP CONSTRAINT fk_employee_asia;
       public               postgres    false    224    230    4750            �           2606    17231 (   salary_payment_europe fk_employee_europe    FK CONSTRAINT     �   ALTER TABLE ONLY public.salary_payment_europe
    ADD CONSTRAINT fk_employee_europe FOREIGN KEY (employee_europeid) REFERENCES public.employee_europe(employee_europeid);
 R   ALTER TABLE ONLY public.salary_payment_europe DROP CONSTRAINT fk_employee_europe;
       public               postgres    false    220    4746    226            �           2606    17246 "   salary_payment_usa fk_employee_usa    FK CONSTRAINT     �   ALTER TABLE ONLY public.salary_payment_usa
    ADD CONSTRAINT fk_employee_usa FOREIGN KEY (employee_usaid) REFERENCES public.employee_usa(employee_usaid);
 L   ALTER TABLE ONLY public.salary_payment_usa DROP CONSTRAINT fk_employee_usa;
       public               postgres    false    222    4748    228            0   �   x���
�@F���ܸ3��K��"�8�mn 9Y�Ao���|�tt���IFA�@�VĆ8�6b�@��N�LWd��8&��{�Z>v��!���tW�{y�+�h�-�C��W^�C�Q{�/Õ�f��e�t�-*y�w��Z�JH1�F{u�A���-/      ,   �   x�5ͽ
�0���˽9Iѱ����U���!`hM�z����W���������P�$�$i`3�����ݯ_�Q5d��)F�!��.�Ck}p#����3d�iƞ3,P�Q�4��6U4��&Iy$���%M:�d���/��%'5�&ePl��N�Y�1O      .   �   x��O�@���o������cP��jH�e��Lc��>}��e���~���N㐷�\
�k	��$��~�F��lG�CV�J����R���FƠ�6�ݕ��g"�I�͒Eh�Wﱃvw�����>O�d@����V�Ʌ���C�_&$RDw[1����.{      6   k   x���
�@��w&�����"�m>A���S
�����
M�B��LD�1�Ģ����?̊Í���,_�|�����i��_T8�������+�����y��k�      2   g   x��1� ������������
���(�;��cє
B���%�{cz��U��M�7V�Xr�<s�,L]1F���5��k:��U_U��=<�}�- �      4   o   x�3�t-�H��O��N-�47 NC.#N��̲�DN�Ģ�̼�*NS���1P�8?��'5��,f�e��_�T�X���A�9M�L9}2s9C+s�8M��M�b���� |q      *   �   x�U̱�0���ܧ�܀2*���ե�� ��F����q�����)1�L��5�'��|�l£z�ʂls��k��{bVVZ:�-��t�k�M�����&�B��tO�8u쒲���j\�����e�D򔘕m,�3� �PC	     