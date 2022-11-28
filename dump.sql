PGDMP                         z            tailor_booking    12.3    12.3 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    25325    tailor_booking    DATABASE     �   CREATE DATABASE tailor_booking WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE tailor_booking;
                postgres    false            �            1259    25326    account_emailaddress    TABLE     �   CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id bigint NOT NULL
);
 (   DROP TABLE public.account_emailaddress;
       public         heap    postgres    false            �            1259    25329    account_emailaddress_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.account_emailaddress_id_seq;
       public          postgres    false    202                        0    0    account_emailaddress_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;
          public          postgres    false    203            �            1259    25331    account_emailconfirmation    TABLE     �   CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);
 -   DROP TABLE public.account_emailconfirmation;
       public         heap    postgres    false            �            1259    25334     account_emailconfirmation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.account_emailconfirmation_id_seq;
       public          postgres    false    204                       0    0     account_emailconfirmation_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;
          public          postgres    false    205            �            1259    25336 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    25339    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    206                       0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    207            �            1259    25341    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    25344    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    208                       0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    209            �            1259    25346    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    25349    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    210                       0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    211            �            1259    25351    bookings    TABLE     $  CREATE TABLE public.bookings (
    id bigint NOT NULL,
    date date,
    "time" time without time zone,
    charges double precision,
    balance double precision NOT NULL,
    booked_on timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    state integer NOT NULL,
    status character varying(255) NOT NULL,
    client_address character varying(255),
    client_contact character varying(255),
    reason character varying(255),
    client_id bigint,
    tailor_id bigint,
    purpose character varying(255)
);
    DROP TABLE public.bookings;
       public         heap    postgres    false            �            1259    25357    bookings_id_seq    SEQUENCE     x   CREATE SEQUENCE public.bookings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.bookings_id_seq;
       public          postgres    false    212                       0    0    bookings_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.bookings_id_seq OWNED BY public.bookings.id;
          public          postgres    false    213            �            1259    25359    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    25366    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    214                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    215            �            1259    25368    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    25371    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    216                       0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    217            �            1259    25373    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    25379    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    218                       0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    219            �            1259    25381    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    25387    socialaccount_socialaccount    TABLE     C  CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id bigint NOT NULL
);
 /   DROP TABLE public.socialaccount_socialaccount;
       public         heap    postgres    false            �            1259    25393 "   socialaccount_socialaccount_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.socialaccount_socialaccount_id_seq;
       public          postgres    false    221            	           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;
          public          postgres    false    222            �            1259    25395    socialaccount_socialapp    TABLE     #  CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);
 +   DROP TABLE public.socialaccount_socialapp;
       public         heap    postgres    false            �            1259    25401    socialaccount_socialapp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.socialaccount_socialapp_id_seq;
       public          postgres    false    223            
           0    0    socialaccount_socialapp_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;
          public          postgres    false    224            �            1259    25403    socialaccount_socialtoken    TABLE     �   CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);
 -   DROP TABLE public.socialaccount_socialtoken;
       public         heap    postgres    false            �            1259    25409     socialaccount_socialtoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.socialaccount_socialtoken_id_seq;
       public          postgres    false    225                       0    0     socialaccount_socialtoken_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;
          public          postgres    false    226            �            1259    25411    tailors    TABLE     ?  CREATE TABLE public.tailors (
    id bigint NOT NULL,
    address text,
    specialities character varying(255)[] NOT NULL,
    about text,
    booking_charges double precision,
    pictures character varying(100)[],
    ratings jsonb[],
    created_on timestamp with time zone NOT NULL,
    user_id bigint NOT NULL
);
    DROP TABLE public.tailors;
       public         heap    postgres    false            �            1259    25417    tailors_id_seq    SEQUENCE     w   CREATE SEQUENCE public.tailors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tailors_id_seq;
       public          postgres    false    227                       0    0    tailors_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tailors_id_seq OWNED BY public.tailors.id;
          public          postgres    false    228            �            1259    25419    users    TABLE     Z  CREATE TABLE public.users (
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    id bigint NOT NULL,
    username character varying(255) NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    email character varying(255),
    gender character varying(1) NOT NULL,
    contact character varying(10),
    "isTailor" boolean NOT NULL,
    "displayPicture" character varying(100)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    25425    users_groups    TABLE     z   CREATE TABLE public.users_groups (
    id bigint NOT NULL,
    users_id bigint NOT NULL,
    group_id integer NOT NULL
);
     DROP TABLE public.users_groups;
       public         heap    postgres    false            �            1259    25428    users_groups_id_seq    SEQUENCE     |   CREATE SEQUENCE public.users_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.users_groups_id_seq;
       public          postgres    false    230                       0    0    users_groups_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.users_groups_id_seq OWNED BY public.users_groups.id;
          public          postgres    false    231            �            1259    25430    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    229                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    232            �            1259    25432    users_user_permissions    TABLE     �   CREATE TABLE public.users_user_permissions (
    id bigint NOT NULL,
    users_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.users_user_permissions;
       public         heap    postgres    false            �            1259    25435    users_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.users_user_permissions_id_seq;
       public          postgres    false    233                       0    0    users_user_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.users_user_permissions_id_seq OWNED BY public.users_user_permissions.id;
          public          postgres    false    234            �
           2604    25437    account_emailaddress id    DEFAULT     �   ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);
 F   ALTER TABLE public.account_emailaddress ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202            �
           2604    25438    account_emailconfirmation id    DEFAULT     �   ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);
 K   ALTER TABLE public.account_emailconfirmation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204            �
           2604    25439    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206            �
           2604    25440    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208            �
           2604    25441    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210            �
           2604    25442    bookings id    DEFAULT     j   ALTER TABLE ONLY public.bookings ALTER COLUMN id SET DEFAULT nextval('public.bookings_id_seq'::regclass);
 :   ALTER TABLE public.bookings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212            �
           2604    25443    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �
           2604    25444    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �
           2604    25445    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �
           2604    25446    socialaccount_socialaccount id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);
 M   ALTER TABLE public.socialaccount_socialaccount ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221            �
           2604    25447    socialaccount_socialapp id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);
 I   ALTER TABLE public.socialaccount_socialapp ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223            �
           2604    25448    socialaccount_socialtoken id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);
 K   ALTER TABLE public.socialaccount_socialtoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225            �
           2604    25449 
   tailors id    DEFAULT     h   ALTER TABLE ONLY public.tailors ALTER COLUMN id SET DEFAULT nextval('public.tailors_id_seq'::regclass);
 9   ALTER TABLE public.tailors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227            �
           2604    25450    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    229            �
           2604    25451    users_groups id    DEFAULT     r   ALTER TABLE ONLY public.users_groups ALTER COLUMN id SET DEFAULT nextval('public.users_groups_id_seq'::regclass);
 >   ALTER TABLE public.users_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            �
           2604    25452    users_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.users_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_permissions_id_seq'::regclass);
 H   ALTER TABLE public.users_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233            �          0    25326    account_emailaddress 
   TABLE DATA           W   COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
    public          postgres    false    202   P�       �          0    25331    account_emailconfirmation 
   TABLE DATA           ]   COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
    public          postgres    false    204   m�       �          0    25336 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    206   ��       �          0    25341    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    208   ��       �          0    25346    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    210   ��       �          0    25351    bookings 
   TABLE DATA           �   COPY public.bookings (id, date, "time", charges, balance, booked_on, updated_at, state, status, client_address, client_contact, reason, client_id, tailor_id, purpose) FROM stdin;
    public          postgres    false    212   ��       �          0    25359    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    214   ��       �          0    25368    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    216   ��       �          0    25373    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    218   u�       �          0    25381    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   ��       �          0    25387    socialaccount_socialaccount 
   TABLE DATA           v   COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
    public          postgres    false    221   ��       �          0    25395    socialaccount_socialapp 
   TABLE DATA           ]   COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
    public          postgres    false    223   �       �          0    25403    socialaccount_socialtoken 
   TABLE DATA           l   COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
    public          postgres    false    225   5�       �          0    25411    tailors 
   TABLE DATA           |   COPY public.tailors (id, address, specialities, about, booking_charges, pictures, ratings, created_on, user_id) FROM stdin;
    public          postgres    false    227   R�       �          0    25419    users 
   TABLE DATA           �   COPY public.users (password, last_login, is_superuser, is_staff, is_active, date_joined, id, username, first_name, last_name, email, gender, contact, "isTailor", "displayPicture") FROM stdin;
    public          postgres    false    229   ��       �          0    25425    users_groups 
   TABLE DATA           >   COPY public.users_groups (id, users_id, group_id) FROM stdin;
    public          postgres    false    230   b�       �          0    25432    users_user_permissions 
   TABLE DATA           M   COPY public.users_user_permissions (id, users_id, permission_id) FROM stdin;
    public          postgres    false    233   �                  0    0    account_emailaddress_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 1, false);
          public          postgres    false    203                       0    0     account_emailconfirmation_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);
          public          postgres    false    205                       0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    207                       0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    209                       0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);
          public          postgres    false    211                       0    0    bookings_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.bookings_id_seq', 4, true);
          public          postgres    false    213                       0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 6, true);
          public          postgres    false    215                       0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);
          public          postgres    false    217                       0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);
          public          postgres    false    219                       0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);
          public          postgres    false    222                       0    0    socialaccount_socialapp_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);
          public          postgres    false    224                       0    0     socialaccount_socialtoken_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);
          public          postgres    false    226                       0    0    tailors_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tailors_id_seq', 2, true);
          public          postgres    false    228                       0    0    users_groups_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.users_groups_id_seq', 1, false);
          public          postgres    false    231                       0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 4, true);
          public          postgres    false    232                       0    0    users_user_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.users_user_permissions_id_seq', 1, false);
          public          postgres    false    234            �
           2606    25454 3   account_emailaddress account_emailaddress_email_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);
 ]   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_email_key;
       public            postgres    false    202            �
           2606    25456 .   account_emailaddress account_emailaddress_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_pkey;
       public            postgres    false    202                        2606    25458 ;   account_emailconfirmation account_emailconfirmation_key_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);
 e   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_key_key;
       public            postgres    false    204                       2606    25460 8   account_emailconfirmation account_emailconfirmation_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_pkey;
       public            postgres    false    204                       2606    25462    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    206            
           2606    25464 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    208    208                       2606    25466 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    208                       2606    25468    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    206                       2606    25470 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    210    210                       2606    25472 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    210                       2606    25474    bookings bookings_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT bookings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.bookings DROP CONSTRAINT bookings_pkey;
       public            postgres    false    212                       2606    25476 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    214                       2606    25478 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    216    216                       2606    25480 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    216                        2606    25482 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    218            #           2606    25484 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220            &           2606    25486 <   socialaccount_socialaccount socialaccount_socialaccount_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_pkey;
       public            postgres    false    221            (           2606    25488 R   socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);
 |   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq;
       public            postgres    false    221    221            +           2606    25490 4   socialaccount_socialapp socialaccount_socialapp_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.socialaccount_socialapp DROP CONSTRAINT socialaccount_socialapp_pkey;
       public            postgres    false    223            /           2606    25492 S   socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);
 }   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq;
       public            postgres    false    225    225            1           2606    25494 8   socialaccount_socialtoken socialaccount_socialtoken_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_pkey;
       public            postgres    false    225            3           2606    25496    tailors tailors_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tailors
    ADD CONSTRAINT tailors_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tailors DROP CONSTRAINT tailors_pkey;
       public            postgres    false    227            5           2606    25498    tailors tailors_user_id_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.tailors
    ADD CONSTRAINT tailors_user_id_key UNIQUE (user_id);
 E   ALTER TABLE ONLY public.tailors DROP CONSTRAINT tailors_user_id_key;
       public            postgres    false    227            8           2606    25500    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    229            @           2606    25502    users_groups users_groups_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.users_groups
    ADD CONSTRAINT users_groups_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.users_groups DROP CONSTRAINT users_groups_pkey;
       public            postgres    false    230            C           2606    25504 9   users_groups users_groups_users_id_group_id_83a49e68_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_groups
    ADD CONSTRAINT users_groups_users_id_group_id_83a49e68_uniq UNIQUE (users_id, group_id);
 c   ALTER TABLE ONLY public.users_groups DROP CONSTRAINT users_groups_users_id_group_id_83a49e68_uniq;
       public            postgres    false    230    230            :           2606    25506    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    229            F           2606    25508 2   users_user_permissions users_user_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.users_user_permissions
    ADD CONSTRAINT users_user_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.users_user_permissions DROP CONSTRAINT users_user_permissions_pkey;
       public            postgres    false    233            I           2606    25510 R   users_user_permissions users_user_permissions_users_id_permission_id_d7a00931_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.users_user_permissions
    ADD CONSTRAINT users_user_permissions_users_id_permission_id_d7a00931_uniq UNIQUE (users_id, permission_id);
 |   ALTER TABLE ONLY public.users_user_permissions DROP CONSTRAINT users_user_permissions_users_id_permission_id_d7a00931_uniq;
       public            postgres    false    233    233            =           2606    25512    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public            postgres    false    229            �
           1259    25513 (   account_emailaddress_email_03be32b2_like    INDEX     ~   CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);
 <   DROP INDEX public.account_emailaddress_email_03be32b2_like;
       public            postgres    false    202            �
           1259    25514 %   account_emailaddress_user_id_2c513194    INDEX     i   CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);
 9   DROP INDEX public.account_emailaddress_user_id_2c513194;
       public            postgres    false    202            �
           1259    25515 3   account_emailconfirmation_email_address_id_5b7f8c58    INDEX     �   CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);
 G   DROP INDEX public.account_emailconfirmation_email_address_id_5b7f8c58;
       public            postgres    false    204            �
           1259    25516 +   account_emailconfirmation_key_f43612bd_like    INDEX     �   CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);
 ?   DROP INDEX public.account_emailconfirmation_key_f43612bd_like;
       public            postgres    false    204                       1259    25517    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    206                       1259    25518 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    208                       1259    25519 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    208                       1259    25520 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    210                       1259    25521    bookings_client_id_89ca745f    INDEX     U   CREATE INDEX bookings_client_id_89ca745f ON public.bookings USING btree (client_id);
 /   DROP INDEX public.bookings_client_id_89ca745f;
       public            postgres    false    212                       1259    25522    bookings_tailor_id_1c567aca    INDEX     U   CREATE INDEX bookings_tailor_id_1c567aca ON public.bookings USING btree (tailor_id);
 /   DROP INDEX public.bookings_tailor_id_1c567aca;
       public            postgres    false    212                       1259    25523 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    214                       1259    25524 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    214            !           1259    25525 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220            $           1259    25526 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220            )           1259    25527 ,   socialaccount_socialaccount_user_id_8146e70c    INDEX     w   CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);
 @   DROP INDEX public.socialaccount_socialaccount_user_id_8146e70c;
       public            postgres    false    221            ,           1259    25528 -   socialaccount_socialtoken_account_id_951f210e    INDEX     y   CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);
 A   DROP INDEX public.socialaccount_socialtoken_account_id_951f210e;
       public            postgres    false    225            -           1259    25529 )   socialaccount_socialtoken_app_id_636a42d7    INDEX     q   CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);
 =   DROP INDEX public.socialaccount_socialtoken_app_id_636a42d7;
       public            postgres    false    225            6           1259    25530    users_email_0ea73cca_like    INDEX     `   CREATE INDEX users_email_0ea73cca_like ON public.users USING btree (email varchar_pattern_ops);
 -   DROP INDEX public.users_email_0ea73cca_like;
       public            postgres    false    229            >           1259    25531    users_groups_group_id_2f3517aa    INDEX     [   CREATE INDEX users_groups_group_id_2f3517aa ON public.users_groups USING btree (group_id);
 2   DROP INDEX public.users_groups_group_id_2f3517aa;
       public            postgres    false    230            A           1259    25532    users_groups_users_id_1e682706    INDEX     [   CREATE INDEX users_groups_users_id_1e682706 ON public.users_groups USING btree (users_id);
 2   DROP INDEX public.users_groups_users_id_1e682706;
       public            postgres    false    230            D           1259    25533 -   users_user_permissions_permission_id_6d08dcd2    INDEX     y   CREATE INDEX users_user_permissions_permission_id_6d08dcd2 ON public.users_user_permissions USING btree (permission_id);
 A   DROP INDEX public.users_user_permissions_permission_id_6d08dcd2;
       public            postgres    false    233            G           1259    25534 (   users_user_permissions_users_id_e1ed60a2    INDEX     o   CREATE INDEX users_user_permissions_users_id_e1ed60a2 ON public.users_user_permissions USING btree (users_id);
 <   DROP INDEX public.users_user_permissions_users_id_e1ed60a2;
       public            postgres    false    233            ;           1259    25535    users_username_e8658fc8_like    INDEX     f   CREATE INDEX users_username_e8658fc8_like ON public.users USING btree (username varchar_pattern_ops);
 0   DROP INDEX public.users_username_e8658fc8_like;
       public            postgres    false    229            J           2606    25536 F   account_emailaddress account_emailaddress_user_id_2c513194_fk_users_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_users_id FOREIGN KEY (user_id) REFERENCES public.users(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_user_id_2c513194_fk_users_id;
       public          postgres    false    229    202    2874            K           2606    25541 U   account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e;
       public          postgres    false    202    204    2811            L           2606    25546 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2834    210    208            M           2606    25551 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    208    206    2823            N           2606    25556 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2846    210    216            O           2606    25561 0   bookings bookings_client_id_89ca745f_fk_users_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT bookings_client_id_89ca745f_fk_users_id FOREIGN KEY (client_id) REFERENCES public.users(id) DEFERRABLE INITIALLY DEFERRED;
 Z   ALTER TABLE ONLY public.bookings DROP CONSTRAINT bookings_client_id_89ca745f_fk_users_id;
       public          postgres    false    229    212    2874            P           2606    25566 2   bookings bookings_tailor_id_1c567aca_fk_tailors_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT bookings_tailor_id_1c567aca_fk_tailors_id FOREIGN KEY (tailor_id) REFERENCES public.tailors(id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY public.bookings DROP CONSTRAINT bookings_tailor_id_1c567aca_fk_tailors_id;
       public          postgres    false    227    212    2867            Q           2606    25571 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    216    214    2846            R           2606    25576 >   django_admin_log django_admin_log_user_id_c564eba6_fk_users_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_id FOREIGN KEY (user_id) REFERENCES public.users(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_users_id;
       public          postgres    false    229    214    2874            T           2606    25581 O   socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc;
       public          postgres    false    221    225    2854            U           2606    25586 K   socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc;
       public          postgres    false    223    225    2859            S           2606    25591 T   socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_users_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_users_id FOREIGN KEY (user_id) REFERENCES public.users(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_users_id;
       public          postgres    false    221    229    2874            V           2606    25596 ,   tailors tailors_user_id_11592933_fk_users_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.tailors
    ADD CONSTRAINT tailors_user_id_11592933_fk_users_id FOREIGN KEY (user_id) REFERENCES public.users(id) DEFERRABLE INITIALLY DEFERRED;
 V   ALTER TABLE ONLY public.tailors DROP CONSTRAINT tailors_user_id_11592933_fk_users_id;
       public          postgres    false    2874    227    229            W           2606    25601 <   users_groups users_groups_group_id_2f3517aa_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_groups
    ADD CONSTRAINT users_groups_group_id_2f3517aa_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.users_groups DROP CONSTRAINT users_groups_group_id_2f3517aa_fk_auth_group_id;
       public          postgres    false    206    230    2823            X           2606    25606 7   users_groups users_groups_users_id_1e682706_fk_users_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_groups
    ADD CONSTRAINT users_groups_users_id_1e682706_fk_users_id FOREIGN KEY (users_id) REFERENCES public.users(id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.users_groups DROP CONSTRAINT users_groups_users_id_1e682706_fk_users_id;
       public          postgres    false    229    230    2874            Y           2606    25611 O   users_user_permissions users_user_permissio_permission_id_6d08dcd2_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_permissions
    ADD CONSTRAINT users_user_permissio_permission_id_6d08dcd2_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.users_user_permissions DROP CONSTRAINT users_user_permissio_permission_id_6d08dcd2_fk_auth_perm;
       public          postgres    false    2834    233    210            Z           2606    25616 K   users_user_permissions users_user_permissions_users_id_e1ed60a2_fk_users_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.users_user_permissions
    ADD CONSTRAINT users_user_permissions_users_id_e1ed60a2_fk_users_id FOREIGN KEY (users_id) REFERENCES public.users(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.users_user_permissions DROP CONSTRAINT users_user_permissions_users_id_e1ed60a2_fk_users_id;
       public          postgres    false    233    229    2874            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �     x�}�[��0E��U��V�#��lc�M��# 3�ݷ)ʮ*�/�ϕΥ˴Q��1�.����[���gx�9 ��n�ZA�# /�nW	�#K �����AU4����ep��A�����v����`Q��)
