--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

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
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_emailaddress (
    id bigint NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO postgres;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO postgres;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_emailconfirmation (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id bigint NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO postgres;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO postgres;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


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
-- Name: cart_cart; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cart_cart (
    id bigint NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    checked_out boolean NOT NULL,
    user_id_id integer
);


ALTER TABLE public.cart_cart OWNER TO postgres;

--
-- Name: cart_cart_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cart_cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_cart_id_seq OWNER TO postgres;

--
-- Name: cart_cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cart_cart_id_seq OWNED BY public.cart_cart.id;


--
-- Name: cart_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cart_item (
    id bigint NOT NULL,
    quantity integer NOT NULL,
    unit_price numeric(18,2) NOT NULL,
    object_id integer NOT NULL,
    cart_id bigint NOT NULL,
    content_type_id integer NOT NULL,
    user_id_id integer,
    CONSTRAINT cart_item_object_id_check CHECK ((object_id >= 0)),
    CONSTRAINT cart_item_quantity_check CHECK ((quantity >= 0))
);


ALTER TABLE public.cart_item OWNER TO postgres;

--
-- Name: cart_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cart_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cart_item_id_seq OWNER TO postgres;

--
-- Name: cart_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cart_item_id_seq OWNED BY public.cart_item.id;


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
-- Name: django_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: postimage_photo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.postimage_photo (
    id bigint NOT NULL,
    image character varying(100),
    upload_date date NOT NULL,
    image1 character varying(100),
    image2 character varying(100),
    image3 character varying(100),
    description text,
    name character varying(255),
    tag text,
    price integer
);


ALTER TABLE public.postimage_photo OWNER TO postgres;

--
-- Name: postimage_photo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.postimage_photo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.postimage_photo_id_seq OWNER TO postgres;

--
-- Name: postimage_photo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.postimage_photo_id_seq OWNED BY public.postimage_photo.id;


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialaccount (
    id bigint NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO postgres;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialapp (
    id bigint NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO postgres;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id bigint NOT NULL,
    socialapp_id bigint NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO postgres;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id bigint NOT NULL,
    app_id bigint NOT NULL
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO postgres;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


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
-- Name: cart_cart id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_cart ALTER COLUMN id SET DEFAULT nextval('public.cart_cart_id_seq'::regclass);


--
-- Name: cart_item id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_item ALTER COLUMN id SET DEFAULT nextval('public.cart_item_id_seq'::regclass);


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
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: postimage_photo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.postimage_photo ALTER COLUMN id SET DEFAULT nextval('public.postimage_photo_id_seq'::regclass);


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
1	123123@gmail.com	f	t	4
2	zhan860127@gmail.com	f	f	4
3	fjfwrnnfpo_1626618228@tfbnw.net	f	t	5
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
1	admin
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	5
6	1	6
7	1	7
8	1	8
9	1	9
10	1	10
11	1	11
12	1	12
13	1	13
14	1	14
15	1	15
16	1	16
17	1	17
18	1	18
19	1	19
20	1	20
21	1	21
22	1	22
23	1	23
24	1	24
25	1	25
26	1	26
27	1	27
28	1	28
29	1	29
30	1	30
31	1	31
32	1	32
33	1	33
34	1	34
35	1	35
36	1	36
37	1	37
38	1	38
39	1	39
40	1	40
41	1	41
42	1	42
43	1	43
44	1	44
45	1	45
46	1	46
47	1	47
48	1	48
49	1	49
50	1	50
51	1	51
52	1	52
53	1	53
54	1	54
55	1	55
56	1	56
57	1	57
58	1	58
59	1	59
60	1	60
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
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
25	Can add photo	7	add_photo
26	Can change photo	7	change_photo
27	Can delete photo	7	delete_photo
28	Can view photo	7	view_photo
29	Can add site	8	add_site
30	Can change site	8	change_site
31	Can delete site	8	delete_site
32	Can view site	8	view_site
33	Can add email address	9	add_emailaddress
34	Can change email address	9	change_emailaddress
35	Can delete email address	9	delete_emailaddress
36	Can view email address	9	view_emailaddress
37	Can add email confirmation	10	add_emailconfirmation
38	Can change email confirmation	10	change_emailconfirmation
39	Can delete email confirmation	10	delete_emailconfirmation
40	Can view email confirmation	10	view_emailconfirmation
41	Can add social account	11	add_socialaccount
42	Can change social account	11	change_socialaccount
43	Can delete social account	11	delete_socialaccount
44	Can view social account	11	view_socialaccount
45	Can add social application	12	add_socialapp
46	Can change social application	12	change_socialapp
47	Can delete social application	12	delete_socialapp
48	Can view social application	12	view_socialapp
49	Can add social application token	13	add_socialtoken
50	Can change social application token	13	change_socialtoken
51	Can delete social application token	13	delete_socialtoken
52	Can view social application token	13	view_socialtoken
53	Can add cart	14	add_cart
54	Can change cart	14	change_cart
55	Can delete cart	14	delete_cart
56	Can view cart	14	view_cart
57	Can add item	15	add_item
58	Can change item	15	change_item
59	Can delete item	15	delete_item
60	Can view item	15	view_item
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$260000$53KALlHm7vacOaBeKK8t3i$Rc6+bnPHtllIlBYOf5gkOW9x/MaA3hPbOHBsDHTiQlw=	2021-08-24 10:41:50.492399+08	t	donlin2			zhan860127@gmail.com	t	t	2021-07-18 15:37:40+08
3	!s0SkgVl3gTq7qtvda2t8aTlMqiuqmyQyHyOa7H9e	2021-07-18 16:21:43.853531+08	f	user	東霖	詹		f	t	2021-07-18 16:21:43.792527+08
5	!6kLl3VixLpCNedwIeeSxTsw6pntg6K5kLdStC7cs	2021-07-20 15:54:10.467987+08	f	matthew	Matthew	Goldmanberg	fjfwrnnfpo_1626618228@tfbnw.net	f	t	2021-07-20 15:52:08.889445+08
1	pbkdf2_sha256$260000$goEVaQinru3SBDgQM1dYy1$R6B3GFHLunhhDGOcOOfPCj+3Pe4yzC486qR6iDnEDZ8=	2021-08-15 13:23:58.59191+08	t	donlin			123@gmail.com	t	t	2021-07-18 15:36:04+08
4	!XAyUupf27bb63VKTKIlqoviQ92mugwAFFwBAnu4N	2021-08-20 21:49:16.417006+08	f	tnyny	Donlin	Zhan	123123@gmail.com	f	t	2021-07-20 15:45:23.797+08
6	pbkdf2_sha256$260000$85Y0Ibxfvyzo4vrsEyCin6$5QmEoMRCPA4/xh2q5EpM8dvKN3+31WdB82TyqFuLo+M=	2021-08-21 16:00:30.095943+08	f	donlin2122			tony.zhan@kdanmobile.com	f	t	2021-08-21 15:58:35.253474+08
7	pbkdf2_sha256$260000$t9e6MYTNgWTNcJfcqO3QPf$pp/1l+iRNCAFP8hH1ZeH/RW8bO7UO3ojhDRjKEFsEA0=	2021-08-21 19:57:23.167258+08	f	donlin21221			H54051075@mail.ncku.edu.tw	f	t	2021-08-21 16:02:27.751498+08
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: cart_cart; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cart_cart (id, creation_date, checked_out, user_id_id) FROM stdin;
1	2021-07-22 23:13:54.921648+08	f	\N
2	2021-07-22 23:16:14.981339+08	f	\N
3	2021-07-24 01:08:15.200289+08	f	\N
4	2021-07-24 23:52:29.327601+08	f	\N
5	2021-07-25 00:53:06.635068+08	f	\N
6	2021-08-06 20:31:19.041536+08	f	\N
7	2021-08-08 00:45:49.86368+08	f	\N
8	2021-08-12 05:30:07.731507+08	f	\N
9	2021-08-15 04:42:31.564661+08	f	\N
10	2021-08-16 02:01:08.422164+08	f	\N
11	2021-08-16 17:49:56.494749+08	f	\N
12	2021-08-21 05:49:20.669109+08	f	\N
13	2021-08-21 06:03:38.442034+08	f	\N
14	2021-08-21 06:04:19.957801+08	f	\N
15	2021-08-21 06:04:47.648561+08	f	\N
16	2021-08-21 06:04:54.154501+08	f	\N
17	2021-08-21 06:05:42.827641+08	f	\N
18	2021-08-21 06:37:12.567354+08	f	\N
19	2021-08-22 03:40:37.245406+08	f	2
20	2021-08-22 03:57:05.750994+08	f	7
\.


--
-- Data for Name: cart_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cart_item (id, quantity, unit_price, object_id, cart_id, content_type_id, user_id_id) FROM stdin;
3	1	500.00	3	2	7	\N
5	1	550.00	1	2	7	\N
8	1	300.00	2	4	7	\N
9	1	500.00	3	5	7	\N
10	1	300.00	2	3	7	\N
7	1	500.00	3	3	7	\N
6	2	550.00	1	3	7	\N
11	3	300.00	2	6	7	\N
12	4	500.00	3	6	7	\N
13	2	550.00	1	6	7	\N
14	1	300.00	2	8	7	\N
15	3	500.00	3	8	7	\N
16	1	500.00	3	9	7	\N
17	1	300.00	2	9	7	\N
18	1	300.00	2	17	7	2
19	2	500.00	3	17	7	2
20	1	500.00	3	1	7	7
22	1	300.00	2	18	7	7
21	3	500.00	3	18	7	7
23	3	500.00	3	19	7	2
24	1	300.00	2	20	7	7
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-07-18 15:38:48.410224+08	1	donlin	2	[{"changed": {"fields": ["Superuser status"]}}]	4	2
2	2021-07-18 15:39:00.041787+08	1	donlin	2	[{"changed": {"fields": ["Staff status"]}}]	4	2
3	2021-07-18 16:15:09.325923+08	1	localhost:8000/	2	[{"changed": {"fields": ["Domain name", "Display name"]}}]	8	2
4	2021-07-18 16:17:09.752802+08	1	Google.Login	1	[{"added": {}}]	12	2
5	2021-07-18 17:10:23.120147+08	2	FB login	1	[{"added": {}}]	12	2
6	2021-07-18 17:37:32.901244+08	2	FB login	2	[]	12	2
7	2021-07-19 16:42:40.500956+08	2	FB login	2	[{"changed": {"fields": ["Client id", "Secret key"]}}]	12	2
8	2021-07-19 17:38:01.171774+08	2	FB login	2	[{"changed": {"fields": ["Client id", "Secret key"]}}]	12	2
9	2021-07-19 17:41:27.600983+08	2	FB login	2	[{"changed": {"fields": ["Client id", "Secret key"]}}]	12	2
10	2021-07-20 16:32:35.790185+08	1	Photo object (1)	1	[{"added": {}}]	7	2
11	2021-07-20 18:13:57.010447+08	1	Photo object (1)	2	[{"changed": {"fields": ["Image2", "Image3"]}}]	7	2
12	2021-07-20 18:24:07.028986+08	2	Photo object (2)	1	[{"added": {}}]	7	2
13	2021-07-20 18:24:46.11303+08	2	Photo object (2)	2	[{"changed": {"fields": ["Image2"]}}]	7	2
14	2021-07-20 18:38:39.164535+08	3	Photo object (3)	1	[{"added": {}}]	7	2
15	2021-07-22 16:02:52.998535+08	1	admin	1	[{"added": {}}]	3	2
16	2021-07-22 16:03:14.188527+08	1	donlin	2	[{"changed": {"fields": ["Groups"]}}]	4	2
17	2021-07-22 16:03:31.7691+08	2	donlin2	2	[]	4	2
18	2021-08-23 22:28:37.296486+08	4	Photo object (4)	1	[{"added": {}}]	7	2
19	2021-08-23 22:29:39.884623+08	4	Photo object (4)	2	[{"changed": {"fields": ["Image1", "Image2", "Image3"]}}]	7	2
20	2021-08-24 10:56:09.769997+08	4	Photo object (4)	3		7	2
21	2021-08-24 10:56:32.836487+08	5	Photo object (5)	1	[{"added": {}}]	7	2
22	2021-08-24 10:57:00.806655+08	5	Photo object (5)	3		7	2
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	postimage	photo
8	sites	site
9	account	emailaddress
10	account	emailconfirmation
11	socialaccount	socialaccount
12	socialaccount	socialapp
13	socialaccount	socialtoken
14	cart	cart
15	cart	item
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-07-18 15:29:27.033049+08
2	auth	0001_initial	2021-07-18 15:29:27.200616+08
3	admin	0001_initial	2021-07-18 15:29:27.254616+08
4	admin	0002_logentry_remove_auto_add	2021-07-18 15:29:27.270611+08
5	admin	0003_logentry_add_action_flag_choices	2021-07-18 15:29:27.290615+08
6	contenttypes	0002_remove_content_type_name	2021-07-18 15:29:27.334616+08
7	auth	0002_alter_permission_name_max_length	2021-07-18 15:29:27.353619+08
8	auth	0003_alter_user_email_max_length	2021-07-18 15:29:27.373616+08
9	auth	0004_alter_user_username_opts	2021-07-18 15:29:27.397617+08
10	auth	0005_alter_user_last_login_null	2021-07-18 15:29:27.421616+08
11	auth	0006_require_contenttypes_0002	2021-07-18 15:29:27.427615+08
12	auth	0007_alter_validators_add_error_messages	2021-07-18 15:29:27.450616+08
13	auth	0008_alter_user_username_max_length	2021-07-18 15:29:27.487616+08
14	auth	0009_alter_user_last_name_max_length	2021-07-18 15:29:27.509615+08
15	auth	0010_alter_group_name_max_length	2021-07-18 15:29:27.535619+08
16	auth	0011_update_proxy_permissions	2021-07-18 15:29:27.556616+08
17	auth	0012_alter_user_first_name_max_length	2021-07-18 15:29:27.581617+08
18	postimage	0001_initial	2021-07-18 15:29:27.600616+08
19	postimage	0002_alter_photo_image	2021-07-18 15:29:27.609617+08
20	postimage	0003_alter_photo_image	2021-07-18 15:29:27.618617+08
21	postimage	0004_alter_photo_image	2021-07-18 15:29:27.627614+08
22	postimage	0005_alter_photo_image	2021-07-18 15:29:27.638614+08
23	postimage	0006_alter_photo_image	2021-07-18 15:29:27.648615+08
24	postimage	0007_auto_20210718_1501	2021-07-18 15:29:27.670618+08
25	postimage	0008_auto_20210718_1516	2021-07-18 15:29:27.700617+08
26	sessions	0001_initial	2021-07-18 15:29:27.730626+08
27	postimage	0009_alter_photo_name	2021-07-18 15:44:42.60817+08
28	account	0001_initial	2021-07-18 15:52:39.464485+08
29	account	0002_email_max_length	2021-07-18 15:52:39.491449+08
30	sites	0001_initial	2021-07-18 15:52:39.508451+08
31	sites	0002_alter_domain_unique	2021-07-18 15:52:39.527447+08
32	socialaccount	0001_initial	2021-07-18 15:52:39.73145+08
33	socialaccount	0002_token_max_lengths	2021-07-18 15:52:39.787447+08
34	socialaccount	0003_extra_data_default_dict	2021-07-18 15:52:39.809445+08
35	account	0003_auto_20210718_1624	2021-07-18 16:25:03.867933+08
36	socialaccount	0004_auto_20210718_1624	2021-07-18 16:25:04.332045+08
37	postimage	0010_photo_price	2021-07-20 16:31:08.454537+08
38	postimage	0011_alter_photo_price	2021-07-20 16:31:08.467543+08
39	cart	0001_initial	2021-07-22 15:08:16.326856+08
40	cart	0002_auto_20210722_1519	2021-07-22 15:19:30.496193+08
41	cart	0003_item_user_id	2021-08-15 18:13:41.588366+08
42	cart	0004_cart_user_id	2021-08-21 15:56:29.769914+08
43	cart	0005_alter_cart_user_id	2021-08-21 16:26:06.484087+08
44	cart	0006_alter_cart_user_id	2021-08-21 16:29:51.829543+08
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
9s5hk7y55i6hk7f25bbgk9k8c4dpswio	.eJxVjUsLwjAQhP9LzlLyatJ684GgFxFEpJey2aakqImYVlDxv1tLLz0tszPfzIfA9Qpd68oa0JoQLqUPHi2Zk-KwK_KzWz9vxbYT4XRc0Y3Tb1m87su44nsyI-VAdtE-yqbqET39GcCL9X9jHEkAMXS-TYbMaMdk0Svr2wahbYJfjtSkykF0fY8FoUTOuewvp0arHJlUigmsUWWMaZNKKg0KZGmFFJQx1kie1ZTVTOcV-f4AsF5QSw:1mHPcp:BFsv5KLMQWOALs2-RcqWUUZJMk6aa2LcBfYc2BkD8XA	2021-09-04 19:57:23.17226+08
00vmk88h6dxdit7rp4j9vzyzh00vpe9a	.eJxVjb0KwjAUhd8ls5Q0pmniplAQJ9FFXcrNTdIGJUGTIlR8d6t0cTw_3zkvArcbDLlvHaDVMV7bEANasiL3tKPwqMbntjJdF_cinseLPI3H5JuDzg1ZkPZHDsk-Wm8mhP17GvBqwzeYTwpAjEPIxa8zx6lYT8qG7BGyj2EzU39TPaR-2nGGKS5YaasliIpTLRwHapRkQjqkSGtWlhprxmspZGmdcgaN0jXlWgEAeX8Acf1Rrw:1mIMNq:_p3QJrR94htJmF1dpDZZQbhgKpdEfu0yToTbsQ9gCqw	2021-09-07 10:41:50.498397+08
3j108hnj7p048bfr73y329oyx0v7xf6j	eyJDQVJULUlEIjo1fQ:1m7DP8:cdx0ediCH3lV6hQrSBNvInphxR-9Z1-d8_gizoPWj08	2021-08-07 16:53:06.861069+08
dvroqvr3vwx6xsyuc0uky7liqoqsknxu	eyJDQVJULUlEIjozLCJhbGxhdXRoX2ZhY2Vib29rX25vbmNlIjoiYWhtUkN6QnFwcTVBRlBzM0F2NnNuVnBwbkxJZERrVlQifQ:1m7FY8:CBFuRWuuTwF9t77rSE-vvRLEmgeiUm3qK0lFc3Wdpts	2021-08-07 19:10:32.811822+08
kud2xkrbdpec880rgyk6gigyqc34zpmf	eyJDQVJULUlEIjo2fQ:1mBrVv:enzCYrBI9jTS3-rfAZ0em04teGld9_2LeM05wKJ5o-U	2021-08-20 12:31:19.196534+08
1fyngnbsoowf76etfr1svmdw30izd6ep	eyJDQVJULUlEIjo4fQ:1mDoJ5:Uadh13KSeEJMhg0Ee1-39z0sNvdeLosAexNPlMkW0OE	2021-08-25 21:30:07.925483+08
cyok73tqocx7uzme25kpvmfwpytfvdhs	eyJhbGxhdXRoX2ZhY2Vib29rX25vbmNlIjoiV2sxbWJMNkVlSFN5QkhRZms3ZGRJUk9SMjNDTlc1czIifQ:1m55WR:HTUelr80hdFEyMAB3FpWLs8Xf026aCHCafJ1UU-x5Zw	2021-08-01 20:03:51.005859+08
fjwpfm29krqsedfz35b9m5sdc9n4xcdt	eyJhbGxhdXRoX2ZhY2Vib29rX25vbmNlIjoiZm1naGI4WURIRFM5WkxvdUxMNGt2STl3VjhGbHhIMXcifQ:1m55dU:ZLl3sL-CtZQ-uxdCiup_Q2gy_wq0vmhO_HsQRZMqMS8	2021-08-01 20:11:08.624109+08
7i171kqrs1477cqw0che4m4kpcy6zh18	.eJxVjUsLgkAUhf_LrEN8zDRju4KCaGFFEK3kzp1rijIjjRYU_fdM3Lg8j--cD4Omgb4r8wKQtHN1bp1FYiu2O9aXN2XX13Z_fgpf-1PW3g6vNDGYSXFv2YLlI9l7euSVGRA-9zRgTfYfTCcBILredsHYmWIfrAdFtqsQusrZzUTNpkrw5bCjII0MYZoSFxgRQihCMsgTKOJQaElqqXShgMdahZFWseGQJNLEoGkppGTfH1rDUdY:1m5kVu:Ak1j-2werXMB7noHwCf1iZvMZWqAqnPxMEJmxWob3Nc	2021-08-03 15:50:02.657561+08
dok97m5u486j2ofs1vm8lgwk4iwj7p2w	.eJyNVNty4jgQ_ZVdPyeULXzlaYRNYEJCQhJy0daWS5ZlbHyRkGwTMpV_XxlMdtma2tk3q0_rnD7dbf3QcFHgpk7DBBMaMZaHFasI1UaahMuWW-_VDZ42lMkqtfPSf4P1B4y-38p8o11okpEMF5gQ1lR1eDwVbJ1V2uiH1oe7zyzWRlVTFBdaI6kI_z5ywdospkLJnfQVbdMlaLbuWkPTsS3TBUPHtRRQYFmHvcCRIMY1DTcsq-gXJ32vBQ4VgE_SP6OiJc4KBX2kuHJt3QDOt3UXGhBWKrjCZdeDgFVFVv2GVJIKJplQ-mfQqag-eEj8_Dz6PHfOsZQ7JrpyfgcfZfM4k83922KB1vS9mHvT-XLHZ-TuEV0V8vtmU85W_v6nljMZyoZTcZRIcCHpUa-v4f8X-ssudFI1TpIvGRXApM5aRVGLhv6r_xrQgXGpO5dAf9KdkTkcAXPgWQ7SVEcUUU27lqiZEyqlSj_aUhBhvK_8sIocC1x2Cd29Q4khjmOhLlEV_eM_9ukXfloqsiTrSu39cJGVWOyPbj7_vNBqltPqfHCY84MCuDit9D8E-3xtAiFvh_B1u3xlYwjvlgi-yCaYzufPyPd2PDdw46yLJeQPt1sECxrcxm1qr_YpeOKp-XAfPEfcnwctx_bTVCI4z0ULLWfBnx7ne-SvwfWddXMzDJDPwHNLnncvpLwq52hs7ttEh0Le18iHUfng2-Pp2zQgi9TbGrvJwma363aCc3rNkN-AcgLzcmkb18sX78qPN68wWKFxsjQKp5D3eYIggtvJ43C1-ljfpOMaztarN323jWbCwmOCAq03HUpKBK2PY6PvPFPzCXH9tQXepeGetmA4MC0THX6M8DDhr7FpQDuLRZgo7g7o36VB3_PBIaeH5QCqE63qjOA6Y9W4v3VGlWKZdu9KDDzTBga1hlg9AHpkJybWY88FtpsQnegOMIyIOMB0XNs1aOIlMYm9yNHNyMMYd6Rq76SSCQ821bbon38BoZm4xA:1m5kPr:FG13XdqP17149CR4PG6yGmLiRy_BwdisdurMbAgmhO8	2021-08-03 15:43:47.424696+08
v3yvg1nb77f16iubvhuw5dhig65q3qin	.eJxVjD0PgjAURf9LZyXts_SDDXVxNe7k9bUNBFISKZPxv1sMg4733HvPi3W45r5bl_DsBs8aBuzwyxzSGNJW4DRtuEKieU25-m72eqnakkLKA2Ee5nTeX3-qHpe-eKIHKxWIUJ9Q1ZI7FSVybw0oE4kT1yCEIw1SG2VEiDZ68tZpLp1FxCK9tPfH8XZlDbw_iRc_CQ:1m6SwJ:mO40TKkX_G23kZ70VZ5l_CCskXoQbqMWl1p08Hhljfg	2021-08-05 15:16:15.064341+08
mfer4zlm6u082r3v0q9q5v5mz3iasjk9	eyJDQVJULUlEIjo0fQ:1m7CST:sOjgnbQ5cw2uRVIJ4fkvXiYLxwYXFFbVz2iR-lyUT4E	2021-08-07 15:52:29.478599+08
xpdjicghayep8c455b7k0y63ygwfuk4r	eyJhbGxhdXRoX2ZhY2Vib29rX25vbmNlIjoiWjRVTnZad2hCT1FQTW5nV0FiemgwZmdleEZkOWJ2VEgifQ:1m7Y6K:P6hwhydTpi1JkFlnhxbyvmoht3A7zz-dR-vVU71tPsw	2021-08-08 14:59:04.350412+08
m92gxnm6yhxzfjv0t57w0s29rp6fh4uy	eyJDQVJULUlEIjo3fQ:1mCHxm:FSC_Abp7LdBPXCqtfoOgoqlD9dsGHY5v-dkXj1F9w1k	2021-08-21 16:45:50.038655+08
tsa52go1in5oayxotbyo6jnry7xngcpd	eyJDQVJULUlEIjo5fQ:1mEszf:UbdVR_rOVUDnnWJ87WyGLlMz5ubdlKwgtvRt9iRrjJ0	2021-08-28 20:42:31.752661+08
8fjn2wi9j47l7k5f1h7gu5mmj69zybdv	.eJxVjVELgjAUhf_Lnku2tabrTSuoIAnpoTe5u9tSkg1SCYr-eya--Hjuud93PgSaBvquKh2g1SE8Sh88WrIhe9Vkt4s_QP68u5O9C_0-F71P8-YVpKSOLEg5kn1rn2VtBoTPbxrwYf2_mEYiQAy976LxZ6rbKB2S9V2N0NXBZxM1U1XQVoPHGa6E5MyuVyDXgmrpBFCjEi4ThxRpzBnTGHMRJzJh1iln0CgdU6EVAAzSbVpcl8cd2TD2_QFAWFQg:1mFRlE:pVTAJgZqHdp6K05YLmLZEFPzti1ktoyphM-t8F1R5X0	2021-08-30 09:49:56.525747+08
b7hfpjnjpxl7mdnknlq36s8mzrqj6ffi	.eJxVjcFqwzAQRP9F58ZIiixLvjkNSdNSCHUgR7NaSbVxKkFlt4XSf69jfPFxdva9-SVwu8E4tI0HdCbGvgkxoCMleU7vx5f668lyONm6f8WUDmdO26vIfz6-z3vyQJqZHJP7bDo7IXx9M4C9C_diGckAMY5hyOafpU5ZNSUXhg5h6GLYLdRK1UJqJ4-3XAvJmcu3IHNBjfQCqNWKS-WRIi04YwYLLgolFXNee4tWm4IKowFgkj5Wb5fNaU9Kpv7-ARd3U_M:1mH5dw:2Iyzx7seIcyBdUoggii9a0M8QBaXPSNYFKTQk2GzLTw	2021-09-03 22:37:12.594351+08
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_site (id, domain, name) FROM stdin;
1	localhost:8000/	localhost:8000
\.


--
-- Data for Name: postimage_photo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.postimage_photo (id, image, upload_date, image1, image2, image3, description, name, tag, price) FROM stdin;
1	image/prodct1-1_HIhY753.jpg	2021-07-20	image/prodct1-2_hzdFaWb.jpg	image/215200153_2870093943242007_4722947747260211571_n.jpg	image/217400862_2870094206575314_1923812227589297473_n.jpg	可送歐根紗泡泡袖內裡 但皮膚敏感的美女不建議這件內搭，因為內裡比較扎	絲絨滑布吊帶荷葉仙女洋裝	#洋裝,絲絨,	550
2	image/213710309_2869420363309365_6784989730662962711_n.jpg	2021-07-20	image/214275358_2869420403309361_7617441610321464041_n.jpg	image/217397184_2869420443309357_429151138259485433_n.jpg	image/217374540_2869420316642703_2766633785339882424_n.jpg	只有一件出清	牛仔💗 泡泡袖一字領洋裝	#牛仔\r\n#一字領\r\n#洋裝	300
3	image/186548092_2829738230610912_692840672290894451_n.jpg	2021-07-20	image/186511889_2829738360610899_8099144593744183713_n.jpg	image/185302456_2829738270610908_2395750150675351802_n.jpg	image/148600881_2829738393944229_1444700444177437845_n.jpg	品牌♡削肩造型連身褲 材質很好 \r\n後面是鏤空露背的，很有設計感😺	品牌♡削肩造型連身褲	#連身褲	500
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
1	google	103614801312623054885	2021-07-18 16:21:43.821529+08	2021-07-18 16:21:43.821529+08	{"id": "103614801312623054885", "name": "\\u8a79\\u6771\\u9716", "given_name": "\\u6771\\u9716", "family_name": "\\u8a79", "picture": "https://lh3.googleusercontent.com/a/AATXAJyjn7QPyBiQMemkv_g6n-89kKjP1JQfZ1BIN61x=s96-c", "locale": "zh-TW"}	3
3	facebook	103940108645048	2021-07-20 15:54:10.445353+08	2021-07-20 15:52:08.920465+08	{"id": "103940108645048", "email": "fjfwrnnfpo_1626618228@tfbnw.net", "name": "Matthew Algjhgaggbhfd Goldmanberg", "first_name": "Matthew", "last_name": "Goldmanberg"}	5
2	facebook	6085347654823785	2021-08-20 21:49:16.364006+08	2021-07-20 15:45:58.136338+08	{"id": "6085347654823785", "email": "zhan860127@gmail.com", "name": "Donlin Zhan", "first_name": "Donlin", "last_name": "Zhan"}	4
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
1	google	Google.Login	1049661803514-a7cqaam8abdt4vucea0psqqtqolm3lf8.apps.googleusercontent.com	-lo0DA7JUIoLAG-6kZwG2ZvT	
2	facebook	FB login	2937740549833082	f4f1fe46a737ced12fcc332fae9c9831	
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
1	1	1
2	2	1
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
1	ya29.a0ARrdaM-0L8-5n9ImgpsrhUlMFPqRfoMSlelGkh_Rk8oJh32F1wAOC_uXgRtNkOWVopOazlNMR_ZnqFbrQ9gJHLwjxTmXsAM2iJL7KCTc0QnjMoeZiGweAzpHrXOKHHTGdiy7l8Lvaw3QTkNBG14EMBn6zlHI		2021-07-18 17:21:42.627531+08	1	1
3	EAApv3AXqQXoBABb19rT7K24ULDquzRbGhb0sB9bxaXI0gL17yiGkSx1a0zit3pszawg1lS7mG9tD9XfPmWJftyuIW4Ukbk2g8oI1rkBZCFQHEZAKiQnEQhVK2QSWDay4j8bZCIV1R462QY0MWuxHOxBl8sI2jz2zW7PUYXqSKPU9ebx4k7cSKpafUzVzIFAu9GHOvza6Rkqh6hsIpmkayIbOIpvJU8ZD		2021-09-18 15:52:07.977817+08	3	2
2	EAApv3AXqQXoBAJ15N5gp8ZBAnnLTlgpnq3B4TrEGfUn0zZCqf4OXbcKisgvcBFUboaInhD19HHYg2zJ3bMRaFHoN3bVnFcs5NExqgrB1ZCPgejDM8syw5l0EUVZATNhj2ZCbZCDiTfu4zU9c9e2mw0nvMetDZA8TGmUVSZAXbTOBpQmKJrEDzfeZCUlRnXRDQZAUBPKoyCkqPiIlfpECZBXZA2J1KDSqHyF7c1sZD		2021-10-19 21:46:31.83854+08	2	2
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 3, true);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 60, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 7, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: cart_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_cart_id_seq', 20, true);


--
-- Name: cart_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_item_id_seq', 24, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 22, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 44, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: postimage_photo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.postimage_photo_id_seq', 5, true);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 3, true);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 2, true);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 2, true);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 3, true);


