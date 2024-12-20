PGDMP  1                    |         	   Customers    17.2    17.0 6    *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            +           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            ,           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            -           1262    16566 	   Customers    DATABASE     �   CREATE DATABASE "Customers" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Kingdom.utf8';
    DROP DATABASE "Customers";
                     postgres    false            �            1259    16567    car    TABLE     �   CREATE TABLE public.car (
    carid integer NOT NULL,
    manufacturer text NOT NULL,
    model text NOT NULL,
    year integer,
    price integer,
    kilometers integer,
    userid integer NOT NULL
);
    DROP TABLE public.car;
       public         heap r       postgres    false            �            1259    16572    car_carid_seq    SEQUENCE     �   CREATE SEQUENCE public.car_carid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.car_carid_seq;
       public               postgres    false    217            .           0    0    car_carid_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.car_carid_seq OWNED BY public.car.carid;
          public               postgres    false    218            �            1259    16573    orderhistory    TABLE     �   CREATE TABLE public.orderhistory (
    orderhistoryid integer NOT NULL,
    carid integer NOT NULL,
    userid integer NOT NULL
);
     DROP TABLE public.orderhistory;
       public         heap r       postgres    false            �            1259    16576    orderhistory_orderhistoryid_seq    SEQUENCE     �   CREATE SEQUENCE public.orderhistory_orderhistoryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.orderhistory_orderhistoryid_seq;
       public               postgres    false    219            /           0    0    orderhistory_orderhistoryid_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.orderhistory_orderhistoryid_seq OWNED BY public.orderhistory.orderhistoryid;
          public               postgres    false    220            �            1259    16577    tracking    TABLE     {   CREATE TABLE public.tracking (
    trackingid integer NOT NULL,
    userid integer NOT NULL,
    carid integer NOT NULL
);
    DROP TABLE public.tracking;
       public         heap r       postgres    false            �            1259    16580    tracking_trackingid_seq    SEQUENCE     �   CREATE SEQUENCE public.tracking_trackingid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tracking_trackingid_seq;
       public               postgres    false    221            0           0    0    tracking_trackingid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tracking_trackingid_seq OWNED BY public.tracking.trackingid;
          public               postgres    false    222            �            1259    16581 
   userreview    TABLE     �   CREATE TABLE public.userreview (
    userreviewid integer NOT NULL,
    review text,
    rating integer NOT NULL,
    userid integer,
    CONSTRAINT userreview_rating_check CHECK (((rating >= 1) AND (rating <= 5)))
);
    DROP TABLE public.userreview;
       public         heap r       postgres    false            �            1259    16587    userreview_userreviewid_seq    SEQUENCE     �   CREATE SEQUENCE public.userreview_userreviewid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.userreview_userreviewid_seq;
       public               postgres    false    223            1           0    0    userreview_userreviewid_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.userreview_userreviewid_seq OWNED BY public.userreview.userreviewid;
          public               postgres    false    224            �            1259    16588    users    TABLE     �   CREATE TABLE public.users (
    userid integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    userreviewid integer
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16593    users_userid_seq    SEQUENCE     �   CREATE SEQUENCE public.users_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.users_userid_seq;
       public               postgres    false    225            2           0    0    users_userid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.users_userid_seq OWNED BY public.users.userid;
          public               postgres    false    226            �            1259    16594    wishlist    TABLE     �   CREATE TABLE public.wishlist (
    wishlistid integer NOT NULL,
    model text,
    manufacturer text,
    year integer,
    userid integer NOT NULL
);
    DROP TABLE public.wishlist;
       public         heap r       postgres    false            �            1259    16599    wishlist_wishlistid_seq    SEQUENCE     �   CREATE SEQUENCE public.wishlist_wishlistid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.wishlist_wishlistid_seq;
       public               postgres    false    227            3           0    0    wishlist_wishlistid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.wishlist_wishlistid_seq OWNED BY public.wishlist.wishlistid;
          public               postgres    false    228            p           2604    16600 	   car carid    DEFAULT     f   ALTER TABLE ONLY public.car ALTER COLUMN carid SET DEFAULT nextval('public.car_carid_seq'::regclass);
 8   ALTER TABLE public.car ALTER COLUMN carid DROP DEFAULT;
       public               postgres    false    218    217            q           2604    16601    orderhistory orderhistoryid    DEFAULT     �   ALTER TABLE ONLY public.orderhistory ALTER COLUMN orderhistoryid SET DEFAULT nextval('public.orderhistory_orderhistoryid_seq'::regclass);
 J   ALTER TABLE public.orderhistory ALTER COLUMN orderhistoryid DROP DEFAULT;
       public               postgres    false    220    219            r           2604    16602    tracking trackingid    DEFAULT     z   ALTER TABLE ONLY public.tracking ALTER COLUMN trackingid SET DEFAULT nextval('public.tracking_trackingid_seq'::regclass);
 B   ALTER TABLE public.tracking ALTER COLUMN trackingid DROP DEFAULT;
       public               postgres    false    222    221            s           2604    16603    userreview userreviewid    DEFAULT     �   ALTER TABLE ONLY public.userreview ALTER COLUMN userreviewid SET DEFAULT nextval('public.userreview_userreviewid_seq'::regclass);
 F   ALTER TABLE public.userreview ALTER COLUMN userreviewid DROP DEFAULT;
       public               postgres    false    224    223            t           2604    16604    users userid    DEFAULT     l   ALTER TABLE ONLY public.users ALTER COLUMN userid SET DEFAULT nextval('public.users_userid_seq'::regclass);
 ;   ALTER TABLE public.users ALTER COLUMN userid DROP DEFAULT;
       public               postgres    false    226    225            u           2604    16605    wishlist wishlistid    DEFAULT     z   ALTER TABLE ONLY public.wishlist ALTER COLUMN wishlistid SET DEFAULT nextval('public.wishlist_wishlistid_seq'::regclass);
 B   ALTER TABLE public.wishlist ALTER COLUMN wishlistid DROP DEFAULT;
       public               postgres    false    228    227                      0    16567    car 
   TABLE DATA           Z   COPY public.car (carid, manufacturer, model, year, price, kilometers, userid) FROM stdin;
    public               postgres    false    217   �=                 0    16573    orderhistory 
   TABLE DATA           E   COPY public.orderhistory (orderhistoryid, carid, userid) FROM stdin;
    public               postgres    false    219   �A                  0    16577    tracking 
   TABLE DATA           =   COPY public.tracking (trackingid, userid, carid) FROM stdin;
    public               postgres    false    221   +B       "          0    16581 
   userreview 
   TABLE DATA           J   COPY public.userreview (userreviewid, review, rating, userid) FROM stdin;
    public               postgres    false    223   �B       $          0    16588    users 
   TABLE DATA           B   COPY public.users (userid, name, email, userreviewid) FROM stdin;
    public               postgres    false    225   �D       &          0    16594    wishlist 
   TABLE DATA           Q   COPY public.wishlist (wishlistid, model, manufacturer, year, userid) FROM stdin;
    public               postgres    false    227   �F       4           0    0    car_carid_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.car_carid_seq', 11, true);
          public               postgres    false    218            5           0    0    orderhistory_orderhistoryid_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.orderhistory_orderhistoryid_seq', 5, true);
          public               postgres    false    220            6           0    0    tracking_trackingid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tracking_trackingid_seq', 1, false);
          public               postgres    false    222            7           0    0    userreview_userreviewid_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.userreview_userreviewid_seq', 15, true);
          public               postgres    false    224            8           0    0    users_userid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_userid_seq', 10, true);
          public               postgres    false    226            9           0    0    wishlist_wishlistid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.wishlist_wishlistid_seq', 3, true);
          public               postgres    false    228            x           2606    16607    car car_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (carid);
 6   ALTER TABLE ONLY public.car DROP CONSTRAINT car_pkey;
       public                 postgres    false    217            z           2606    16609    orderhistory orderhistory_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.orderhistory
    ADD CONSTRAINT orderhistory_pkey PRIMARY KEY (orderhistoryid);
 H   ALTER TABLE ONLY public.orderhistory DROP CONSTRAINT orderhistory_pkey;
       public                 postgres    false    219            |           2606    16611    tracking tracking_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tracking
    ADD CONSTRAINT tracking_pkey PRIMARY KEY (trackingid);
 @   ALTER TABLE ONLY public.tracking DROP CONSTRAINT tracking_pkey;
       public                 postgres    false    221            ~           2606    16613    userreview userreview_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.userreview
    ADD CONSTRAINT userreview_pkey PRIMARY KEY (userreviewid);
 D   ALTER TABLE ONLY public.userreview DROP CONSTRAINT userreview_pkey;
       public                 postgres    false    223            �           2606    16615    users users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    225            �           2606    16617    wishlist wishlist_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.wishlist
    ADD CONSTRAINT wishlist_pkey PRIMARY KEY (wishlistid);
 @   ALTER TABLE ONLY public.wishlist DROP CONSTRAINT wishlist_pkey;
       public                 postgres    false    227            �           2606    16618    orderhistory fk_car    FK CONSTRAINT     q   ALTER TABLE ONLY public.orderhistory
    ADD CONSTRAINT fk_car FOREIGN KEY (carid) REFERENCES public.car(carid);
 =   ALTER TABLE ONLY public.orderhistory DROP CONSTRAINT fk_car;
       public               postgres    false    4728    219    217            �           2606    16623    tracking fk_car    FK CONSTRAINT     m   ALTER TABLE ONLY public.tracking
    ADD CONSTRAINT fk_car FOREIGN KEY (carid) REFERENCES public.car(carid);
 9   ALTER TABLE ONLY public.tracking DROP CONSTRAINT fk_car;
       public               postgres    false    217    221    4728            �           2606    16628    userreview fk_user    FK CONSTRAINT     t   ALTER TABLE ONLY public.userreview
    ADD CONSTRAINT fk_user FOREIGN KEY (userid) REFERENCES public.users(userid);
 <   ALTER TABLE ONLY public.userreview DROP CONSTRAINT fk_user;
       public               postgres    false    4736    223    225            �           2606    16633    car fk_user    FK CONSTRAINT     m   ALTER TABLE ONLY public.car
    ADD CONSTRAINT fk_user FOREIGN KEY (userid) REFERENCES public.users(userid);
 5   ALTER TABLE ONLY public.car DROP CONSTRAINT fk_user;
       public               postgres    false    225    217    4736            �           2606    16638    orderhistory fk_user    FK CONSTRAINT     v   ALTER TABLE ONLY public.orderhistory
    ADD CONSTRAINT fk_user FOREIGN KEY (userid) REFERENCES public.users(userid);
 >   ALTER TABLE ONLY public.orderhistory DROP CONSTRAINT fk_user;
       public               postgres    false    219    225    4736            �           2606    16643    tracking fk_user    FK CONSTRAINT     r   ALTER TABLE ONLY public.tracking
    ADD CONSTRAINT fk_user FOREIGN KEY (userid) REFERENCES public.users(userid);
 :   ALTER TABLE ONLY public.tracking DROP CONSTRAINT fk_user;
       public               postgres    false    225    4736    221            �           2606    16648    wishlist fk_user    FK CONSTRAINT     r   ALTER TABLE ONLY public.wishlist
    ADD CONSTRAINT fk_user FOREIGN KEY (userid) REFERENCES public.users(userid);
 :   ALTER TABLE ONLY public.wishlist DROP CONSTRAINT fk_user;
       public               postgres    false    227    225    4736            �           2606    16653    users fk_userreview    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_userreview FOREIGN KEY (userreviewid) REFERENCES public.userreview(userreviewid);
 =   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_userreview;
       public               postgres    false    4734    225    223               �  x�m�Kr�F��=���¼@bI�z�-�T�\d3F� �2 hKW�1r���(��Uh���P�~�F�hU78�`��
�,�(apg_�`i�m�S g>�>��t7X�@�$!�_M߫�`�RY
2�!�HX���l�%��U��C
I����L�$3����a���2Z����]�:�sR},��
SZ�:�WS�*�VJO�AEb'�J	e���v�U��{�����E��Vf��{��Ď�ޯ�rB&|l~��!vM�0=1�P	7����z{�eǏ}�0�����G��f��f�}I�~�Lg��^hbf��RO�%�J�� 3�����k�)5q��`⴮�ݍ:�*CFy�������v��+�>$��<	b�V߁�m�3���b+�a�ZkW�F��t�
��e��>i��pfcc`!��i�H2��������s�?L(�ֺSc;��56��oI���q����<�̏5f���Ҩ��+���0�`�hQ��zP�梚0��h�p�m��>#�)|����*�y���0g�E�F�`{�MLf~��3x��9c���n공=`�Zu;��.���t���s���0�I[�2ck�-��f^����oK>�!��gp��[X��Խ�'0s�Z;���z�O+c�#�i^�,O����~�k��Zu��DF;�-
t�^;�wt�7��I�$X�; .(\��X�������{}@[ԃ�8����2��g��4+�����}4jw�Gw]�F�g��M|	_�~���iCo}'n-Px���.�Z�����.%�I����U��S����9�Ź��B|�B�$�-���GW�%���0�]RlŽ�~"sxX�	�md4��]ݪ��z���t�m;��ǷS�uo�&��S����-eZ����m?�\�Q����-���f�	�r����[=��H����^9�������
����m�˻�'�)G�θ�Vv���F�XT�         K   x����@��7��^ݹ8�8<n��\�ϼ�y(sS��I��2;eeB���e�a�f�b�d�`rgr197��Q��{          K   x����@��7��^ݹ8�8<n��!.&w&&O&/&o&&_&�Qf�?�(�S��I��27eʼ�k��~�o�{      "   i  x�mSMn�0^ۧ��C(��R3Ҭf5�'�R�C�9��Mz�y��V��I�[���9��P�@j���s�lr@s���&!&_1_g���R���Q�j�[��f���ơ��Ts� ����Q��Xf�D2��U+��|+��&&$�����I��B���v��!/,Ȣ�ה�ܜ��	"&��J=�lX3�ޫ�
2��땄��y�0�PkZ-Z�IX&��	]V�/�1ب���^�"T��K��ꪡ�-�Ȋ��&3F�ꠏ���ٻXˍ����8g��%��{23\j!��>��搏�n�)?��ӹNoPz0�u�I�m�#�����5T���)�S�Βؗ�Z�� i�,�q�P<�%�F'�\�#��2�x�5am��$.Z*�y��k���৶���z�<E��V��[mGI�gq��7��C�D�-ۡ���Q�ݧ�L_�a�����W����İ���}��Ĝ�2���-`%�Xo�#��+�u�$]������9,¹��f�Pe$���96��hTv��A�F��S�+;����=��i����!�VM���Z<m���aw0����[�? W�{sM�{̣es��f�f����|?zH�}Z�"Yb6��Zk��H��      $   �  x�m�KN�0�דS�V[�k�J-���r��W��@�I.ƌ㾒��Yߌ��'Sx��������o§��ʝ��M6����׮5�]�(F�Po�M�b���j�(}�w+�k���5��&|
MmC0ɾ�,�X�2,I4p���Ǔ\1�l����J~��}��x���x��� ����N�ȏ���Z������ud�%VxE�N`�MI#A������9��R�KE�ŋ��2?�b��}L��!š~[�x	�;�܇���q�h���q�U��dۄ�-��|�3�4�MQĂ�Y��*8R�Xv��Z۵)X:�9:�C�=P^����APX�v,�H}��*��>uE��5�	�t�ߍU?U�(�C�KfY��^HL      &     x�uQKN�0\�;(�s��!*� �F���I�bab)N���Wb�n��yfTv��H4v����� �@m;en�h�3'�!(F�g�bg��ƈ)A��IQ����P�F'��Ś/�#��_�)e���z��j�(���T��T�/�F�a���.QP���k+QG�-���qod?a GČ'�o�5������d5��Sզ2ҹ`��ESL��S�gY�	q�G-����G�)qve
gĹ��5�Y����s霸�J��w�+b��{%���ED�D�9s�f     