�F��잓*@~ks�r��1�) ��HN* <.�A��տ�l���*AG�D���$0Z	��n	���?�hB��`�h����V �O�4\��X�	C���'R#�"b�ѧs�a��3���= �"&nah1v���x.v^T>�[�b��9� "�= �[� ��v��pw��|҅�pb�#bb�	C���M'|"B�n~����_P��3�B�{���L��Oh+l�S�%]'��J|�[�����؁�9I�����Ni�7���K�TR�6-�:�^��=�U����>š.��:&­�!qӎ���!v�� ա�4݇�@��L�.ϯ�Ȅl���WMdH��Bͱ���6[�}�$[���T���HW���()zaؼoFa�����e=�����[	�      �   �   x����jA���S̽:�c2_W)�|/���`g�U��]��ZA�@����)���\ �2r�sb�`������s4�~�t��w3�~���Z�v֭�ڪ�>�kmWU�_�vbo�׮7>	��,�ZC�H���T(:J��+�����-���`.>��I����1��K�)�tt�?N��e��D�#pa���S.]�4�B*��      �   �   x�u�=o� ���
����3s�.��P�R�T�U��^�:U���ny��	`�力��C� ��hP<pt�A|8�� Y��v�������#�}(u\���ԏ��cO_�����uzJ�k���v:�H7�ˆh":h'-�� $�)�]��>�߄� [A;�L[���9�񸀨1C����X�0U�V��sf��6���qE�{DT�0l��EN%�+�Y�u?�ps�      �   �   x�m�K�0D�p��N��K7�qS+��^��u�Fj�l�7�ꃏ0�����/H./�9b�(C�����U����3��^�:�:���a�x�".�R��#%?q�;��\��U������V��O��'����ueCh�};%4���<���"�Yndr      �   E  x���ݮ� ���S������>�$���C��xҾ�`��v����^��qV�>�>�Ǡ}����&�f� >�@���򊒼d����U]�E���~k9o�iG����0Θ�3�dj�G7�9�E�M����A��xol�<Vv�.[�7�] 0�X���6���N��T� �@t�����>��T[� li��������(I�0<>ΟѸ�:�g��yo(�	:cʄ)��|��\U��Ku�J�u��ޫF�����#�Q�td8Gkv0N��Ŭs4Ίr��B�h�5Ύ�9�@�{�2���薖����&�o�1�d���c�Vw3�lye��t+�M��f�9�Zb��ڎ}8���V]����nLXz���kg���[�*��%��=����Sj�1���Z9d�L�Wu��̭U��?����ؖ����~��9Q�4�~�
���r�H�����I@���nO$r�!����;�i��E�)�/ �y[ǳ��ȁ�����A���M~�>�#���D���d�ɸ�� �������!��>K;���i0�8T�.���V=�-�
�
x�p	x��W~�\�Im�      �   !  x�]��n�0 �ky��/��-��w��������Ox�ݸ%�y�s�j{�:ԋ��Sv�aљǨ�׫�(& P��ޅ"5\��Xcb'ۥ��Y��IH�����$;�����G0V��? $�4�1��A@�A9��,3��P���3OE�!�j���������l���Kg:�f��b�Dm��~0%�3݇�t�bBg3���*��!9�)���i����A�D7?�q1�J>��.nrbbW4e/�Ƴ���j|�K?��p����c�c���d����(�5�i�      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�m̱
�0 ����ۆ˥1i6q�I�\�Dj�B��Q��7?��T��Pw<�<�����pH��E��!Q��C/����zeic�� ��_EP�טSi�c���,�N�����r��o���oi�E	!^`�*       �   o  x����j1���S��;�4�f�((���VJ����t7dW�>}�vUZK/��0����׳<���*�D�eľ��B1���v�'Y��ϥ���t���V�^�:�no!�K�c�'��>��?k�z��+�cq�_���#��m���]d�ZUI]�h�Thl��&���z&qZ�'D��]F��X3��EG���!�!�0���B�:k!�X/��I�'���G��Ax~@8z>��J0���n�'���R$�]�$�+�.qT�,�X��^*-e�e)�������s��/'��.@C�Z��u�̯ԏ�4�qy����]�IWr��ˍ�DP�Q�)���Q�$���˥�Z��q�w:�/ &��      �      x������ � �      �      x������ � �     