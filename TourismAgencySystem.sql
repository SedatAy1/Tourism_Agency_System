PGDMP  9    &                |            tourismagency    16.1    16.1 .    ;           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            <           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            =           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            >           1262    16763    tourismagency    DATABASE     o   CREATE DATABASE tourismagency WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE tourismagency;
                postgres    false            �            1259    16813    hotel    TABLE     �  CREATE TABLE public.hotel (
    id integer NOT NULL,
    hotel_name character varying(255) NOT NULL,
    city character varying(100),
    region character varying(100),
    address character varying(255),
    email character varying(255),
    phone_number character varying(20),
    stars integer,
    free_park boolean,
    free_wifi boolean,
    swimming_pool boolean,
    fitness_center boolean,
    spa boolean,
    hotel_concierge boolean,
    house_keeping boolean
);
    DROP TABLE public.hotel;
       public         heap    postgres    false            �            1259    16812    hotel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.hotel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.hotel_id_seq;
       public          postgres    false    226            ?           0    0    hotel_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.hotel_id_seq OWNED BY public.hotel.id;
          public          postgres    false    225            �            1259    16806    pensiontype    TABLE     ~   CREATE TABLE public.pensiontype (
    id integer NOT NULL,
    hotel_id integer,
    pension_option character varying(255)
);
    DROP TABLE public.pensiontype;
       public         heap    postgres    false            �            1259    16805    pensiontype_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pensiontype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.pensiontype_id_seq;
       public          postgres    false    224            @           0    0    pensiontype_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.pensiontype_id_seq OWNED BY public.pensiontype.id;
          public          postgres    false    223            �            1259    16797    reservation    TABLE     �  CREATE TABLE public.reservation (
    id integer NOT NULL,
    room_id integer,
    guest_name character varying(255),
    guest_id_number character varying(20),
    check_in_date date,
    check_out_date date,
    total_price numeric(10,2),
    guest_mail character varying(255),
    guest_phone_number character varying(30),
    total_guest integer,
    adult_count integer,
    child_count integer
);
    DROP TABLE public.reservation;
       public         heap    postgres    false            �            1259    16796    reservation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reservation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.reservation_id_seq;
       public          postgres    false    222            A           0    0    reservation_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.reservation_id_seq OWNED BY public.reservation.id;
          public          postgres    false    221            �            1259    16790    room    TABLE     �  CREATE TABLE public.room (
    id integer NOT NULL,
    hotel_id integer,
    season_id integer,
    pension_type_id integer,
    adult_price numeric(10,2),
    child_price numeric(10,2),
    room_option character varying(150),
    stock integer,
    bed_count integer,
    meter integer,
    tv boolean,
    minibar boolean,
    game_console boolean,
    projection boolean,
    safe_box boolean
);
    DROP TABLE public.room;
       public         heap    postgres    false            �            1259    16789    room_id_seq    SEQUENCE     �   CREATE SEQUENCE public.room_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.room_id_seq;
       public          postgres    false    220            B           0    0    room_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.room_id_seq OWNED BY public.room.id;
          public          postgres    false    219            �            1259    16765    season    TABLE     v   CREATE TABLE public.season (
    id integer NOT NULL,
    hotel_id integer,
    start_date date,
    end_date date
);
    DROP TABLE public.season;
       public         heap    postgres    false            �            1259    16764    season_id_seq    SEQUENCE     �   CREATE SEQUENCE public.season_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.season_id_seq;
       public          postgres    false    216            C           0    0    season_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.season_id_seq OWNED BY public.season.id;
          public          postgres    false    215            �            1259    16781    user    TABLE       CREATE TABLE public."user" (
    id integer NOT NULL,
    user_name character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    role character varying(50) NOT NULL,
    name character varying(100) NOT NULL,
    surname character varying(100) NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    16780    user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.user_id_seq;
       public          postgres    false    218            D           0    0    user_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;
          public          postgres    false    217            �           2604    16816    hotel id    DEFAULT     d   ALTER TABLE ONLY public.hotel ALTER COLUMN id SET DEFAULT nextval('public.hotel_id_seq'::regclass);
 7   ALTER TABLE public.hotel ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    16809    pensiontype id    DEFAULT     p   ALTER TABLE ONLY public.pensiontype ALTER COLUMN id SET DEFAULT nextval('public.pensiontype_id_seq'::regclass);
 =   ALTER TABLE public.pensiontype ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    16800    reservation id    DEFAULT     p   ALTER TABLE ONLY public.reservation ALTER COLUMN id SET DEFAULT nextval('public.reservation_id_seq'::regclass);
 =   ALTER TABLE public.reservation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    16793    room id    DEFAULT     b   ALTER TABLE ONLY public.room ALTER COLUMN id SET DEFAULT nextval('public.room_id_seq'::regclass);
 6   ALTER TABLE public.room ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    16768 	   season id    DEFAULT     f   ALTER TABLE ONLY public.season ALTER COLUMN id SET DEFAULT nextval('public.season_id_seq'::regclass);
 8   ALTER TABLE public.season ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    16784    user id    DEFAULT     d   ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);
 8   ALTER TABLE public."user" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            8          0    16813    hotel 
   TABLE DATA           �   COPY public.hotel (id, hotel_name, city, region, address, email, phone_number, stars, free_park, free_wifi, swimming_pool, fitness_center, spa, hotel_concierge, house_keeping) FROM stdin;
    public          postgres    false    226   4       6          0    16806    pensiontype 
   TABLE DATA           C   COPY public.pensiontype (id, hotel_id, pension_option) FROM stdin;
    public          postgres    false    224   A6       4          0    16797    reservation 
   TABLE DATA           �   COPY public.reservation (id, room_id, guest_name, guest_id_number, check_in_date, check_out_date, total_price, guest_mail, guest_phone_number, total_guest, adult_count, child_count) FROM stdin;
    public          postgres    false    222   7       2          0    16790    room 
   TABLE DATA           �   COPY public.room (id, hotel_id, season_id, pension_type_id, adult_price, child_price, room_option, stock, bed_count, meter, tv, minibar, game_console, projection, safe_box) FROM stdin;
    public          postgres    false    220   8       .          0    16765    season 
   TABLE DATA           D   COPY public.season (id, hotel_id, start_date, end_date) FROM stdin;
    public          postgres    false    216   �8       0          0    16781    user 
   TABLE DATA           N   COPY public."user" (id, user_name, password, role, name, surname) FROM stdin;
    public          postgres    false    218   m9       E           0    0    hotel_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.hotel_id_seq', 17, true);
          public          postgres    false    225            F           0    0    pensiontype_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.pensiontype_id_seq', 24, true);
          public          postgres    false    223            G           0    0    reservation_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.reservation_id_seq', 35, true);
          public          postgres    false    221            H           0    0    room_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.room_id_seq', 20, true);
          public          postgres    false    219            I           0    0    season_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.season_id_seq', 30, true);
          public          postgres    false    215            J           0    0    user_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.user_id_seq', 9, true);
          public          postgres    false    217            �           2606    16820    hotel hotel_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT hotel_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.hotel DROP CONSTRAINT hotel_pkey;
       public            postgres    false    226            �           2606    16811    pensiontype pensiontype_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pensiontype
    ADD CONSTRAINT pensiontype_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.pensiontype DROP CONSTRAINT pensiontype_pkey;
       public            postgres    false    224            �           2606    16804    reservation reservation_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT reservation_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.reservation DROP CONSTRAINT reservation_pkey;
       public            postgres    false    222            �           2606    16795    room room_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.room DROP CONSTRAINT room_pkey;
       public            postgres    false    220            �           2606    16770    season season_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.season
    ADD CONSTRAINT season_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.season DROP CONSTRAINT season_pkey;
       public            postgres    false    216            �           2606    16788    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    218            8   &  x�eSKn�0]�N�X�?�)n�0vS�@7㐲	Q�A������
