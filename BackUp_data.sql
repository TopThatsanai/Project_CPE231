toc.dat                                                                                             0000600 0004000 0002000 00000124273 14342407075 0014456 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       9    '                z            Project    14.5    14.5 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         ?           1262    16720    Project    DATABASE     d   CREATE DATABASE "Project" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Thai_Thailand.874';
    DROP DATABASE "Project";
                postgres    false         ?            1259    16829 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false         ?            1259    16828    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    224         ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    223         ?            1259    16838    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false         ?            1259    16837    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    226         ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    225         ?            1259    16822    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false         ?            1259    16821    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    222         ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    221         ?            1259    16845 	   auth_user    TABLE     ?  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false         ?            1259    16854    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false         ?            1259    16853    auth_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    230         ?           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    229         ?            1259    16844    auth_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    228         ?           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    227         ?            1259    16861    auth_user_user_permissions    TABLE     ?   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false         ?            1259    16860 !   auth_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    232         ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    231         ?            1259    16721    customer    TABLE     ?   CREATE TABLE public.customer (
    customer_code character(10) NOT NULL,
    fname character(20),
    lname character(20),
    email character(40),
    customer_address character varying(100)
);
    DROP TABLE public.customer;
       public         heap    postgres    false         ?            1259    16726    delivery    TABLE     s   CREATE TABLE public.delivery (
    delivery_type character(50) NOT NULL,
    description character varying(100)
);
    DROP TABLE public.delivery;
       public         heap    postgres    false         ?            1259    16731    discount    TABLE     f   CREATE TABLE public.discount (
    product_code character(10) NOT NULL,
    quantity numeric(10,2)
);
    DROP TABLE public.discount;
       public         heap    postgres    false         ?            1259    16920    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false         ?            1259    16919    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    234         ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    233         ?            1259    16813    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false         ?            1259    16812    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    220         ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    219         ?            1259    16804    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false         ?            1259    16803    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    218         ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    217         ?            1259    16949    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false         ?            1259    16736    invoice    TABLE       CREATE TABLE public.invoice (
    invoice_no character(10) NOT NULL,
    amount_due numeric(10,2),
    total numeric(10,2),
    customer_code character(10),
    payment_method character(20),
    delivery_type character(50),
    vat numeric(18,2),
    date date
);
    DROP TABLE public.invoice;
       public         heap    postgres    false         ?            1259    16964    invoice_line_item    TABLE     ?   CREATE TABLE public.invoice_line_item (
    invoice_no character(10) NOT NULL,
    item_no integer NOT NULL,
    product_code character(10),
    quantity numeric(18,2),
    price numeric(18,2),
    total numeric(18,2),
    id character(10)
);
 %   DROP TABLE public.invoice_line_item;
       public         heap    postgres    false         ?            1259    16741    payment    TABLE     r   CREATE TABLE public.payment (
    payment_method character(20) NOT NULL,
    description character varying(50)
);
    DROP TABLE public.payment;
       public         heap    postgres    false         ?            1259    16746    product    TABLE     ?   CREATE TABLE public.product (
    product_code character(10) NOT NULL,
    product_name character(100) NOT NULL,
    product_type character(20),
    product_brand character(20),
    price numeric(18,2)
);
    DROP TABLE public.product;
       public         heap    postgres    false         ?            1259    16751    product_warehouse    TABLE     ?   CREATE TABLE public.product_warehouse (
    code character(10) NOT NULL,
    product_name character(100) NOT NULL,
    quantity numeric(18,2),
    unit character(10)
);
 %   DROP TABLE public.product_warehouse;
       public         heap    postgres    false         ?            1259    16756 	   promotion    TABLE     ?   CREATE TABLE public.promotion (
    product_code character(10) NOT NULL,
    product_name character(20),
    description character varying(100)
);
    DROP TABLE public.promotion;
       public         heap    postgres    false         ?           2604    16832    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224         ?           2604    16841    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226         ?           2604    16825    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222         ?           2604    16848    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228         ?           2604    16857    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230         ?           2604    16864    auth_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232         ?           2604    16923    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234         ?           2604    16816    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    220    220         ?           2604    16807    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218         ?          0    16829 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    224       3487.dat ?          0    16838    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    226       3489.dat ?          0    16822    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    222       3485.dat ?          0    16845 	   auth_user 
   TABLE DATA           ?   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    228       3491.dat ?          0    16854    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    230       3493.dat ?          0    16861    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    232       3495.dat ?          0    16721    customer 
   TABLE DATA           X   COPY public.customer (customer_code, fname, lname, email, customer_address) FROM stdin;
    public          postgres    false    209       3472.dat ?          0    16726    delivery 
   TABLE DATA           >   COPY public.delivery (delivery_type, description) FROM stdin;
    public          postgres    false    210       3473.dat ?          0    16731    discount 
   TABLE DATA           :   COPY public.discount (product_code, quantity) FROM stdin;
    public          postgres    false    211       3474.dat ?          0    16920    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    234       3497.dat ?          0    16813    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    220       3483.dat ?          0    16804    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    218       3481.dat ?          0    16949    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    235       3498.dat ?          0    16736    invoice 
   TABLE DATA           y   COPY public.invoice (invoice_no, amount_due, total, customer_code, payment_method, delivery_type, vat, date) FROM stdin;
    public          postgres    false    212       3475.dat ?          0    16964    invoice_line_item 
   TABLE DATA           j   COPY public.invoice_line_item (invoice_no, item_no, product_code, quantity, price, total, id) FROM stdin;
    public          postgres    false    236       3499.dat ?          0    16741    payment 
   TABLE DATA           >   COPY public.payment (payment_method, description) FROM stdin;
    public          postgres    false    213       3476.dat ?          0    16746    product 
   TABLE DATA           a   COPY public.product (product_code, product_name, product_type, product_brand, price) FROM stdin;
    public          postgres    false    214       3477.dat ?          0    16751    product_warehouse 
   TABLE DATA           O   COPY public.product_warehouse (code, product_name, quantity, unit) FROM stdin;
    public          postgres    false    215       3478.dat ?          0    16756 	   promotion 
   TABLE DATA           L   COPY public.promotion (product_code, product_name, description) FROM stdin;
    public          postgres    false    216       3479.dat ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    223         ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    225         ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 24, true);
          public          postgres    false    221         ?           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    229         ?           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
          public          postgres    false    227         ?           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    231         ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    233         ?           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 6, true);
          public          postgres    false    219         ?           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);
          public          postgres    false    217         ?           2606    16947    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    224         ?           2606    16877 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    226    226         ?           2606    16843 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    226         ?           2606    16834    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    224         ?           2606    16868 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    222    222         ?           2606    16827 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    222         ?           2606    16859 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    230         ?           2606    16892 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    230    230         ?           2606    16850    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    228         ?           2606    16866 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    232         ?           2606    16906 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    232    232         ?           2606    16942     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    228         ?           2606    16725    customer customer_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_code);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public            postgres    false    209         ?           2606    16730    delivery delivery_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.delivery
    ADD CONSTRAINT delivery_pkey PRIMARY KEY (delivery_type);
 @   ALTER TABLE ONLY public.delivery DROP CONSTRAINT delivery_pkey;
       public            postgres    false    210         ?           2606    16735    discount discount_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.discount
    ADD CONSTRAINT discount_pkey PRIMARY KEY (product_code);
 @   ALTER TABLE ONLY public.discount DROP CONSTRAINT discount_pkey;
       public            postgres    false    211         ?           2606    16928 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    234         ?           2606    16820 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    220    220         ?           2606    16818 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    220         ?           2606    16811 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    218         ?           2606    16955 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    235         ?           2606    16968 (   invoice_line_item invoice_line_item_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY public.invoice_line_item
    ADD CONSTRAINT invoice_line_item_pkey PRIMARY KEY (invoice_no, item_no);
 R   ALTER TABLE ONLY public.invoice_line_item DROP CONSTRAINT invoice_line_item_pkey;
       public            postgres    false    236    236         ?           2606    16740    invoice order_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT order_pkey PRIMARY KEY (invoice_no);
 <   ALTER TABLE ONLY public.invoice DROP CONSTRAINT order_pkey;
       public            postgres    false    212         ?           2606    16745    payment payment_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (payment_method);
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
       public            postgres    false    213         ?           2606    16762    product product_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_code, product_name);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    214    214         ?           2606    16793 (   product_warehouse product_warehouse_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.product_warehouse
    ADD CONSTRAINT product_warehouse_pkey PRIMARY KEY (code, product_name);
 R   ALTER TABLE ONLY public.product_warehouse DROP CONSTRAINT product_warehouse_pkey;
       public            postgres    false    215    215         ?           2606    16760    promotion promotion_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.promotion
    ADD CONSTRAINT promotion_pkey PRIMARY KEY (product_code);
 B   ALTER TABLE ONLY public.promotion DROP CONSTRAINT promotion_pkey;
       public            postgres    false    216         ?           1259    16948    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    224         ?           1259    16888 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    226         ?           1259    16889 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    226         ?           1259    16874 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    222         ?           1259    16904 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    230         ?           1259    16903 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    230         ?           1259    16918 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     ?   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    232         ?           1259    16917 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    232         ?           1259    16943     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    228         ?           1259    16939 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    234         ?           1259    16940 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    234         ?           1259    16957 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    235         ?           1259    16956 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    235         ?           2606    16883 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    226    3280    222         ?           2606    16878 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3285    224    226         ?           2606    16869 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3275    222    220                     2606    16898 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    3285    230    224         ?           2606    16893 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    3293    230    228                    2606    16912 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    232    3280    222                    2606    16907 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    3293    232    228                    2606    16929 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3275    220    234                    2606    16934 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    228    3293    234         ?           2606    16767    invoice fkey_customer    FK CONSTRAINT     ?   ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT fkey_customer FOREIGN KEY (customer_code) REFERENCES public.customer(customer_code) NOT VALID;
 ?   ALTER TABLE ONLY public.invoice DROP CONSTRAINT fkey_customer;
       public          postgres    false    209    212    3255         ?           2606    16787    invoice fkey_delivery    FK CONSTRAINT     ?   ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT fkey_delivery FOREIGN KEY (delivery_type) REFERENCES public.delivery(delivery_type) NOT VALID;
 ?   ALTER TABLE ONLY public.invoice DROP CONSTRAINT fkey_delivery;
       public          postgres    false    212    210    3257         ?           2606    16772    invoice fkey_payment    FK CONSTRAINT     ?   ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT fkey_payment FOREIGN KEY (payment_method) REFERENCES public.payment(payment_method) NOT VALID;
 >   ALTER TABLE ONLY public.invoice DROP CONSTRAINT fkey_payment;
       public          postgres    false    3263    213    212         ?           2606    16794    product_warehouse fkey_product    FK CONSTRAINT     ?   ALTER TABLE ONLY public.product_warehouse
    ADD CONSTRAINT fkey_product FOREIGN KEY (code, product_name) REFERENCES public.product(product_code, product_name) NOT VALID;
 H   ALTER TABLE ONLY public.product_warehouse DROP CONSTRAINT fkey_product;
       public          postgres    false    214    215    215    214    3265         ?           2606    16782    discount fkey_promotion    FK CONSTRAINT     ?   ALTER TABLE ONLY public.discount
    ADD CONSTRAINT fkey_promotion FOREIGN KEY (product_code) REFERENCES public.promotion(product_code) NOT VALID;
 A   ALTER TABLE ONLY public.discount DROP CONSTRAINT fkey_promotion;
       public          postgres    false    216    3269    211                                                                                                                                                                                                                                                                                                                                             3487.dat                                                                                            0000600 0004000 0002000 00000000005 14342407075 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3489.dat                                                                                            0000600 0004000 0002000 00000000005 14342407075 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3485.dat                                                                                            0000600 0004000 0002000 00000001610 14342407075 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
\.


                                                                                                                        3491.dat                                                                                            0000600 0004000 0002000 00000000560 14342407075 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	pbkdf2_sha256$260000$iPXRvfq0cDkbFwC6m5Vd87$08gSOHj59x5lyUdDjJ2E4zDQbAUSgz4mGbHyAZm9AAE=	2022-12-02 17:49:25.882598+07	f	topthatsanai			top@mail.com	f	t	2022-12-02 14:19:37.920066+07
2	pbkdf2_sha256$260000$c16H5bCbeB20FmPZkNS2uU$szDNfFHBNQzXi0BYHtQTZ1Sh9EhAN3Bx17b1q7Wtpr4=	2022-12-02 18:28:25.074025+07	f	Test			test@mail.com	f	t	2022-12-02 18:22:34.561362+07
\.


                                                                                                                                                3493.dat                                                                                            0000600 0004000 0002000 00000000005 14342407075 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3495.dat                                                                                            0000600 0004000 0002000 00000000005 14342407075 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3472.dat                                                                                            0000600 0004000 0002000 00000000667 14342407075 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Top       	Thatsanai           	Duangdeemeesak      	top12379@gmail.com                      	123 Bangkok
Ping      	Phattarawut         	Warawut             	ping@mail.com                           	456 Chonburi
Ball      	Narongdat           	Piamkram            	ball@mail.com                           	789 Ratchaburi
Non       	Chayaphon           	Somprasong          	non@mail.com                            	1011 Karnjanaburi
\.


                                                                         3473.dat                                                                                            0000600 0004000 0002000 00000000603 14342407075 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        Post                                              	Post
KE                                                	Kerry express
FE                                                	Flash express
EMS                                               	Express Mail Service
NV                                                	Ninja Van
JT                                                	J&T express
\.


                                                                                                                             3474.dat                                                                                            0000600 0004000 0002000 00000000005 14342407075 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3497.dat                                                                                            0000600 0004000 0002000 00000000005 14342407075 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3483.dat                                                                                            0000600 0004000 0002000 00000000157 14342407075 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
\.


                                                                                                                                                                                                                                                                                                                                                                                                                 3481.dat                                                                                            0000600 0004000 0002000 00000002315 14342407075 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	contenttypes	0001_initial	2022-12-02 14:18:54.82609+07
2	auth	0001_initial	2022-12-02 14:18:54.918499+07
3	admin	0001_initial	2022-12-02 14:18:54.940442+07
4	admin	0002_logentry_remove_auto_add	2022-12-02 14:18:54.94842+07
5	admin	0003_logentry_add_action_flag_choices	2022-12-02 14:18:54.957396+07
6	contenttypes	0002_remove_content_type_name	2022-12-02 14:18:54.975348+07
7	auth	0002_alter_permission_name_max_length	2022-12-02 14:18:54.983327+07
8	auth	0003_alter_user_email_max_length	2022-12-02 14:18:54.991306+07
9	auth	0004_alter_user_username_opts	2022-12-02 14:18:54.998287+07
10	auth	0005_alter_user_last_login_null	2022-12-02 14:18:55.007263+07
11	auth	0006_require_contenttypes_0002	2022-12-02 14:18:55.00826+07
12	auth	0007_alter_validators_add_error_messages	2022-12-02 14:18:55.016238+07
13	auth	0008_alter_user_username_max_length	2022-12-02 14:18:55.030201+07
14	auth	0009_alter_user_last_name_max_length	2022-12-02 14:18:55.039178+07
15	auth	0010_alter_group_name_max_length	2022-12-02 14:18:55.049151+07
16	auth	0011_update_proxy_permissions	2022-12-02 14:18:55.057129+07
17	auth	0012_alter_user_first_name_max_length	2022-12-02 14:18:55.067102+07
18	sessions	0001_initial	2022-12-02 14:18:55.083061+07
\.


                                                                                                                                                                                                                                                                                                                   3498.dat                                                                                            0000600 0004000 0002000 00000000451 14342407075 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        51anke382vgy2ye22s492f86xfdt1c07	.eJxVjDsOwjAQBe_iGlmO15-Ikp4zWOtdLw4gR4qTCnF3iJQC2jcz76USbmtNWy9LmlidlVWn3y0jPUrbAd-x3WZNc1uXKetd0Qft-jpzeV4O9--gYq_fOhgDJjorQtYjR2_dAECWBAwKBlMkGnF5hDwwh2gRvQMaxZGP4L16fwDQtDeJ:1p14DR:xT8EgmMN--xA-r8vZmkx40Mx1L68_GBgMRKLU07zRy8	2022-12-16 18:28:25.075022+07
\.


                                                                                                                                                                                                                       3475.dat                                                                                            0000600 0004000 0002000 00000000405 14342407075 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        OR1002/11 	5745.90	5370.00	Top       	CC                  	EMS                                               	375.90	2022-12-02
OR1004/11 	8741.90	8170.00	Ping      	CC                  	EMS                                               	571.90	2022-12-03
\.


                                                                                                                                                                                                                                                           3499.dat                                                                                            0000600 0004000 0002000 00000000445 14342407075 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        OR1002/11 	1	C100      	1.00	2190.00	2190.00	\N
OR1002/11 	2	A101      	1.00	1290.00	1290.00	\N
OR1002/11 	3	D100      	1.00	1890.00	1890.00	\N
OR1004/11 	1	A100      	2.00	1900.00	3800.00	\N
OR1004/11 	2	E100      	1.00	1790.00	1790.00	\N
OR1004/11 	3	A101      	2.00	1290.00	2580.00	\N
\.


                                                                                                                                                                                                                           3476.dat                                                                                            0000600 0004000 0002000 00000000251 14342407075 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PP                  	Promp Pay
CC                  	Credit Card
DC                  	Debit Card
TM                  	True Money
MB                  	Mobile Banking
\.


                                                                                                                                                                                                                                                                                                                                                       3477.dat                                                                                            0000600 0004000 0002000 00000006761 14342407075 0014276 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        A100      	ROUGE ALLURE L EXTRAIT                                                                              	lipstick            	CHANEL              	1900.00
B100      	GUCCI ROUGE DE BEAUTE BRILLANT LIPSTICK                                                             	lipstick            	GUCCI               	1890.00
C100      	TATOUAGE COUTURE VELVET CREAM                                                                       	lipstick            	YSL                 	2190.00
D100      	ROUGE DIOR - LIMITED EDITION                                                                        	lipstick            	DIOR                	1890.00
E100      	Rouge Hermes, Matte metallic lipstick, Limited edition, Rouge Grenat                                	lipstick            	HERMES              	1790.00
A101      	LE LINER DE CHANEL                                                                                  	eyeliner            	CHANEL              	1290.00
B101      	Stylo Definition L Obscur Gucci Eyeliner                                                            	eyeliner            	GUCCI               	1600.00
C101      	CRUSHLINER YSL                                                                                      	eyeliner            	YSL                 	1190.00
D101      	DIORSHOW 24H STYLO                                                                                  	eyeliner            	DIOR                	1590.00
A102      	LE VOLUME DE CHANEL                                                                                 	mascara             	CHANEL              	1400.00
B102      	Mascara L Obscur                                                                                    	mascara             	GUCCI               	1590.00
C102      	MASCARA VOLUME EFFET FAUX CILS WATERPROOF                                                           	mascara             	YSL                 	1790.00
D102      	DIORSHOW ICONIC OVERCURL                                                                            	mascara             	DIOR                	1500.00
A103      	BOY DE CHANEL EYEBROW PENCIL                                                                        	eyebrow_pencil      	CHANEL              	1990.00
B103      	Crayon Definition Sourcils Powder Eyebrow Pencil                                                    	eyebrow_pencil      	GUCCI               	1200.00
C103      	Yves Saint Laurent Dessin Des Sourcils Eyebrow                                                      	eyebrow_pencil      	YSL                 	1550.00
D103      	DIORSHOW KABUKI BROW STYLER                                                                         	eyebrow_pencil      	DIOR                	1350.00
D104      	DIOR Forever Powder Puff                                                                            	powder_puff         	DIOR                	300.00
A105      	CHANEL ULTRA LE TEINT                                                                               	foundation          	CHANEL              	2600.00
B105      	Fluide De Beauté Fini Naturel - Natural Finish Fluid Foundation                                     	foundation          	GUCCI               	2800.00
C105      	ALL HOURS RENOVATION                                                                                	foundation          	YSL                 	2600.00
D105      	Dior Forever Skin Glow 24h Hydrating Radiant Foundation                                             	foundation          	DIOR                	2600.00
\.


               3478.dat                                                                                            0000600 0004000 0002000 00000005434 14342407075 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        A100      	ROUGE ALLURE L EXTRAIT                                                                              	50.00	PSC       
B100      	GUCCI ROUGE DE BEAUTE BRILLANT LIPSTICK                                                             	50.00	PSC       
C100      	TATOUAGE COUTURE VELVET CREAM                                                                       	50.00	PSC       
D100      	ROUGE DIOR - LIMITED EDITION                                                                        	50.00	PSC       
E100      	Rouge Hermes, Matte metallic lipstick, Limited edition, Rouge Grenat                                	50.00	PSC       
A101      	LE LINER DE CHANEL                                                                                  	50.00	PSC       
B101      	Stylo Definition L Obscur Gucci Eyeliner                                                            	50.00	PSC       
C101      	CRUSHLINER YSL                                                                                      	50.00	PSC       
D101      	DIORSHOW 24H STYLO                                                                                  	50.00	PSC       
A102      	LE VOLUME DE CHANEL                                                                                 	50.00	PSC       
B102      	Mascara L Obscur                                                                                    	50.00	PSC       
C102      	MASCARA VOLUME EFFET FAUX CILS WATERPROOF                                                           	50.00	PSC       
D102      	DIORSHOW ICONIC OVERCURL                                                                            	50.00	PSC       
A103      	BOY DE CHANEL EYEBROW PENCIL                                                                        	50.00	PSC       
B103      	Crayon Definition Sourcils Powder Eyebrow Pencil                                                    	50.00	PSC       
C103      	Yves Saint Laurent Dessin Des Sourcils Eyebrow                                                      	50.00	PSC       
D103      	DIORSHOW KABUKI BROW STYLER                                                                         	50.00	PSC       
D104      	DIOR Forever Powder Puff                                                                            	50.00	PSC       
A105      	CHANEL ULTRA LE TEINT                                                                               	50.00	PSC       
B105      	Fluide De Beauté Fini Naturel - Natural Finish Fluid Foundation                                     	50.00	PSC       
C105      	ALL HOURS RENOVATION                                                                                	50.00	PSC       
D105      	Dior Forever Skin Glow 24h Hydrating Radiant Foundation                                             	50.00	PSC       
\.


                                                                                                                                                                                                                                    3479.dat                                                                                            0000600 0004000 0002000 00000000005 14342407075 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           restore.sql                                                                                         0000600 0004000 0002000 00000101113 14342407075 0015367 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

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

DROP DATABASE "Project";
--
-- Name: Project; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Project" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Thai_Thailand.874';


ALTER DATABASE "Project" OWNER TO postgres;

\connect "Project"

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer (
    customer_code character(10) NOT NULL,
    fname character(20),
    lname character(20),
    email character(40),
    customer_address character varying(100)
);


ALTER TABLE public.customer OWNER TO postgres;

--
-- Name: delivery; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.delivery (
    delivery_type character(50) NOT NULL,
    description character varying(100)
);


ALTER TABLE public.delivery OWNER TO postgres;

--
-- Name: discount; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discount (
    product_code character(10) NOT NULL,
    quantity numeric(10,2)
);


ALTER TABLE public.discount OWNER TO postgres;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: invoice; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoice (
    invoice_no character(10) NOT NULL,
    amount_due numeric(10,2),
    total numeric(10,2),
    customer_code character(10),
    payment_method character(20),
    delivery_type character(50),
    vat numeric(18,2),
    date date
);


ALTER TABLE public.invoice OWNER TO postgres;

--
-- Name: invoice_line_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invoice_line_item (
    invoice_no character(10) NOT NULL,
    item_no integer NOT NULL,
    product_code character(10),
    quantity numeric(18,2),
    price numeric(18,2),
    total numeric(18,2),
    id character(10)
);


ALTER TABLE public.invoice_line_item OWNER TO postgres;

--
-- Name: payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment (
    payment_method character(20) NOT NULL,
    description character varying(50)
);


ALTER TABLE public.payment OWNER TO postgres;

--
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    product_code character(10) NOT NULL,
    product_name character(100) NOT NULL,
    product_type character(20),
    product_brand character(20),
    price numeric(18,2)
);


