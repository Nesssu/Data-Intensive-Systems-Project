PGDMP  (                
    |         	   customers    17.0    17.0 6    *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            +           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            ,           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            -           1262    16553 	   customers    DATABASE     ~   CREATE DATABASE customers WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Finnish_Finland.1252';
    DROP DATABASE customers;
                     postgres    false            �            1259    16796    car    TABLE     �   CREATE TABLE public.car (
    carid integer NOT NULL,
    manufacturer text NOT NULL,
    model text NOT NULL,
    year integer,
    price integer,
    kilometers integer,
    userid integer NOT NULL
);
    DROP TABLE public.car;
       public         heap r       postgres    false            �            1259    16795    car_carid_seq    SEQUENCE     �   CREATE SEQUENCE public.car_carid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.car_carid_seq;
       public               postgres    false    222            .           0    0    car_carid_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.car_carid_seq OWNED BY public.car.carid;
          public               postgres    false    221            �            1259    16810    orderhistory    TABLE     �   CREATE TABLE public.orderhistory (
    orderhistoryid integer NOT NULL,
    carid integer NOT NULL,
    userid integer NOT NULL
);
     DROP TABLE public.orderhistory;
       public         heap r       postgres    false            �            1259    16809    orderhistory_orderhistoryid_seq    SEQUENCE     �   CREATE SEQUENCE public.orderhistory_orderhistoryid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.orderhistory_orderhistoryid_seq;
       public               postgres    false    224            /           0    0    orderhistory_orderhistoryid_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.orderhistory_orderhistoryid_seq OWNED BY public.orderhistory.orderhistoryid;
          public               postgres    false    223            �            1259    16827    tracking    TABLE     {   CREATE TABLE public.tracking (
    trackingid integer NOT NULL,
    userid integer NOT NULL,
    carid integer NOT NULL
);
    DROP TABLE public.tracking;
       public         heap r       postgres    false            �            1259    16826    tracking_trackingid_seq    SEQUENCE     �   CREATE SEQUENCE public.tracking_trackingid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tracking_trackingid_seq;
       public               postgres    false    226            0           0    0    tracking_trackingid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tracking_trackingid_seq OWNED BY public.tracking.trackingid;
          public               postgres    false    225            �            1259    16776 
   userreview    TABLE     �   CREATE TABLE public.userreview (
    userreviewid integer NOT NULL,
    review text,
    rating integer NOT NULL,
    userid integer,
    CONSTRAINT userreview_rating_check CHECK (((rating >= 1) AND (rating <= 5)))
);
    DROP TABLE public.userreview;
       public         heap r       postgres    false            �            1259    16775    userreview_userreviewid_seq    SEQUENCE     �   CREATE SEQUENCE public.userreview_userreviewid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.userreview_userreviewid_seq;
       public               postgres    false    220            1           0    0    userreview_userreviewid_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.userreview_userreviewid_seq OWNED BY public.userreview.userreviewid;
          public               postgres    false    219            �            1259    16767    users    TABLE     �   CREATE TABLE public.users (
    userid integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    userreviewid integer
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16766    users_userid_seq    SEQUENCE     �   CREATE SEQUENCE public.users_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.users_userid_seq;
       public               postgres    false    218            2           0    0    users_userid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.users_userid_seq OWNED BY public.users.userid;
          public               postgres    false    217            �            1259    16844    wishlist    TABLE     �   CREATE TABLE public.wishlist (
    wishlistid integer NOT NULL,
    model text,
    manufacturer text,
    year integer,
    userid integer NOT NULL
);
    DROP TABLE public.wishlist;
       public         heap r       postgres    false            �            1259    16843    wishlist_wishlistid_seq    SEQUENCE     �   CREATE SEQUENCE public.wishlist_wishlistid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.wishlist_wishlistid_seq;
       public               postgres    false    228            3           0    0    wishlist_wishlistid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.wishlist_wishlistid_seq OWNED BY public.wishlist.wishlistid;
          public               postgres    false    227            r           2604    16799 	   car carid    DEFAULT     f   ALTER TABLE ONLY public.car ALTER COLUMN carid SET DEFAULT nextval('public.car_carid_seq'::regclass);
 8   ALTER TABLE public.car ALTER COLUMN carid DROP DEFAULT;
       public               postgres    false    221    222    222            s           2604    16813    orderhistory orderhistoryid    DEFAULT     �   ALTER TABLE ONLY public.orderhistory ALTER COLUMN orderhistoryid SET DEFAULT nextval('public.orderhistory_orderhistoryid_seq'::regclass);
 J   ALTER TABLE public.orderhistory ALTER COLUMN orderhistoryid DROP DEFAULT;
       public               postgres    false    224    223    224            t           2604    16830    tracking trackingid    DEFAULT     z   ALTER TABLE ONLY public.tracking ALTER COLUMN trackingid SET DEFAULT nextval('public.tracking_trackingid_seq'::regclass);
 B   ALTER TABLE public.tracking ALTER COLUMN trackingid DROP DEFAULT;
       public               postgres    false    225    226    226            q           2604    16779    userreview userreviewid    DEFAULT     �   ALTER TABLE ONLY public.userreview ALTER COLUMN userreviewid SET DEFAULT nextval('public.userreview_userreviewid_seq'::regclass);
 F   ALTER TABLE public.userreview ALTER COLUMN userreviewid DROP DEFAULT;
       public               postgres    false    219    220    220            p           2604    16770    users userid    DEFAULT     l   ALTER TABLE ONLY public.users ALTER COLUMN userid SET DEFAULT nextval('public.users_userid_seq'::regclass);
 ;   ALTER TABLE public.users ALTER COLUMN userid DROP DEFAULT;
       public               postgres    false    218    217    218            u           2604    16847    wishlist wishlistid    DEFAULT     z   ALTER TABLE ONLY public.wishlist ALTER COLUMN wishlistid SET DEFAULT nextval('public.wishlist_wishlistid_seq'::regclass);
 B   ALTER TABLE public.wishlist ALTER COLUMN wishlistid DROP DEFAULT;
       public               postgres    false    228    227    228            !          0    16796    car 
   TABLE DATA           Z   COPY public.car (carid, manufacturer, model, year, price, kilometers, userid) FROM stdin;
    public               postgres    false    222   �=       #          0    16810    orderhistory 
   TABLE DATA           E   COPY public.orderhistory (orderhistoryid, carid, userid) FROM stdin;
    public               postgres    false    224   �>       %          0    16827    tracking 
   TABLE DATA           =   COPY public.tracking (trackingid, userid, carid) FROM stdin;
    public               postgres    false    226   �>                 0    16776 
   userreview 
   TABLE DATA           J   COPY public.userreview (userreviewid, review, rating, userid) FROM stdin;
    public               postgres    false    220   �>                 0    16767    users 
   TABLE DATA           B   COPY public.users (userid, name, email, userreviewid) FROM stdin;
    public               postgres    false    218   �?       '          0    16844    wishlist 
   TABLE DATA           Q   COPY public.wishlist (wishlistid, model, manufacturer, year, userid) FROM stdin;
    public               postgres    false    228   ;@       4           0    0    car_carid_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.car_carid_seq', 10, true);
          public               postgres    false    221            5           0    0    orderhistory_orderhistoryid_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.orderhistory_orderhistoryid_seq', 5, true);
          public               postgres    false    223            6           0    0    tracking_trackingid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tracking_trackingid_seq', 1, false);
          public               postgres    false    225            7           0    0    userreview_userreviewid_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.userreview_userreviewid_seq', 15, true);
          public               postgres    false    219            8           0    0    users_userid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_userid_seq', 10, true);
          public               postgres    false    217            9           0    0    wishlist_wishlistid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.wishlist_wishlistid_seq', 1, false);
          public               postgres    false    227            |           2606    16803    car car_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (carid);
 6   ALTER TABLE ONLY public.car DROP CONSTRAINT car_pkey;
       public                 postgres    false    222            ~           2606    16815    orderhistory orderhistory_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.orderhistory
    ADD CONSTRAINT orderhistory_pkey PRIMARY KEY (orderhistoryid);
 H   ALTER TABLE ONLY public.orderhistory DROP CONSTRAINT orderhistory_pkey;
       public                 postgres    false    224            �           2606    16832    tracking tracking_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tracking
    ADD CONSTRAINT tracking_pkey PRIMARY KEY (trackingid);
 @   ALTER TABLE ONLY public.tracking DROP CONSTRAINT tracking_pkey;
       public                 postgres    false    226            z           2606    16784    userreview userreview_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.userreview
    ADD CONSTRAINT userreview_pkey PRIMARY KEY (userreviewid);
 D   ALTER TABLE ONLY public.userreview DROP CONSTRAINT userreview_pkey;
       public                 postgres    false    220            x           2606    16774    users users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (userid);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    218            �           2606    16851    wishlist wishlist_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.wishlist
    ADD CONSTRAINT wishlist_pkey PRIMARY KEY (wishlistid);
 @   ALTER TABLE ONLY public.wishlist DROP CONSTRAINT wishlist_pkey;
       public                 postgres    false    228            �           2606    16821    orderhistory fk_car    FK CONSTRAINT     q   ALTER TABLE ONLY public.orderhistory
    ADD CONSTRAINT fk_car FOREIGN KEY (carid) REFERENCES public.car(carid);
 =   ALTER TABLE ONLY public.orderhistory DROP CONSTRAINT fk_car;
       public               postgres    false    4732    222    224            �           2606    16838    tracking fk_car    FK CONSTRAINT     m   ALTER TABLE ONLY public.tracking
    ADD CONSTRAINT fk_car FOREIGN KEY (carid) REFERENCES public.car(carid);
 9   ALTER TABLE ONLY public.tracking DROP CONSTRAINT fk_car;
       public               postgres    false    222    4732    226            �           2606    16785    userreview fk_user    FK CONSTRAINT     t   ALTER TABLE ONLY public.userreview
    ADD CONSTRAINT fk_user FOREIGN KEY (userid) REFERENCES public.users(userid);
 <   ALTER TABLE ONLY public.userreview DROP CONSTRAINT fk_user;
       public               postgres    false    220    4728    218            �           2606    16804    car fk_user    FK CONSTRAINT     m   ALTER TABLE ONLY public.car
    ADD CONSTRAINT fk_user FOREIGN KEY (userid) REFERENCES public.users(userid);
 5   ALTER TABLE ONLY public.car DROP CONSTRAINT fk_user;
       public               postgres    false    4728    222    218            �           2606    16816    orderhistory fk_user    FK CONSTRAINT     v   ALTER TABLE ONLY public.orderhistory
    ADD CONSTRAINT fk_user FOREIGN KEY (userid) REFERENCES public.users(userid);
 >   ALTER TABLE ONLY public.orderhistory DROP CONSTRAINT fk_user;
       public               postgres    false    224    218    4728            �           2606    16833    tracking fk_user    FK CONSTRAINT     r   ALTER TABLE ONLY public.tracking
    ADD CONSTRAINT fk_user FOREIGN KEY (userid) REFERENCES public.users(userid);
 :   ALTER TABLE ONLY public.tracking DROP CONSTRAINT fk_user;
       public               postgres    false    4728    226    218            �           2606    16852    wishlist fk_user    FK CONSTRAINT     r   ALTER TABLE ONLY public.wishlist
    ADD CONSTRAINT fk_user FOREIGN KEY (userid) REFERENCES public.users(userid);
 :   ALTER TABLE ONLY public.wishlist DROP CONSTRAINT fk_user;
       public               postgres    false    228    4728    218            �           2606    16790    users fk_userreview    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_userreview FOREIGN KEY (userreviewid) REFERENCES public.userreview(userreviewid);
 =   ALTER TABLE ONLY public.users DROP CONSTRAINT fk_userreview;
       public               postgres    false    218    220    4730            !   �   x�-�;�0D��Sp���@RPQ����EX����'kӼf��0��gD'��a/�����A�}��[z`#�:I�L��Zr*��n�7�e��y��G��.}�X�����ץG�u��J��:ω��t%      #   %   x�3�4�4�2�B.cN �2�B.SN ����� K�2      %   %   x�3�4�4�2�B.cN �2�B.SN ����� K�2         �   x�MͻAE�خ� �� $���H��+�^�~�Ƙ���O�:�K�<H97X`��N^��O!1M1��9��֘j��#Np���ϛ�h�{��2L0����2���(�+׌����b�T"����W�ֽoD�x�>D         �   x�]�91@��9EN`����YDE5���gA!p"n���Q��|�����"ɞ9�.BP⫱�b��y2[�d��[X[��@U�t''BvbjzWbl\�{�I��[JmE���K��S�V�H�m��4�������h��yM�      '   o   x�%�M
�0��7��31'ȦW҅��	��������s��4UA��^��1؜�rCʛ���˧<p�:��G�7��N��S@*�[*F�u�ʒ��M-�p�^     