--
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 11.7 (Ubuntu 11.7-0ubuntu0.19.10.1)
-- Dumped by pg_dump version 11.7 (Ubuntu 11.7-0ubuntu0.19.10.1)

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

DROP DATABASE readaholic;
--
-- Name: readaholic; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE readaholic WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_IN' LC_CTYPE = 'en_IN';


ALTER DATABASE readaholic OWNER TO postgres;

\connect readaholic

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

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: rohan
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO rohan;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: rohan
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO rohan;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rohan
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: rohan
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO rohan;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: rohan
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO rohan;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rohan
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: rohan
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO rohan;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: rohan
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO rohan;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rohan
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: rohan
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


ALTER TABLE public.auth_user OWNER TO rohan;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: rohan
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO rohan;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: rohan
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO rohan;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rohan
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: rohan
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO rohan;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rohan
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: rohan
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO rohan;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: rohan
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO rohan;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rohan
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: rohan
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


ALTER TABLE public.django_admin_log OWNER TO rohan;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: rohan
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO rohan;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rohan
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: rohan
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO rohan;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: rohan
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO rohan;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rohan
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: rohan
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO rohan;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: rohan
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO rohan;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rohan
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: rohan
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO rohan;

--
-- Name: shop_author; Type: TABLE; Schema: public; Owner: rohan
--

