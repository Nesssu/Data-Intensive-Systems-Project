PGDMP                      |            Transaction    17.2    17.0 8    9           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            :           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            ;           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            <           1262    16658    Transaction    DATABASE     �   CREATE DATABASE "Transaction" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Kingdom.utf8';
    DROP DATABASE "Transaction";
                     postgres    false            �            1259    16659    employee_asia    TABLE     �  CREATE TABLE public.employee_asia (
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
       public         heap r       postgres    false            �            1259    16666 !   employee_asia_employee_asiaid_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_asia_employee_asiaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.employee_asia_employee_asiaid_seq;
       public               postgres    false    217            =           0    0 !   employee_asia_employee_asiaid_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.employee_asia_employee_asiaid_seq OWNED BY public.employee_asia.employee_asiaid;
          public               postgres    false    218            �            1259    16667    employee_europe    TABLE     �  CREATE TABLE public.employee_europe (
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
       public         heap r       postgres    false            �            1259    16674 %   employee_europe_employee_europeid_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_europe_employee_europeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.employee_europe_employee_europeid_seq;
       public               postgres    false    219            >           0    0 %   employee_europe_employee_europeid_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.employee_europe_employee_europeid_seq OWNED BY public.employee_europe.employee_europeid;
          public               postgres    false    220            �            1259    16675    employee_usa    TABLE     �  CREATE TABLE public.employee_usa (
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
       public         heap r       postgres    false            �            1259    16682    employee_usa_employee_usaid_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_usa_employee_usaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.employee_usa_employee_usaid_seq;
       public               postgres    false    221            ?           0    0    employee_usa_employee_usaid_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.employee_usa_employee_usaid_seq OWNED BY public.employee_usa.employee_usaid;
          public               postgres    false    222            �            1259    16683    salary_payment_asia    TABLE       CREATE TABLE public.salary_payment_asia (
    salary_payment_asiaid integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    salary real,
    employee_asiaid integer,
    CONSTRAINT salary_payment_asia_salary_check CHECK ((salary >= (0)::double precision))
);
 '   DROP TABLE public.salary_payment_asia;
       public         heap r       postgres    false            �            1259    16689 -   salary_payment_asia_salary_payment_asiaid_seq    SEQUENCE     �   CREATE SEQUENCE public.salary_payment_asia_salary_payment_asiaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public.salary_payment_asia_salary_payment_asiaid_seq;
       public               postgres    false    223            @           0    0 -   salary_payment_asia_salary_payment_asiaid_seq    SEQUENCE OWNED BY        ALTER SEQUENCE public.salary_payment_asia_salary_payment_asiaid_seq OWNED BY public.salary_payment_asia.salary_payment_asiaid;
          public               postgres    false    224            �            1259    16690    salary_payment_europe    TABLE     $  CREATE TABLE public.salary_payment_europe (
    salary_payment_europeid integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    salary real,
    employee_europeid integer,
    CONSTRAINT salary_payment_europe_salary_check CHECK ((salary >= (0)::double precision))
);
 )   DROP TABLE public.salary_payment_europe;
       public         heap r       postgres    false            �            1259    16696 1   salary_payment_europe_salary_payment_europeid_seq    SEQUENCE     �   CREATE SEQUENCE public.salary_payment_europe_salary_payment_europeid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public.salary_payment_europe_salary_payment_europeid_seq;
       public               postgres    false    225            A           0    0 1   salary_payment_europe_salary_payment_europeid_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.salary_payment_europe_salary_payment_europeid_seq OWNED BY public.salary_payment_europe.salary_payment_europeid;
          public               postgres    false    226            �            1259    16697    salary_payment_usa    TABLE       CREATE TABLE public.salary_payment_usa (
    salary_payment_usaid integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    salary real,
    employee_usaid integer,
    CONSTRAINT salary_payment_usa_salary_check CHECK ((salary >= (0)::double precision))
);
 &   DROP TABLE public.salary_payment_usa;
       public         heap r       postgres    false            �            1259    16703 +   salary_payment_usa_salary_payment_usaid_seq    SEQUENCE     �   CREATE SEQUENCE public.salary_payment_usa_salary_payment_usaid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.salary_payment_usa_salary_payment_usaid_seq;
       public               postgres    false    227            B           0    0 +   salary_payment_usa_salary_payment_usaid_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.salary_payment_usa_salary_payment_usaid_seq OWNED BY public.salary_payment_usa.salary_payment_usaid;
          public               postgres    false    228            �            1259    16704    users    TABLE     I  CREATE TABLE public.users (
    userid integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    warehouse_fee real,
    commission real,
    CONSTRAINT users_commission_check CHECK ((commission >= (0)::double precision)),
    CONSTRAINT users_warehouse_fee_check CHECK ((warehouse_fee >= (0)::double precision))
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16711    users_userid_seq    SEQUENCE     �   CREATE SEQUENCE public.users_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.users_userid_seq;
       public               postgres    false    229            C           0    0    users_userid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.users_userid_seq OWNED BY public.users.userid;
          public               postgres    false    230            u           2604    16712    employee_asia employee_asiaid    DEFAULT     �   ALTER TABLE ONLY public.employee_asia ALTER COLUMN employee_asiaid SET DEFAULT nextval('public.employee_asia_employee_asiaid_seq'::regclass);
 L   ALTER TABLE public.employee_asia ALTER COLUMN employee_asiaid DROP DEFAULT;
       public               postgres    false    218    217            v           2604    16713 !   employee_europe employee_europeid    DEFAULT     �   ALTER TABLE ONLY public.employee_europe ALTER COLUMN employee_europeid SET DEFAULT nextval('public.employee_europe_employee_europeid_seq'::regclass);
 P   ALTER TABLE public.employee_europe ALTER COLUMN employee_europeid DROP DEFAULT;
       public               postgres    false    220    219            w           2604    16714    employee_usa employee_usaid    DEFAULT     �   ALTER TABLE ONLY public.employee_usa ALTER COLUMN employee_usaid SET DEFAULT nextval('public.employee_usa_employee_usaid_seq'::regclass);
 J   ALTER TABLE public.employee_usa ALTER COLUMN employee_usaid DROP DEFAULT;
       public               postgres    false    222    221            x           2604    16715 )   salary_payment_asia salary_payment_asiaid    DEFAULT     �   ALTER TABLE ONLY public.salary_payment_asia ALTER COLUMN salary_payment_asiaid SET DEFAULT nextval('public.salary_payment_asia_salary_payment_asiaid_seq'::regclass);
 X   ALTER TABLE public.salary_payment_asia ALTER COLUMN salary_payment_asiaid DROP DEFAULT;
       public               postgres    false    224    223            y           2604    16716 -   salary_payment_europe salary_payment_europeid    DEFAULT     �   ALTER TABLE ONLY public.salary_payment_europe ALTER COLUMN salary_payment_europeid SET DEFAULT nextval('public.salary_payment_europe_salary_payment_europeid_seq'::regclass);
 \   ALTER TABLE public.salary_payment_europe ALTER COLUMN salary_payment_europeid DROP DEFAULT;
       public               postgres    false    226    225            z           2604    16717 '   salary_payment_usa salary_payment_usaid    DEFAULT     �   ALTER TABLE ONLY public.salary_payment_usa ALTER COLUMN salary_payment_usaid SET DEFAULT nextval('public.salary_payment_usa_salary_payment_usaid_seq'::regclass);
 V   ALTER TABLE public.salary_payment_usa ALTER COLUMN salary_payment_usaid DROP DEFAULT;
       public               postgres    false    228    227            {           2604    16718    users userid    DEFAULT     l   ALTER TABLE ONLY public.users ALTER COLUMN userid SET DEFAULT nextval('public.users_userid_seq'::regclass);
 ;   ALTER TABLE public.users ALTER COLUMN userid DROP DEFAULT;
       public               postgres    false    230    229            )          0    16659    employee_asia 
   TABLE DATA           i   COPY public.employee_asia (employee_asiaid, first_name, last_name, jobid, hire_date, salary) FROM stdin;
    public               postgres    false    217   M       +          0    16667    employee_europe 
   TABLE DATA           m   COPY public.employee_europe (employee_europeid, first_name, last_name, jobid, hire_date, salary) FROM stdin;
    public               postgres    false    219   �N       -          0    16675    employee_usa 
   TABLE DATA           g   COPY public.employee_usa (employee_usaid, first_name, last_name, jobid, hire_date, salary) FROM stdin;
    public               postgres    false    221   nP       /          0    16683    salary_payment_asia 
   TABLE DATA           t   COPY public.salary_payment_asia (salary_payment_asiaid, first_name, last_name, salary, employee_asiaid) FROM stdin;
    public               postgres    false    223   AR       1          0    16690    salary_payment_europe 
   TABLE DATA           z   COPY public.salary_payment_europe (salary_payment_europeid, first_name, last_name, salary, employee_europeid) FROM stdin;
    public               postgres    false    225   |S       3          0    16697    salary_payment_usa 
   TABLE DATA           q   COPY public.salary_payment_usa (salary_payment_usaid, first_name, last_name, salary, employee_usaid) FROM stdin;
    public               postgres    false    227   �T       5          0    16704    users 
   TABLE DATA           O   COPY public.users (userid, name, email, warehouse_fee, commission) FROM stdin;
    public               postgres    false    229   V       D           0    0 !   employee_asia_employee_asiaid_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.employee_asia_employee_asiaid_seq', 5, true);
          public               postgres    false    218            E           0    0 %   employee_europe_employee_europeid_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.employee_europe_employee_europeid_seq', 5, true);
          public               postgres    false    220            F           0    0    employee_usa_employee_usaid_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.employee_usa_employee_usaid_seq', 5, true);
          public               postgres    false    222            G           0    0 -   salary_payment_asia_salary_payment_asiaid_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.salary_payment_asia_salary_payment_asiaid_seq', 5, true);
          public               postgres    false    224            H           0    0 1   salary_payment_europe_salary_payment_europeid_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public.salary_payment_europe_salary_payment_europeid_seq', 5, true);
          public               postgres    false    226            I           0    0 +   salary_payment_usa_salary_payment_usaid_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.salary_payment_usa_salary_payment_usaid_seq', 5, true);
          public               postgres    false    228            J           0    0    users_userid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.users_userid_seq', 5, true);
          public               postgres    false    230            �           2606    16720     employee_asia employee_asia_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.employee_asia
    ADD CONSTRAINT employee_asia_pkey PRIMARY KEY (employee_asiaid);
 J   ALTER TABLE ONLY public.employee_asia DROP CONSTRAINT employee_asia_pkey;
       public                 postgres    false    217            �           2606    16722 $   employee_europe employee_europe_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.employee_europe
    ADD CONSTRAINT employee_europe_pkey PRIMARY KEY (employee_europeid);
 N   ALTER TABLE ONLY public.employee_europe DROP CONSTRAINT employee_europe_pkey;
       public                 postgres    false    219            �           2606    16724    employee_usa employee_usa_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.employee_usa
    ADD CONSTRAINT employee_usa_pkey PRIMARY KEY (employee_usaid);
 H   ALTER TABLE ONLY public.employee_usa DROP CONSTRAINT employee_usa_pkey;
       public                 postgres    false    221            �           2606    16726 ,   salary_payment_asia salary_payment_asia_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.salary_payment_asia
    ADD CONSTRAINT salary_payment_asia_pkey PRIMARY KEY (salary_payment_asiaid);
 V   ALTER TABLE ONLY public.salary_payment_asia DROP CONSTRAINT salary_payment_asia_pkey;
       public                 postgres    false    223            �           2606    16728 0   salary_payment_europe salary_payment_europe_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.salary_payment_europe
    ADD CONSTRAINT salary_payment_europe_pkey PRIMARY KEY (salary_payment_europeid);
 Z   ALTER TABLE ONLY public.salary_payment_europe DROP CONSTRAINT salary_payment_europe_pkey;
       public                 postgres    false    225            �           2606    16730 *   salary_payment_usa salary_payment_usa_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.salary_payment_usa
    ADD CONSTRAINT salary_payment_usa_pkey PRIMARY KEY (salary_payment_usaid);
 T   ALTER TABLE ONLY public.salary_payment_usa DROP CONSTRAINT salary_payment_usa_pkey;
       public                 postgres    false    227            �           2606    16732    users users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    229            �           2606    16733 $   salary_payment_asia fk_employee_asia    FK CONSTRAINT     �   ALTER TABLE ONLY public.salary_payment_asia
    ADD CONSTRAINT fk_employee_asia FOREIGN KEY (employee_asiaid) REFERENCES public.employee_asia(employee_asiaid);
 N   ALTER TABLE ONLY public.salary_payment_asia DROP CONSTRAINT fk_employee_asia;
       public               postgres    false    217    4744    223            �           2606    16738 (   salary_payment_europe fk_employee_europe    FK CONSTRAINT     �   ALTER TABLE ONLY public.salary_payment_europe
    ADD CONSTRAINT fk_employee_europe FOREIGN KEY (employee_europeid) REFERENCES public.employee_europe(employee_europeid);
 R   ALTER TABLE ONLY public.salary_payment_europe DROP CONSTRAINT fk_employee_europe;
       public               postgres    false    219    225    4746            �           2606    16743 "   salary_payment_usa fk_employee_usa    FK CONSTRAINT     �   ALTER TABLE ONLY public.salary_payment_usa
    ADD CONSTRAINT fk_employee_usa FOREIGN KEY (employee_usaid) REFERENCES public.employee_usa(employee_usaid);
 L   ALTER TABLE ONLY public.salary_payment_usa DROP CONSTRAINT fk_employee_usa;
       public               postgres    false    227    221    4748            )   �  x�m��N�0�ϓw1���I�
��j@U�E��ƑB�Էg���Kœ�of�P�]Ox$O{��#��J�L��H)����!��dε��P)�x�bIuC}K�׵�nf�� �<EH�<
3���ô{��7��X=,�A��Lh�T�Aտ:nAV?-X�J��P�*��m��?��L���s^��Zx��
���b�����6��F�w��
)|��,C�A�/�;:T���p�f�bf3�[)L\��1��<U�T�<�T�'��t�mֱ$�Ee�{7�-��S*Tiʨ�0s��0u�-�Ԃ�[&�}���ȱ�c����=y��w�x'x���]'�`�<a�N_尷О�M�������{�b�*
J,z�ޗ���tYSƂ�x5%&��kj����,�!�a�헫$I> V��      +   �  x�e��n�@��ûl4��k8Zj%��2n�J��a��0 a�'�Mx��,�n�����g4�iz���[߅O`�h�Zi�"bb�"�x�E��*��V�,B)��������j�m��, *�U��P����PL��R�����P��"�1��D�|��~��σD�
Se,d1��a���
�/�c� 'P�YM��e�"Dt#Lu�J,�i�y���\ië��+��w]T�����Z`�آd��q�֬Cq4fm�CO��.݂6Jg��H8���P�S;Og�M�>5��_.���r�ӵ�+NJ)�8�#��)��
�?�W�{���9��U�:x��SsGj1B�!�`ۍ#A����r76r�o���m�?x%E���RΝt���H����e"Y���^�/��\�t�#����4��E>��F���$�_���      -   �  x�]��n�0DϫaAR"%�&���Ia�
�B�H��
JM�~}wV��z�ݙY��3:�m��3H.�		5ǧ����7p4i����݉(�g���?Oc�����l�������ؠ���UЎ��}5��W�c���镌�d%	
�p6�0&��߉5����Gߏ��Τ�eN�!�%15ܙ�m�����,64LB8]1����C�'�
��Q����g7fZ2���Am�A���5f��an��&�[灱���:�"�`�$WN��Ge&%&<�ξ�q�]���&W�d���䂽B�Ϳ��ZW��LV�y�}6�'�m4�sBAk�q���qIBA�>����c�Ӫ64"(�%��v�|o�s_���k&�7+��;C��x��[��|o�|��l��v�j9��h?��h��
W��OEQ����G      /   +  x�M��j�0E�w>�hlK�����<I��t3�&�8�����ʪ�qF��W���Q�*^:���0%�7��V�Yd	�8ɷ�����HS�p�:�v��Y�ZEj�AF�x�<��h�Ȓ�Zr��n<��p��p�G���#�"�����xQ�ے�*���PT��t�K��!flt��0�f��?�_#��IB�b���ޖ������[��\���?�ӵ[b���C&ma��;����u�Cy���9q��6e��8҂��qԐ����,���ld�.�K?���COD��r^      1   2  x�M�;n�0�g�0�hK�=f(`�QMЩ�!lK���D��/V�v���H����"�x��0F)����x�\Z@�%\�{8:�ʯ%j�q���t��x)�M���?��l,�&�_��)�"����\�M+��V�T�ލ�2le�j�
އ����(��]�&�����J�E2I�1:8-�j�4������#Y鷃Z�F�%�v���"K�J�ξ���<,s��+_�HWr������LH
ZI����e�)�6)q����b�5\��?J"���S��_�qK%�+�pN�O�O�V"Y�~C�_Vِ�      3   F  x�5Q�N�0<�~���I�*PՂD��pY��lձ�Z���Y�/�v�;+l��6��ʁ���_<��y���@RSSFs��[�^f�8�/W�O��r5+-i�=Ox�[H��5�v�E'�8h����ɇ�������@�����m�����aZ{Rvv��ȸ��Z���t���Oea�3� sCJ�ș��e�_dM�Ŏ��<�҅g�%�`3�`o���Lw�4���Ʋ8{�!�l���kR
{��6��7� �T�����ʊ�&�l��F�LO�w�&�7>P��[���g�K=u%G�k7�/F��^����3�Ɣ6}��/����      5   �  x�m�ώ�0����X��nMvW�Z���Tʥ����)��P��;6��&��g}�̟���'hX���o�ݥ%Uy&��ޱ#ytv��a�� W�m������Pt�` �̴�g\8[8�Rz?uP�R�A�|;�m���P>��@,�9ȕ3gg&�N�m-:y��8�4��~P�Z���[i�>��KȄ��e����M=PЪz]��(����E�����`Q��^OgB�:��?����h�:�zD����PrF�MGP`e�	7����{w�^�j;�ea5�z`O�@�;#��}e�ۃ���:�u:��"(P-��ݧ�����ʓ��#>L�1`�N8���G�&��"ܥa'
8�K��?�mG�`������G8����.�t3=�f#���y�1��9E}w9#��k{�?�����.������,p     