�ƫ�ޫEŎA�`4��ͼ�-,aNe���^+�
Lhq�XRٍ���`#�֋��?vC�Cx�xm��)Y�T��!O�J̘����q��c��^f�e�-v���[��>5t�u�9�[��.�P�w��9�V/���C�� �ڂV��s����D
J��U�w�˃@x`ن��?��KY���3Җ���&10]T��@��m*�۽^F2$�BS,��H����֨8�5���4�u��u�$��$���E&21g�@��4�d��� �B��aZa��<F�)�����`m�kA;u׵��;��'�b�c��6�Ɔ��p�(;�:�����)����0U!x5����=�l�*"�Z�B��aD����1�� u	AE�?6�|�9�1��W;42K��)÷�����Z�j#o?n�,0Fz�`�>�+��=|n}��U�Ǳ</y�6p�؆�vda��1��)������+3\�MJ����(|��?Z���l�I�      6   �   x�u�K
�0��aJ%���Mܤ$n!P��oQe�g;��=	��U6���>DC`3b������[ؗ�T�mY&��)�ZA6Ө���rֵ�y�1�%�W� �w�2�n��@�<�C��
�@�&#t����m���^U�N�2I��d���ƣ��x2�ڭ8Jz��bd�\��
���{3�� ��xk      4   �   x�u��j�0E�W�b#iF�RH��t#Z�1�5�٤_�W�	!Z����(�8���CN10yx빳�s���-����q�1��ܿ�l 1�	�p�z����*? �Ѐ�:����<7��L�'/Q88C�E<��z�J���F�ݎvq%M������x��*X�L��j���5�D�c"�66��ԥ��l��h��`�
��}a� amL�B3$}(���b��]���jy�5�H��8W+{X��c~+�r�      2   �   x�m��
�0��f$m3��8d"8w��	���v�S�
M�|I$@r8e��!�=����A�b��$���p\��^�o�i��]�grɬ�dPc8��
9���d-\*�����&f�}�M�Z��;�1<$�F�彮��B��{+����3��ڤEm�p������ϳ%�Q��C      .   �   x�u�I!D�uq��<0�%�?G�QRD K,��X�0�|�~��Z.פJ�$�I��IG0�#*�#X�#j�#�Q"�=h�����ZDN:���ʗK�B*�ƤJ{�aDkt��2i@o}���3�em��c�WJ�a?`�      0   w   x�3�LL����4426�tt����t-.J�<:/5�˂�5'3"������
�<�1'7��˒�5�(]H�;�2�ˌ3*�2/� �x����Ԝ�l.�D �ku���tI��,����� �=,t     