ALTER TABLE public.product OWNER TO postgres;

--
-- Name: product_warehouse; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product_warehouse (
    code character(10) NOT NULL,
    product_name character(100) NOT NULL,
    quantity numeric(18,2),
    unit character(10)
);


ALTER TABLE public.product_warehouse OWNER TO postgres;

--
-- Name: promotion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.promotion (
    product_code character(10) NOT NULL,
    product_name character(20),
    description character varying(100)
);


ALTER TABLE public.promotion OWNER TO postgres;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.
COPY public.auth_group (id, name) FROM '$$PATH$$/3487.dat';

--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.
COPY public.auth_group_permissions (id, group_id, permission_id) FROM '$$PATH$$/3489.dat';

--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
\.
COPY public.auth_permission (id, name, content_type_id, codename) FROM '$$PATH$$/3485.dat';

--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.
COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM '$$PATH$$/3491.dat';

--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.
COPY public.auth_user_groups (id, user_id, group_id) FROM '$$PATH$$/3493.dat';

--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.
COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM '$$PATH$$/3495.dat';

--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer (customer_code, fname, lname, email, customer_address) FROM stdin;
\.
COPY public.customer (customer_code, fname, lname, email, customer_address) FROM '$$PATH$$/3472.dat';

--
-- Data for Name: delivery; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.delivery (delivery_type, description) FROM stdin;
\.
COPY public.delivery (delivery_type, description) FROM '$$PATH$$/3473.dat';