--
-- Name: account_emailaddress account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


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
-- Name: cart_cart cart_cart_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_cart
    ADD CONSTRAINT cart_cart_pkey PRIMARY KEY (id);


--
-- Name: cart_item cart_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_item
    ADD CONSTRAINT cart_item_pkey PRIMARY KEY (id);


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
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: postimage_photo postimage_photo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.postimage_photo
    ADD CONSTRAINT postimage_photo_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


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
-- Name: cart_cart_user_id_id_13cd7a13; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cart_cart_user_id_id_13cd7a13 ON public.cart_cart USING btree (user_id_id);


--
-- Name: cart_item_cart_id_157ecf5f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cart_item_cart_id_157ecf5f ON public.cart_item USING btree (cart_id);


--
-- Name: cart_item_content_type_id_5737916f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cart_item_content_type_id_5737916f ON public.cart_item USING btree (content_type_id);


--
-- Name: cart_item_user_id_id_08d4ca94; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cart_item_user_id_id_08d4ca94 ON public.cart_item USING btree (user_id_id);


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
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirmation_email_address_id_5b7f8c58_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_email_address_id_5b7f8c58_fk FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: cart_cart cart_cart_user_id_id_13cd7a13_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_cart
    ADD CONSTRAINT cart_cart_user_id_id_13cd7a13_fk_auth_user_id FOREIGN KEY (user_id_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cart_item cart_item_cart_id_157ecf5f_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_item
    ADD CONSTRAINT cart_item_cart_id_157ecf5f_fk FOREIGN KEY (cart_id) REFERENCES public.cart_cart(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cart_item cart_item_content_type_id_5737916f_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_item
    ADD CONSTRAINT cart_item_content_type_id_5737916f_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cart_item cart_item_user_id_id_08d4ca94_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cart_item
    ADD CONSTRAINT cart_item_user_id_id_08d4ca94_fk_auth_user_id FOREIGN KEY (user_id_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_account_id_951f210e_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_account_id_951f210e_fk FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_636a42d7_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_636a42d7_fk FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