CREATE TABLE public.shop_author (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.shop_author OWNER TO rohan;

--
-- Name: shop_author_id_seq; Type: SEQUENCE; Schema: public; Owner: rohan
--

CREATE SEQUENCE public.shop_author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_author_id_seq OWNER TO rohan;

--
-- Name: shop_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rohan
--

ALTER SEQUENCE public.shop_author_id_seq OWNED BY public.shop_author.id;


--
-- Name: shop_book; Type: TABLE; Schema: public; Owner: rohan
--

CREATE TABLE public.shop_book (
    id integer NOT NULL,
    name character varying(300) NOT NULL,
    price numeric(10,2) NOT NULL,
    pubdate date NOT NULL,
    "desc" text NOT NULL,
    "Image" character varying(100),
    publisher_id integer NOT NULL,
    stock integer NOT NULL,
    status character varying(32) NOT NULL,
    CONSTRAINT shop_book_stock_515e8f1d_check CHECK ((stock >= 0))
);


ALTER TABLE public.shop_book OWNER TO rohan;

--
-- Name: shop_book_authors; Type: TABLE; Schema: public; Owner: rohan
--

CREATE TABLE public.shop_book_authors (
    id integer NOT NULL,
    book_id integer NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE public.shop_book_authors OWNER TO rohan;

--
-- Name: shop_book_authors_id_seq; Type: SEQUENCE; Schema: public; Owner: rohan
--

CREATE SEQUENCE public.shop_book_authors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_book_authors_id_seq OWNER TO rohan;

--
-- Name: shop_book_authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rohan
--

ALTER SEQUENCE public.shop_book_authors_id_seq OWNED BY public.shop_book_authors.id;


--
-- Name: shop_book_id_seq; Type: SEQUENCE; Schema: public; Owner: rohan
--

CREATE SEQUENCE public.shop_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_book_id_seq OWNER TO rohan;

--
-- Name: shop_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rohan
--

ALTER SEQUENCE public.shop_book_id_seq OWNED BY public.shop_book.id;


--
-- Name: shop_cart; Type: TABLE; Schema: public; Owner: rohan
--

CREATE TABLE public.shop_cart (
    id integer NOT NULL,
    total numeric(10,2) NOT NULL,
    updated timestamp with time zone NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    user_id integer
);


ALTER TABLE public.shop_cart OWNER TO rohan;

--
-- Name: shop_cart_id_seq; Type: SEQUENCE; Schema: public; Owner: rohan
--

CREATE SEQUENCE public.shop_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_cart_id_seq OWNER TO rohan;

--
-- Name: shop_cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rohan
--

ALTER SEQUENCE public.shop_cart_id_seq OWNED BY public.shop_cart.id;


--
-- Name: shop_count; Type: TABLE; Schema: public; Owner: rohan
--

CREATE TABLE public.shop_count (
    id integer NOT NULL,
    count integer NOT NULL,
    book_id integer,
    cart_id integer,
    CONSTRAINT shop_count_count_check CHECK ((count >= 0))
);


ALTER TABLE public.shop_count OWNER TO rohan;

--
-- Name: shop_count_id_seq; Type: SEQUENCE; Schema: public; Owner: rohan
--

CREATE SEQUENCE public.shop_count_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_count_id_seq OWNER TO rohan;

--
-- Name: shop_count_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rohan
--

ALTER SEQUENCE public.shop_count_id_seq OWNED BY public.shop_count.id;


--
-- Name: shop_publisher; Type: TABLE; Schema: public; Owner: rohan
--

CREATE TABLE public.shop_publisher (
    id integer NOT NULL,
    name character varying(300) NOT NULL
);


ALTER TABLE public.shop_publisher OWNER TO rohan;

--
-- Name: shop_publisher_id_seq; Type: SEQUENCE; Schema: public; Owner: rohan
--

CREATE SEQUENCE public.shop_publisher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_publisher_id_seq OWNER TO rohan;

--
-- Name: shop_publisher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rohan
--

ALTER SEQUENCE public.shop_publisher_id_seq OWNED BY public.shop_publisher.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: shop_author id; Type: DEFAULT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.shop_author ALTER COLUMN id SET DEFAULT nextval('public.shop_author_id_seq'::regclass);


--
-- Name: shop_book id; Type: DEFAULT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.shop_book ALTER COLUMN id SET DEFAULT nextval('public.shop_book_id_seq'::regclass);


--
-- Name: shop_book_authors id; Type: DEFAULT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.shop_book_authors ALTER COLUMN id SET DEFAULT nextval('public.shop_book_authors_id_seq'::regclass);


--
-- Name: shop_cart id; Type: DEFAULT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.shop_cart ALTER COLUMN id SET DEFAULT nextval('public.shop_cart_id_seq'::regclass);


--
-- Name: shop_count id; Type: DEFAULT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.shop_count ALTER COLUMN id SET DEFAULT nextval('public.shop_count_id_seq'::regclass);


--
-- Name: shop_publisher id; Type: DEFAULT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.shop_publisher ALTER COLUMN id SET DEFAULT nextval('public.shop_publisher_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: rohan
--

COPY public.auth_group (id, name) FROM stdin;
\.
COPY public.auth_group (id, name) FROM '$$PATH$$/3130.dat';

--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: rohan
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.
COPY public.auth_group_permissions (id, group_id, permission_id) FROM '$$PATH$$/3132.dat';

--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: rohan
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
\.
COPY public.auth_permission (id, name, content_type_id, codename) FROM '$$PATH$$/3128.dat';

--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: rohan
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.
COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM '$$PATH$$/3134.dat';

--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: rohan
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.
COPY public.auth_user_groups (id, user_id, group_id) FROM '$$PATH$$/3136.dat';

--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: rohan
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.
COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM '$$PATH$$/3138.dat';

--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: rohan
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.
COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM '$$PATH$$/3140.dat';

--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: rohan
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
\.
COPY public.django_content_type (id, app_label, model) FROM '$$PATH$$/3126.dat';

--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: rohan
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
\.
COPY public.django_migrations (id, app, name, applied) FROM '$$PATH$$/3124.dat';

--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: rohan
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.
COPY public.django_session (session_key, session_data, expire_date) FROM '$$PATH$$/3141.dat';

--
-- Data for Name: shop_author; Type: TABLE DATA; Schema: public; Owner: rohan
--

COPY public.shop_author (id, name) FROM stdin;
\.
COPY public.shop_author (id, name) FROM '$$PATH$$/3143.dat';

--
-- Data for Name: shop_book; Type: TABLE DATA; Schema: public; Owner: rohan
--

COPY public.shop_book (id, name, price, pubdate, "desc", "Image", publisher_id, stock, status) FROM stdin;
\.
COPY public.shop_book (id, name, price, pubdate, "desc", "Image", publisher_id, stock, status) FROM '$$PATH$$/3147.dat';

--
-- Data for Name: shop_book_authors; Type: TABLE DATA; Schema: public; Owner: rohan
--

COPY public.shop_book_authors (id, book_id, author_id) FROM stdin;
\.
COPY public.shop_book_authors (id, book_id, author_id) FROM '$$PATH$$/3149.dat';

--
-- Data for Name: shop_cart; Type: TABLE DATA; Schema: public; Owner: rohan
--

COPY public.shop_cart (id, total, updated, "timestamp", user_id) FROM stdin;
\.
COPY public.shop_cart (id, total, updated, "timestamp", user_id) FROM '$$PATH$$/3151.dat';

--
-- Data for Name: shop_count; Type: TABLE DATA; Schema: public; Owner: rohan
--

COPY public.shop_count (id, count, book_id, cart_id) FROM stdin;
\.
COPY public.shop_count (id, count, book_id, cart_id) FROM '$$PATH$$/3153.dat';

--
-- Data for Name: shop_publisher; Type: TABLE DATA; Schema: public; Owner: rohan
--

COPY public.shop_publisher (id, name) FROM stdin;
\.
COPY public.shop_publisher (id, name) FROM '$$PATH$$/3145.dat';

--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rohan
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rohan
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rohan
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rohan
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rohan
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 18, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rohan
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rohan
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 92, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rohan
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rohan
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 39, true);


--
-- Name: shop_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rohan
--

SELECT pg_catalog.setval('public.shop_author_id_seq', 5, true);


--
-- Name: shop_book_authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rohan
--

SELECT pg_catalog.setval('public.shop_book_authors_id_seq', 5, true);


--
-- Name: shop_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rohan
--

SELECT pg_catalog.setval('public.shop_book_id_seq', 4, true);


--
-- Name: shop_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rohan
--

SELECT pg_catalog.setval('public.shop_cart_id_seq', 8, true);


--
-- Name: shop_count_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rohan
--

SELECT pg_catalog.setval('public.shop_count_id_seq', 14, true);


--
-- Name: shop_publisher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rohan
--

SELECT pg_catalog.setval('public.shop_publisher_id_seq', 2, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: shop_author shop_author_pkey; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.shop_author
    ADD CONSTRAINT shop_author_pkey PRIMARY KEY (id);


--
-- Name: shop_book_authors shop_book_authors_book_id_author_id_31940169_uniq; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.shop_book_authors
    ADD CONSTRAINT shop_book_authors_book_id_author_id_31940169_uniq UNIQUE (book_id, author_id);


--
-- Name: shop_book_authors shop_book_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.shop_book_authors
    ADD CONSTRAINT shop_book_authors_pkey PRIMARY KEY (id);


--
-- Name: shop_book shop_book_pkey; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.shop_book
    ADD CONSTRAINT shop_book_pkey PRIMARY KEY (id);


--
-- Name: shop_cart shop_cart_pkey; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.shop_cart
    ADD CONSTRAINT shop_cart_pkey PRIMARY KEY (id);


--
-- Name: shop_count shop_count_pkey; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.shop_count
    ADD CONSTRAINT shop_count_pkey PRIMARY KEY (id);


--
-- Name: shop_publisher shop_publisher_pkey; Type: CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.shop_publisher
    ADD CONSTRAINT shop_publisher_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: rohan
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: rohan
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: rohan
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: rohan
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: rohan
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: rohan
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: rohan
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: rohan
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: rohan
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: rohan
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: rohan
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: rohan
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: rohan
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: shop_book_authors_author_id_4c67ac24; Type: INDEX; Schema: public; Owner: rohan
--

CREATE INDEX shop_book_authors_author_id_4c67ac24 ON public.shop_book_authors USING btree (author_id);


--
-- Name: shop_book_authors_book_id_2fc6bbba; Type: INDEX; Schema: public; Owner: rohan
--

CREATE INDEX shop_book_authors_book_id_2fc6bbba ON public.shop_book_authors USING btree (book_id);


--
-- Name: shop_book_publisher_id_04743c27; Type: INDEX; Schema: public; Owner: rohan
--

CREATE INDEX shop_book_publisher_id_04743c27 ON public.shop_book USING btree (publisher_id);


--
-- Name: shop_cart_user_id_27925ac6; Type: INDEX; Schema: public; Owner: rohan
--

CREATE INDEX shop_cart_user_id_27925ac6 ON public.shop_cart USING btree (user_id);


--
-- Name: shop_count_book_id_ad95f615; Type: INDEX; Schema: public; Owner: rohan
--

CREATE INDEX shop_count_book_id_ad95f615 ON public.shop_count USING btree (book_id);


--
-- Name: shop_count_cart_id_9769c4ea; Type: INDEX; Schema: public; Owner: rohan
--

CREATE INDEX shop_count_cart_id_9769c4ea ON public.shop_count USING btree (cart_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_book_authors shop_book_authors_author_id_4c67ac24_fk_shop_author_id; Type: FK CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.shop_book_authors
    ADD CONSTRAINT shop_book_authors_author_id_4c67ac24_fk_shop_author_id FOREIGN KEY (author_id) REFERENCES public.shop_author(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_book_authors shop_book_authors_book_id_2fc6bbba_fk_shop_book_id; Type: FK CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.shop_book_authors
    ADD CONSTRAINT shop_book_authors_book_id_2fc6bbba_fk_shop_book_id FOREIGN KEY (book_id) REFERENCES public.shop_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_book shop_book_publisher_id_04743c27_fk_shop_publisher_id; Type: FK CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.shop_book
    ADD CONSTRAINT shop_book_publisher_id_04743c27_fk_shop_publisher_id FOREIGN KEY (publisher_id) REFERENCES public.shop_publisher(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_cart shop_cart_user_id_27925ac6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.shop_cart
    ADD CONSTRAINT shop_cart_user_id_27925ac6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_count shop_count_book_id_ad95f615_fk_shop_book_id; Type: FK CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.shop_count
    ADD CONSTRAINT shop_count_book_id_ad95f615_fk_shop_book_id FOREIGN KEY (book_id) REFERENCES public.shop_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_count shop_count_cart_id_9769c4ea_fk_shop_cart_id; Type: FK CONSTRAINT; Schema: public; Owner: rohan
--

ALTER TABLE ONLY public.shop_count
    ADD CONSTRAINT shop_count_cart_id_9769c4ea_fk_shop_cart_id FOREIGN KEY (cart_id) REFERENCES public.shop_cart(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