--
-- Data for Name: discount; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.discount (product_code, quantity) FROM stdin;
\.
COPY public.discount (product_code, quantity) FROM '$$PATH$$/3474.dat';

--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.
COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM '$$PATH$$/3497.dat';

--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
\.
COPY public.django_content_type (id, app_label, model) FROM '$$PATH$$/3483.dat';

--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
\.
COPY public.django_migrations (id, app, name, applied) FROM '$$PATH$$/3481.dat';

--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.
COPY public.django_session (session_key, session_data, expire_date) FROM '$$PATH$$/3498.dat';

--
-- Data for Name: invoice; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoice (invoice_no, amount_due, total, customer_code, payment_method, delivery_type, vat, date) FROM stdin;
\.
COPY public.invoice (invoice_no, amount_due, total, customer_code, payment_method, delivery_type, vat, date) FROM '$$PATH$$/3475.dat';

--
-- Data for Name: invoice_line_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invoice_line_item (invoice_no, item_no, product_code, quantity, price, total, id) FROM stdin;
\.
COPY public.invoice_line_item (invoice_no, item_no, product_code, quantity, price, total, id) FROM '$$PATH$$/3499.dat';

--
-- Data for Name: payment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment (payment_method, description) FROM stdin;
\.
COPY public.payment (payment_method, description) FROM '$$PATH$$/3476.dat';

--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product (product_code, product_name, product_type, product_brand, price) FROM stdin;
\.
COPY public.product (product_code, product_name, product_type, product_brand, price) FROM '$$PATH$$/3477.dat';

--
-- Data for Name: product_warehouse; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.product_warehouse (code, product_name, quantity, unit) FROM stdin;
\.
COPY public.product_warehouse (code, product_name, quantity, unit) FROM '$$PATH$$/3478.dat';

--
-- Data for Name: promotion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.promotion (product_code, product_name, description) FROM stdin;
\.
COPY public.promotion (product_code, product_name, description) FROM '$$PATH$$/3479.dat';

--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 24, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 6, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_code);


--
-- Name: delivery delivery_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.delivery
    ADD CONSTRAINT delivery_pkey PRIMARY KEY (delivery_type);


--
-- Name: discount discount_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discount
    ADD CONSTRAINT discount_pkey PRIMARY KEY (product_code);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: invoice_line_item invoice_line_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice_line_item
    ADD CONSTRAINT invoice_line_item_pkey PRIMARY KEY (invoice_no, item_no);


--
-- Name: invoice order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT order_pkey PRIMARY KEY (invoice_no);


--
-- Name: payment payment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (payment_method);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_code, product_name);


--
-- Name: product_warehouse product_warehouse_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_warehouse
    ADD CONSTRAINT product_warehouse_pkey PRIMARY KEY (code, product_name);


--
-- Name: promotion promotion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.promotion
    ADD CONSTRAINT promotion_pkey PRIMARY KEY (product_code);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: invoice fkey_customer; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT fkey_customer FOREIGN KEY (customer_code) REFERENCES public.customer(customer_code) NOT VALID;


--
-- Name: invoice fkey_delivery; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT fkey_delivery FOREIGN KEY (delivery_type) REFERENCES public.delivery(delivery_type) NOT VALID;


--
-- Name: invoice fkey_payment; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invoice
    ADD CONSTRAINT fkey_payment FOREIGN KEY (payment_method) REFERENCES public.payment(payment_method) NOT VALID;


--
-- Name: product_warehouse fkey_product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product_warehouse
    ADD CONSTRAINT fkey_product FOREIGN KEY (code, product_name) REFERENCES public.product(product_code, product_name) NOT VALID;


--
-- Name: discount fkey_promotion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discount
    ADD CONSTRAINT fkey_promotion FOREIGN KEY (product_code) REFERENCES public.promotion(product_code) NOT VALID;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     