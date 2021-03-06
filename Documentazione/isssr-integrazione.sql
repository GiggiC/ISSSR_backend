PGDMP     &    /    	            v           ticketingsystem5    10.3    10.3 �    e           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            f           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            g           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            h           1262    94293    ticketingsystem5    DATABASE     �   CREATE DATABASE ticketingsystem5 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Italian_Italy.1252' LC_CTYPE = 'Italian_Italy.1252';
     DROP DATABASE ticketingsystem5;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            i           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            j           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    94306 	   acl_class    TABLE     e   CREATE TABLE public.acl_class (
    id bigint NOT NULL,
    class character varying(100) NOT NULL
);
    DROP TABLE public.acl_class;
       public         postgres    false    3            �            1259    94304    acl_class_id_seq    SEQUENCE     y   CREATE SEQUENCE public.acl_class_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.acl_class_id_seq;
       public       postgres    false    199    3            k           0    0    acl_class_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.acl_class_id_seq OWNED BY public.acl_class.id;
            public       postgres    false    198            �            1259    94341 	   acl_entry    TABLE       CREATE TABLE public.acl_entry (
    id bigint NOT NULL,
    acl_object_identity bigint NOT NULL,
    ace_order integer NOT NULL,
    sid bigint NOT NULL,
    mask integer NOT NULL,
    granting boolean NOT NULL,
    audit_success boolean NOT NULL,
    audit_failure boolean NOT NULL
);
    DROP TABLE public.acl_entry;
       public         postgres    false    3            �            1259    94339    acl_entry_id_seq    SEQUENCE     y   CREATE SEQUENCE public.acl_entry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.acl_entry_id_seq;
       public       postgres    false    203    3            l           0    0    acl_entry_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.acl_entry_id_seq OWNED BY public.acl_entry.id;
            public       postgres    false    202            �            1259    94316    acl_object_identity    TABLE     �   CREATE TABLE public.acl_object_identity (
    id bigint NOT NULL,
    object_id_class bigint NOT NULL,
    object_id_identity bigint NOT NULL,
    parent_object bigint,
    owner_sid bigint,
    entries_inheriting boolean NOT NULL
);
 '   DROP TABLE public.acl_object_identity;
       public         postgres    false    3            �            1259    94314    acl_object_identity_id_seq    SEQUENCE     �   CREATE SEQUENCE public.acl_object_identity_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.acl_object_identity_id_seq;
       public       postgres    false    3    201            m           0    0    acl_object_identity_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.acl_object_identity_id_seq OWNED BY public.acl_object_identity.id;
            public       postgres    false    200            �            1259    94361 
   acl_record    TABLE     �   CREATE TABLE public.acl_record (
    record_id bigint NOT NULL,
    is_successful boolean,
    permission_mask integer,
    sid character varying(255),
    "timestamp" timestamp without time zone,
    type character varying(255),
    type_id bigint
);
    DROP TABLE public.acl_record;
       public         postgres    false    3            �            1259    94359    acl_record_record_id_seq    SEQUENCE     �   CREATE SEQUENCE public.acl_record_record_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.acl_record_record_id_seq;
       public       postgres    false    205    3            n           0    0    acl_record_record_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.acl_record_record_id_seq OWNED BY public.acl_record.record_id;
            public       postgres    false    204            �            1259    94296    acl_sid    TABLE     �   CREATE TABLE public.acl_sid (
    id bigint NOT NULL,
    principal integer NOT NULL,
    sid character varying(100) NOT NULL
);
    DROP TABLE public.acl_sid;
       public         postgres    false    3            �            1259    94294    acl_sid_id_seq    SEQUENCE     w   CREATE SEQUENCE public.acl_sid_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.acl_sid_id_seq;
       public       postgres    false    197    3            o           0    0    acl_sid_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.acl_sid_id_seq OWNED BY public.acl_sid.id;
            public       postgres    false    196            �            1259    94372    company    TABLE     �   CREATE TABLE public.company (
    id bigint NOT NULL,
    deleted boolean NOT NULL,
    domain character varying(255),
    name character varying(255)
);
    DROP TABLE public.company;
       public         postgres    false    3            �            1259    94370    company_id_seq    SEQUENCE     w   CREATE SEQUENCE public.company_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.company_id_seq;
       public       postgres    false    3    207            p           0    0    company_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.company_id_seq OWNED BY public.company.id;
            public       postgres    false    206            �            1259    94383    db_connection_info    TABLE     �   CREATE TABLE public.db_connection_info (
    db_connection_info_id bigint NOT NULL,
    driver character varying(255),
    password character varying(255),
    url character varying(255),
    username character varying(255)
);
 &   DROP TABLE public.db_connection_info;
       public         postgres    false    3            �            1259    94381 ,   db_connection_info_db_connection_info_id_seq    SEQUENCE     �   CREATE SEQUENCE public.db_connection_info_db_connection_info_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE public.db_connection_info_db_connection_info_id_seq;
       public       postgres    false    209    3            q           0    0 ,   db_connection_info_db_connection_info_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE public.db_connection_info_db_connection_info_id_seq OWNED BY public.db_connection_info.db_connection_info_id;
            public       postgres    false    208            �            1259    94392    db_scheduled_count_query    TABLE       CREATE TABLE public.db_scheduled_count_query (
    id bigint NOT NULL,
    active boolean NOT NULL,
    author character varying(255),
    deleted boolean NOT NULL,
    description character varying(255),
    is_enable boolean NOT NULL,
    query_priority integer,
    cron character varying(255),
    job_key bytea,
    comparison_operator integer,
    last_value numeric(19,2),
    query_text character varying(255),
    query_type integer,
    reference_value numeric(19,2),
    db_connection_info_db_connection_info_id bigint
);
 ,   DROP TABLE public.db_scheduled_count_query;
       public         postgres    false    3            �            1259    94400    dependent_tickets    TABLE     s   CREATE TABLE public.dependent_tickets (
    ticket_id bigint NOT NULL,
    dependent_tickets_id bigint NOT NULL
);
 %   DROP TABLE public.dependent_tickets;
       public         postgres    false    3            �            1259    94407 
   escalation    TABLE     �   CREATE TABLE public.escalation (
    escalation_id bigint NOT NULL,
    customer_priority double precision,
    team_priority double precision,
    "time" double precision
);
    DROP TABLE public.escalation;
       public         postgres    false    3            �            1259    94405    escalation_escalation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.escalation_escalation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.escalation_escalation_id_seq;
       public       postgres    false    213    3            r           0    0    escalation_escalation_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.escalation_escalation_id_seq OWNED BY public.escalation.escalation_id;
            public       postgres    false    212            �            1259    94413 	   gantt_day    TABLE     �   CREATE TABLE public.gantt_day (
    day character varying(255) NOT NULL,
    availability double precision,
    team_name bigint NOT NULL
);
    DROP TABLE public.gantt_day;
       public         postgres    false    3            �            1259    94420 	   group_acl    TABLE     �   CREATE TABLE public.group_acl (
    group_id bigint NOT NULL,
    deleted boolean NOT NULL,
    group_name character varying(255)
);
    DROP TABLE public.group_acl;
       public         postgres    false    3            �            1259    94426    group_acl_granted_authorities    TABLE     �   CREATE TABLE public.group_acl_granted_authorities (
    group_group_id bigint NOT NULL,
    granted_authorities_id bigint NOT NULL
);
 1   DROP TABLE public.group_acl_granted_authorities;
       public         postgres    false    3            �            1259    94418    group_acl_group_id_seq    SEQUENCE        CREATE SEQUENCE public.group_acl_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.group_acl_group_id_seq;
       public       postgres    false    3    216            s           0    0    group_acl_group_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.group_acl_group_id_seq OWNED BY public.group_acl.group_id;
            public       postgres    false    215            �            1259    94601    hibernate_sequence    SEQUENCE     {   CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public       postgres    false    3            �            1259    94429    hibernate_sequences    TABLE     t   CREATE TABLE public.hibernate_sequences (
    sequence_name character varying(255) NOT NULL,
    next_val bigint
);
 '   DROP TABLE public.hibernate_sequences;
       public         postgres    false    3            �            1259    94436    mail    TABLE     �   CREATE TABLE public.mail (
    id bigint NOT NULL,
    deleted boolean NOT NULL,
    description character varying(255),
    subject character varying(255),
    type character varying(255)
);
    DROP TABLE public.mail;
       public         postgres    false    3            �            1259    94434    mail_id_seq    SEQUENCE     t   CREATE SEQUENCE public.mail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.mail_id_seq;
       public       postgres    false    3    220            t           0    0    mail_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.mail_id_seq OWNED BY public.mail.id;
            public       postgres    false    219            �            1259    94445    payload    TABLE     �   CREATE TABLE public.payload (
    id integer NOT NULL,
    class_type text,
    json text,
    object_id character varying(255),
    type text,
    record_id integer
);
    DROP TABLE public.payload;
       public         postgres    false    3            �            1259    94453    record    TABLE     �   CREATE TABLE public.record (
    id integer NOT NULL,
    author character varying(255),
    operation_name character varying(255),
    tag character varying(255),
    "timestamp" timestamp without time zone
);
    DROP TABLE public.record;
       public         postgres    false    3            �            1259    94461    regression_tickets_generator    TABLE     �   CREATE TABLE public.regression_tickets_generator (
    ticket_id bigint NOT NULL,
    regression_tickets_generator_id bigint NOT NULL
);
 0   DROP TABLE public.regression_tickets_generator;
       public         postgres    false    3            �            1259    94466    relation    TABLE     _   CREATE TABLE public.relation (
    name character varying(255) NOT NULL,
    cyclic boolean
);
    DROP TABLE public.relation;
       public         postgres    false    3            �            1259    94473    relation_instance    TABLE     �   CREATE TABLE public.relation_instance (
    relation_id bigint NOT NULL,
    father_ticket_id bigint,
    relation_name character varying(255),
    son_ticket_id bigint
);
 %   DROP TABLE public.relation_instance;
       public         postgres    false    3            �            1259    94471 !   relation_instance_relation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.relation_instance_relation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.relation_instance_relation_id_seq;
       public       postgres    false    226    3            u           0    0 !   relation_instance_relation_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.relation_instance_relation_id_seq OWNED BY public.relation_instance.relation_id;
            public       postgres    false    225            �            1259    94481    requests_logs    TABLE     �  CREATE TABLE public.requests_logs (
    request_id bigint NOT NULL,
    client_ip character varying(255),
    http_method character varying(255),
    java_method character varying(255),
    request_body character varying(255),
    request_timestamp timestamp without time zone,
    response_body character varying(255),
    ticket_status integer NOT NULL,
    uri character varying(255)
);
 !   DROP TABLE public.requests_logs;
       public         postgres    false    3            �            1259    94479    requests_logs_request_id_seq    SEQUENCE     �   CREATE SEQUENCE public.requests_logs_request_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.requests_logs_request_id_seq;
       public       postgres    false    3    228            v           0    0    requests_logs_request_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.requests_logs_request_id_seq OWNED BY public.requests_logs.request_id;
            public       postgres    false    227            �            1259    94492    setup    TABLE     p   CREATE TABLE public.setup (
    id bigint NOT NULL,
    deleted boolean NOT NULL,
    setup boolean NOT NULL
);
    DROP TABLE public.setup;
       public         postgres    false    3            �            1259    94490    setup_id_seq    SEQUENCE     u   CREATE SEQUENCE public.setup_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.setup_id_seq;
       public       postgres    false    3    230            w           0    0    setup_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.setup_id_seq OWNED BY public.setup.id;
            public       postgres    false    229            �            1259    94498    state_machine    TABLE     w   CREATE TABLE public.state_machine (
    id bigint NOT NULL,
    base64diagram text,
    name character varying(255)
);
 !   DROP TABLE public.state_machine;
       public         postgres    false    3            �            1259    94508    target    TABLE     B  CREATE TABLE public.target (
    id bigint NOT NULL,
    deleted boolean NOT NULL,
    description character varying(255),
    name character varying(255),
    state_machine_name character varying(255),
    target_state character varying(255),
    target_type character varying(255),
    version character varying(255)
);
    DROP TABLE public.target;
       public         postgres    false    3            �            1259    94517    target_categories    TABLE     p   CREATE TABLE public.target_categories (
    target_id bigint NOT NULL,
    categories character varying(255)
);
 %   DROP TABLE public.target_categories;
       public         postgres    false    3            �            1259    94506    target_id_seq    SEQUENCE     v   CREATE SEQUENCE public.target_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.target_id_seq;
       public       postgres    false    233    3            x           0    0    target_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.target_id_seq OWNED BY public.target.id;
            public       postgres    false    232            �            1259    94522    team    TABLE     �   CREATE TABLE public.team (
    id bigint NOT NULL,
    deleted boolean NOT NULL,
    name character varying(255),
    problem_area character varying(255),
    team_coordinator_id bigint,
    team_leader_id bigint
);
    DROP TABLE public.team;
       public         postgres    false    3            �            1259    94520    team_id_seq    SEQUENCE     t   CREATE SEQUENCE public.team_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.team_id_seq;
       public       postgres    false    236    3            y           0    0    team_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.team_id_seq OWNED BY public.team.id;
            public       postgres    false    235            �            1259    94533    ticket    TABLE       CREATE TABLE public.ticket (
    id bigint NOT NULL,
    deleted boolean NOT NULL,
    ttl integer NOT NULL,
    actual_priority character varying(255),
    actual_type character varying(255),
    attachments character varying(255),
    category integer,
    count_dependencies integer,
    creation_timestamp timestamp without time zone,
    current_ticket_status character varying(255),
    customer_priority integer,
    customer_state boolean NOT NULL,
    date_end character varying(255),
    date_execution_start character varying(255),
    date_pending_start character varying(255),
    description text,
    difficulty integer,
    duration_estimation integer,
    rank double precision,
    source integer,
    state_counter bigint NOT NULL,
    state_information bytea,
    state_machine oid,
    team_comment character varying(255),
    team_priority integer,
    title character varying(255),
    visibility integer,
    assignee_id bigint,
    customer_id bigint,
    same_ticket bigint,
    target_id bigint,
    team_name bigint
);
    DROP TABLE public.ticket;
       public         postgres    false    3            �            1259    94547    ticket_comment    TABLE     �   CREATE TABLE public.ticket_comment (
    id bigint NOT NULL,
    deleted boolean NOT NULL,
    description character varying(255),
    "timestamp" character varying(255),
    visibility integer,
    event_generator_id bigint,
    ticket_id bigint
);
 "   DROP TABLE public.ticket_comment;
       public         postgres    false    3            �            1259    94545    ticket_comment_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.ticket_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.ticket_comment_id_seq;
       public       postgres    false    241    3            z           0    0    ticket_comment_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.ticket_comment_id_seq OWNED BY public.ticket_comment.id;
            public       postgres    false    240            �            1259    94558    ticket_event    TABLE     �   CREATE TABLE public.ticket_event (
    id bigint NOT NULL,
    deleted boolean NOT NULL,
    description character varying(255),
    "timestamp" timestamp without time zone,
    ticket_id bigint
);
     DROP TABLE public.ticket_event;
       public         postgres    false    3            �            1259    94556    ticket_event_id_seq    SEQUENCE     |   CREATE SEQUENCE public.ticket_event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ticket_event_id_seq;
       public       postgres    false    3    243            {           0    0    ticket_event_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.ticket_event_id_seq OWNED BY public.ticket_event.id;
            public       postgres    false    242            �            1259    94531    ticket_id_seq    SEQUENCE     v   CREATE SEQUENCE public.ticket_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.ticket_id_seq;
       public       postgres    false    3    238            |           0    0    ticket_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.ticket_id_seq OWNED BY public.ticket.id;
            public       postgres    false    237            �            1259    94566    ticket_relation    TABLE     �   CREATE TABLE public.ticket_relation (
    id bigint NOT NULL,
    deleted boolean NOT NULL,
    ticket_id bigint,
    to_ticket_id bigint,
    type_id bigint
);
 #   DROP TABLE public.ticket_relation;
       public         postgres    false    3            �            1259    94564    ticket_relation_id_seq    SEQUENCE        CREATE SEQUENCE public.ticket_relation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.ticket_relation_id_seq;
       public       postgres    false    3    245            }           0    0    ticket_relation_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.ticket_relation_id_seq OWNED BY public.ticket_relation.id;
            public       postgres    false    244            �            1259    94574    ticket_relation_type    TABLE     �   CREATE TABLE public.ticket_relation_type (
    id bigint NOT NULL,
    deleted boolean NOT NULL,
    name character varying(255)
);
 (   DROP TABLE public.ticket_relation_type;
       public         postgres    false    3            �            1259    94572    ticket_relation_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ticket_relation_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.ticket_relation_type_id_seq;
       public       postgres    false    3    247            ~           0    0    ticket_relation_type_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.ticket_relation_type_id_seq OWNED BY public.ticket_relation_type.id;
            public       postgres    false    246            �            1259    94542    ticket_tags    TABLE     d   CREATE TABLE public.ticket_tags (
    ticket_id bigint NOT NULL,
    tags character varying(255)
);
    DROP TABLE public.ticket_tags;
       public         postgres    false    3            �            1259    94580    tickets_per_day    TABLE     �   CREATE TABLE public.tickets_per_day (
    gantt_day_day character varying(255) NOT NULL,
    gantt_day_team_name bigint NOT NULL,
    tickets_id bigint NOT NULL
);
 #   DROP TABLE public.tickets_per_day;
       public         postgres    false    3            �            1259    94585    user_type_membership    TABLE     �   CREATE TABLE public.user_type_membership (
    membership_group_id bigint NOT NULL,
    user_type_user_type_id bigint NOT NULL
);
 (   DROP TABLE public.user_type_membership;
       public         postgres    false    3            �            1259    94590    users    TABLE     J  CREATE TABLE public.users (
    id bigint NOT NULL,
    deleted boolean NOT NULL,
    email character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    password character varying(255),
    role integer,
    username character varying(255),
    company_id bigint,
    team_id bigint
);
    DROP TABLE public.users;
       public         postgres    false    3            �            1259    94588    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       postgres    false    3    251                       0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
            public       postgres    false    250            /           2604    94309    acl_class id    DEFAULT     l   ALTER TABLE ONLY public.acl_class ALTER COLUMN id SET DEFAULT nextval('public.acl_class_id_seq'::regclass);
 ;   ALTER TABLE public.acl_class ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            1           2604    94344    acl_entry id    DEFAULT     l   ALTER TABLE ONLY public.acl_entry ALTER COLUMN id SET DEFAULT nextval('public.acl_entry_id_seq'::regclass);
 ;   ALTER TABLE public.acl_entry ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203            0           2604    94319    acl_object_identity id    DEFAULT     �   ALTER TABLE ONLY public.acl_object_identity ALTER COLUMN id SET DEFAULT nextval('public.acl_object_identity_id_seq'::regclass);
 E   ALTER TABLE public.acl_object_identity ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200    201            2           2604    94364    acl_record record_id    DEFAULT     |   ALTER TABLE ONLY public.acl_record ALTER COLUMN record_id SET DEFAULT nextval('public.acl_record_record_id_seq'::regclass);
 C   ALTER TABLE public.acl_record ALTER COLUMN record_id DROP DEFAULT;
       public       postgres    false    204    205    205            .           2604    94299 
   acl_sid id    DEFAULT     h   ALTER TABLE ONLY public.acl_sid ALTER COLUMN id SET DEFAULT nextval('public.acl_sid_id_seq'::regclass);
 9   ALTER TABLE public.acl_sid ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            3           2604    94375 
   company id    DEFAULT     h   ALTER TABLE ONLY public.company ALTER COLUMN id SET DEFAULT nextval('public.company_id_seq'::regclass);
 9   ALTER TABLE public.company ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206    207            4           2604    94386 (   db_connection_info db_connection_info_id    DEFAULT     �   ALTER TABLE ONLY public.db_connection_info ALTER COLUMN db_connection_info_id SET DEFAULT nextval('public.db_connection_info_db_connection_info_id_seq'::regclass);
 W   ALTER TABLE public.db_connection_info ALTER COLUMN db_connection_info_id DROP DEFAULT;
       public       postgres    false    208    209    209            5           2604    94410    escalation escalation_id    DEFAULT     �   ALTER TABLE ONLY public.escalation ALTER COLUMN escalation_id SET DEFAULT nextval('public.escalation_escalation_id_seq'::regclass);
 G   ALTER TABLE public.escalation ALTER COLUMN escalation_id DROP DEFAULT;
       public       postgres    false    213    212    213            6           2604    94423    group_acl group_id    DEFAULT     x   ALTER TABLE ONLY public.group_acl ALTER COLUMN group_id SET DEFAULT nextval('public.group_acl_group_id_seq'::regclass);
 A   ALTER TABLE public.group_acl ALTER COLUMN group_id DROP DEFAULT;
       public       postgres    false    216    215    216            7           2604    94439    mail id    DEFAULT     b   ALTER TABLE ONLY public.mail ALTER COLUMN id SET DEFAULT nextval('public.mail_id_seq'::regclass);
 6   ALTER TABLE public.mail ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    220    220            8           2604    94476    relation_instance relation_id    DEFAULT     �   ALTER TABLE ONLY public.relation_instance ALTER COLUMN relation_id SET DEFAULT nextval('public.relation_instance_relation_id_seq'::regclass);
 L   ALTER TABLE public.relation_instance ALTER COLUMN relation_id DROP DEFAULT;
       public       postgres    false    226    225    226            9           2604    94484    requests_logs request_id    DEFAULT     �   ALTER TABLE ONLY public.requests_logs ALTER COLUMN request_id SET DEFAULT nextval('public.requests_logs_request_id_seq'::regclass);
 G   ALTER TABLE public.requests_logs ALTER COLUMN request_id DROP DEFAULT;
       public       postgres    false    227    228    228            :           2604    94495    setup id    DEFAULT     d   ALTER TABLE ONLY public.setup ALTER COLUMN id SET DEFAULT nextval('public.setup_id_seq'::regclass);
 7   ALTER TABLE public.setup ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    230    230            ;           2604    94511 	   target id    DEFAULT     f   ALTER TABLE ONLY public.target ALTER COLUMN id SET DEFAULT nextval('public.target_id_seq'::regclass);
 8   ALTER TABLE public.target ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    232    233    233            <           2604    94525    team id    DEFAULT     b   ALTER TABLE ONLY public.team ALTER COLUMN id SET DEFAULT nextval('public.team_id_seq'::regclass);
 6   ALTER TABLE public.team ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    235    236    236            =           2604    94536 	   ticket id    DEFAULT     f   ALTER TABLE ONLY public.ticket ALTER COLUMN id SET DEFAULT nextval('public.ticket_id_seq'::regclass);
 8   ALTER TABLE public.ticket ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    237    238    238            >           2604    94550    ticket_comment id    DEFAULT     v   ALTER TABLE ONLY public.ticket_comment ALTER COLUMN id SET DEFAULT nextval('public.ticket_comment_id_seq'::regclass);
 @   ALTER TABLE public.ticket_comment ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    240    241    241            ?           2604    94561    ticket_event id    DEFAULT     r   ALTER TABLE ONLY public.ticket_event ALTER COLUMN id SET DEFAULT nextval('public.ticket_event_id_seq'::regclass);
 >   ALTER TABLE public.ticket_event ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    243    242    243            @           2604    94569    ticket_relation id    DEFAULT     x   ALTER TABLE ONLY public.ticket_relation ALTER COLUMN id SET DEFAULT nextval('public.ticket_relation_id_seq'::regclass);
 A   ALTER TABLE public.ticket_relation ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    245    244    245            A           2604    94577    ticket_relation_type id    DEFAULT     �   ALTER TABLE ONLY public.ticket_relation_type ALTER COLUMN id SET DEFAULT nextval('public.ticket_relation_type_id_seq'::regclass);
 F   ALTER TABLE public.ticket_relation_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    247    246    247            B           2604    94593    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    250    251    251            -          0    94306 	   acl_class 
   TABLE DATA               .   COPY public.acl_class (id, class) FROM stdin;
    public       postgres    false    199   �$      1          0    94341 	   acl_entry 
   TABLE DATA               z   COPY public.acl_entry (id, acl_object_identity, ace_order, sid, mask, granting, audit_success, audit_failure) FROM stdin;
    public       postgres    false    203   �$      /          0    94316    acl_object_identity 
   TABLE DATA               �   COPY public.acl_object_identity (id, object_id_class, object_id_identity, parent_object, owner_sid, entries_inheriting) FROM stdin;
    public       postgres    false    201   %      3          0    94361 
   acl_record 
   TABLE DATA               p   COPY public.acl_record (record_id, is_successful, permission_mask, sid, "timestamp", type, type_id) FROM stdin;
    public       postgres    false    205   @%      +          0    94296    acl_sid 
   TABLE DATA               5   COPY public.acl_sid (id, principal, sid) FROM stdin;
    public       postgres    false    197   ]%      5          0    94372    company 
   TABLE DATA               <   COPY public.company (id, deleted, domain, name) FROM stdin;
    public       postgres    false    207   �%      7          0    94383    db_connection_info 
   TABLE DATA               d   COPY public.db_connection_info (db_connection_info_id, driver, password, url, username) FROM stdin;
    public       postgres    false    209   &&      8          0    94392    db_scheduled_count_query 
   TABLE DATA               �   COPY public.db_scheduled_count_query (id, active, author, deleted, description, is_enable, query_priority, cron, job_key, comparison_operator, last_value, query_text, query_type, reference_value, db_connection_info_db_connection_info_id) FROM stdin;
    public       postgres    false    210   C&      9          0    94400    dependent_tickets 
   TABLE DATA               L   COPY public.dependent_tickets (ticket_id, dependent_tickets_id) FROM stdin;
    public       postgres    false    211   `&      ;          0    94407 
   escalation 
   TABLE DATA               ]   COPY public.escalation (escalation_id, customer_priority, team_priority, "time") FROM stdin;
    public       postgres    false    213   }&      <          0    94413 	   gantt_day 
   TABLE DATA               A   COPY public.gantt_day (day, availability, team_name) FROM stdin;
    public       postgres    false    214   �&      >          0    94420 	   group_acl 
   TABLE DATA               B   COPY public.group_acl (group_id, deleted, group_name) FROM stdin;
    public       postgres    false    216   �&      ?          0    94426    group_acl_granted_authorities 
   TABLE DATA               _   COPY public.group_acl_granted_authorities (group_group_id, granted_authorities_id) FROM stdin;
    public       postgres    false    217   �&      @          0    94429    hibernate_sequences 
   TABLE DATA               F   COPY public.hibernate_sequences (sequence_name, next_val) FROM stdin;
    public       postgres    false    218   0'      B          0    94436    mail 
   TABLE DATA               G   COPY public.mail (id, deleted, description, subject, type) FROM stdin;
    public       postgres    false    220   M'      C          0    94445    payload 
   TABLE DATA               S   COPY public.payload (id, class_type, json, object_id, type, record_id) FROM stdin;
    public       postgres    false    221   5(      D          0    94453    record 
   TABLE DATA               N   COPY public.record (id, author, operation_name, tag, "timestamp") FROM stdin;
    public       postgres    false    222   R(      E          0    94461    regression_tickets_generator 
   TABLE DATA               b   COPY public.regression_tickets_generator (ticket_id, regression_tickets_generator_id) FROM stdin;
    public       postgres    false    223   o(      F          0    94466    relation 
   TABLE DATA               0   COPY public.relation (name, cyclic) FROM stdin;
    public       postgres    false    224   �(      H          0    94473    relation_instance 
   TABLE DATA               h   COPY public.relation_instance (relation_id, father_ticket_id, relation_name, son_ticket_id) FROM stdin;
    public       postgres    false    226   �(      J          0    94481    requests_logs 
   TABLE DATA               �   COPY public.requests_logs (request_id, client_ip, http_method, java_method, request_body, request_timestamp, response_body, ticket_status, uri) FROM stdin;
    public       postgres    false    228   �(      L          0    94492    setup 
   TABLE DATA               3   COPY public.setup (id, deleted, setup) FROM stdin;
    public       postgres    false    230   �(      M          0    94498    state_machine 
   TABLE DATA               @   COPY public.state_machine (id, base64diagram, name) FROM stdin;
    public       postgres    false    231   )      O          0    94508    target 
   TABLE DATA               x   COPY public.target (id, deleted, description, name, state_machine_name, target_state, target_type, version) FROM stdin;
    public       postgres    false    233   #)      P          0    94517    target_categories 
   TABLE DATA               B   COPY public.target_categories (target_id, categories) FROM stdin;
    public       postgres    false    234   @)      R          0    94522    team 
   TABLE DATA               d   COPY public.team (id, deleted, name, problem_area, team_coordinator_id, team_leader_id) FROM stdin;
    public       postgres    false    236   ])      T          0    94533    ticket 
   TABLE DATA               �  COPY public.ticket (id, deleted, ttl, actual_priority, actual_type, attachments, category, count_dependencies, creation_timestamp, current_ticket_status, customer_priority, customer_state, date_end, date_execution_start, date_pending_start, description, difficulty, duration_estimation, rank, source, state_counter, state_information, state_machine, team_comment, team_priority, title, visibility, assignee_id, customer_id, same_ticket, target_id, team_name) FROM stdin;
    public       postgres    false    238   z)      W          0    94547    ticket_comment 
   TABLE DATA               z   COPY public.ticket_comment (id, deleted, description, "timestamp", visibility, event_generator_id, ticket_id) FROM stdin;
    public       postgres    false    241   �)      Y          0    94558    ticket_event 
   TABLE DATA               X   COPY public.ticket_event (id, deleted, description, "timestamp", ticket_id) FROM stdin;
    public       postgres    false    243   �)      [          0    94566    ticket_relation 
   TABLE DATA               X   COPY public.ticket_relation (id, deleted, ticket_id, to_ticket_id, type_id) FROM stdin;
    public       postgres    false    245   �)      ]          0    94574    ticket_relation_type 
   TABLE DATA               A   COPY public.ticket_relation_type (id, deleted, name) FROM stdin;
    public       postgres    false    247   �)      U          0    94542    ticket_tags 
   TABLE DATA               6   COPY public.ticket_tags (ticket_id, tags) FROM stdin;
    public       postgres    false    239   *      ^          0    94580    tickets_per_day 
   TABLE DATA               Y   COPY public.tickets_per_day (gantt_day_day, gantt_day_team_name, tickets_id) FROM stdin;
    public       postgres    false    248   (*      _          0    94585    user_type_membership 
   TABLE DATA               [   COPY public.user_type_membership (membership_group_id, user_type_user_type_id) FROM stdin;
    public       postgres    false    249   E*      a          0    94590    users 
   TABLE DATA               y   COPY public.users (id, deleted, email, first_name, last_name, password, role, username, company_id, team_id) FROM stdin;
    public       postgres    false    251   f*      �           0    0    acl_class_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.acl_class_id_seq', 4, true);
            public       postgres    false    198            �           0    0    acl_entry_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.acl_entry_id_seq', 1, false);
            public       postgres    false    202            �           0    0    acl_object_identity_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.acl_object_identity_id_seq', 3, true);
            public       postgres    false    200            �           0    0    acl_record_record_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.acl_record_record_id_seq', 1, false);
            public       postgres    false    204            �           0    0    acl_sid_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.acl_sid_id_seq', 12, true);
            public       postgres    false    196            �           0    0    company_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.company_id_seq', 1, true);
            public       postgres    false    206            �           0    0 ,   db_connection_info_db_connection_info_id_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('public.db_connection_info_db_connection_info_id_seq', 1, false);
            public       postgres    false    208            �           0    0    escalation_escalation_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.escalation_escalation_id_seq', 1, false);
            public       postgres    false    212            �           0    0    group_acl_group_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.group_acl_group_id_seq', 3, true);
            public       postgres    false    215            �           0    0    hibernate_sequence    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hibernate_sequence', 1, false);
            public       postgres    false    252            �           0    0    mail_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.mail_id_seq', 3, true);
            public       postgres    false    219            �           0    0 !   relation_instance_relation_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.relation_instance_relation_id_seq', 1, false);
            public       postgres    false    225            �           0    0    requests_logs_request_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.requests_logs_request_id_seq', 1, false);
            public       postgres    false    227            �           0    0    setup_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.setup_id_seq', 1, true);
            public       postgres    false    229            �           0    0    target_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.target_id_seq', 1, false);
            public       postgres    false    232            �           0    0    team_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.team_id_seq', 1, false);
            public       postgres    false    235            �           0    0    ticket_comment_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.ticket_comment_id_seq', 1, false);
            public       postgres    false    240            �           0    0    ticket_event_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ticket_event_id_seq', 1, false);
            public       postgres    false    242            �           0    0    ticket_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.ticket_id_seq', 1, false);
            public       postgres    false    237            �           0    0    ticket_relation_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.ticket_relation_id_seq', 1, false);
            public       postgres    false    244            �           0    0    ticket_relation_type_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.ticket_relation_type_id_seq', 1, false);
            public       postgres    false    246            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
            public       postgres    false    250            H           2606    94311    acl_class acl_class_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.acl_class
    ADD CONSTRAINT acl_class_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.acl_class DROP CONSTRAINT acl_class_pkey;
       public         postgres    false    199            P           2606    94346    acl_entry acl_entry_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.acl_entry
    ADD CONSTRAINT acl_entry_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.acl_entry DROP CONSTRAINT acl_entry_pkey;
       public         postgres    false    203            L           2606    94321 ,   acl_object_identity acl_object_identity_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.acl_object_identity
    ADD CONSTRAINT acl_object_identity_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.acl_object_identity DROP CONSTRAINT acl_object_identity_pkey;
       public         postgres    false    201            T           2606    94369    acl_record acl_record_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.acl_record
    ADD CONSTRAINT acl_record_pkey PRIMARY KEY (record_id);
 D   ALTER TABLE ONLY public.acl_record DROP CONSTRAINT acl_record_pkey;
       public         postgres    false    205            D           2606    94301    acl_sid acl_sid_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.acl_sid
    ADD CONSTRAINT acl_sid_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.acl_sid DROP CONSTRAINT acl_sid_pkey;
       public         postgres    false    197            V           2606    94380    company company_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.company
    ADD CONSTRAINT company_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.company DROP CONSTRAINT company_pkey;
       public         postgres    false    207            X           2606    94391 *   db_connection_info db_connection_info_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY public.db_connection_info
    ADD CONSTRAINT db_connection_info_pkey PRIMARY KEY (db_connection_info_id);
 T   ALTER TABLE ONLY public.db_connection_info DROP CONSTRAINT db_connection_info_pkey;
       public         postgres    false    209            Z           2606    94399 6   db_scheduled_count_query db_scheduled_count_query_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.db_scheduled_count_query
    ADD CONSTRAINT db_scheduled_count_query_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.db_scheduled_count_query DROP CONSTRAINT db_scheduled_count_query_pkey;
       public         postgres    false    210            \           2606    94404 (   dependent_tickets dependent_tickets_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.dependent_tickets
    ADD CONSTRAINT dependent_tickets_pkey PRIMARY KEY (ticket_id, dependent_tickets_id);
 R   ALTER TABLE ONLY public.dependent_tickets DROP CONSTRAINT dependent_tickets_pkey;
       public         postgres    false    211    211            ^           2606    94412    escalation escalation_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.escalation
    ADD CONSTRAINT escalation_pkey PRIMARY KEY (escalation_id);
 D   ALTER TABLE ONLY public.escalation DROP CONSTRAINT escalation_pkey;
       public         postgres    false    213            `           2606    94417    gantt_day gantt_day_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.gantt_day
    ADD CONSTRAINT gantt_day_pkey PRIMARY KEY (day, team_name);
 B   ALTER TABLE ONLY public.gantt_day DROP CONSTRAINT gantt_day_pkey;
       public         postgres    false    214    214            b           2606    94425    group_acl group_acl_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.group_acl
    ADD CONSTRAINT group_acl_pkey PRIMARY KEY (group_id);
 B   ALTER TABLE ONLY public.group_acl DROP CONSTRAINT group_acl_pkey;
       public         postgres    false    216            d           2606    94433 ,   hibernate_sequences hibernate_sequences_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.hibernate_sequences
    ADD CONSTRAINT hibernate_sequences_pkey PRIMARY KEY (sequence_name);
 V   ALTER TABLE ONLY public.hibernate_sequences DROP CONSTRAINT hibernate_sequences_pkey;
       public         postgres    false    218            f           2606    94444    mail mail_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.mail
    ADD CONSTRAINT mail_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.mail DROP CONSTRAINT mail_pkey;
       public         postgres    false    220            h           2606    94452    payload payload_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.payload
    ADD CONSTRAINT payload_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.payload DROP CONSTRAINT payload_pkey;
       public         postgres    false    221            j           2606    94460    record record_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.record
    ADD CONSTRAINT record_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.record DROP CONSTRAINT record_pkey;
       public         postgres    false    222            l           2606    94465 >   regression_tickets_generator regression_tickets_generator_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.regression_tickets_generator
    ADD CONSTRAINT regression_tickets_generator_pkey PRIMARY KEY (ticket_id, regression_tickets_generator_id);
 h   ALTER TABLE ONLY public.regression_tickets_generator DROP CONSTRAINT regression_tickets_generator_pkey;
       public         postgres    false    223    223            p           2606    94478 (   relation_instance relation_instance_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.relation_instance
    ADD CONSTRAINT relation_instance_pkey PRIMARY KEY (relation_id);
 R   ALTER TABLE ONLY public.relation_instance DROP CONSTRAINT relation_instance_pkey;
       public         postgres    false    226            n           2606    94470    relation relation_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.relation
    ADD CONSTRAINT relation_pkey PRIMARY KEY (name);
 @   ALTER TABLE ONLY public.relation DROP CONSTRAINT relation_pkey;
       public         postgres    false    224            r           2606    94489     requests_logs requests_logs_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.requests_logs
    ADD CONSTRAINT requests_logs_pkey PRIMARY KEY (request_id);
 J   ALTER TABLE ONLY public.requests_logs DROP CONSTRAINT requests_logs_pkey;
       public         postgres    false    228            t           2606    94497    setup setup_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.setup
    ADD CONSTRAINT setup_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.setup DROP CONSTRAINT setup_pkey;
       public         postgres    false    230            v           2606    94505     state_machine state_machine_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.state_machine
    ADD CONSTRAINT state_machine_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.state_machine DROP CONSTRAINT state_machine_pkey;
       public         postgres    false    231            z           2606    94516    target target_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.target
    ADD CONSTRAINT target_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.target DROP CONSTRAINT target_pkey;
       public         postgres    false    233            |           2606    94530    team team_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.team
    ADD CONSTRAINT team_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.team DROP CONSTRAINT team_pkey;
       public         postgres    false    236            �           2606    94555 "   ticket_comment ticket_comment_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.ticket_comment
    ADD CONSTRAINT ticket_comment_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.ticket_comment DROP CONSTRAINT ticket_comment_pkey;
       public         postgres    false    241            �           2606    94563    ticket_event ticket_event_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.ticket_event
    ADD CONSTRAINT ticket_event_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.ticket_event DROP CONSTRAINT ticket_event_pkey;
       public         postgres    false    243            ~           2606    94541    ticket ticket_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT ticket_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.ticket DROP CONSTRAINT ticket_pkey;
       public         postgres    false    238            �           2606    94571 $   ticket_relation ticket_relation_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.ticket_relation
    ADD CONSTRAINT ticket_relation_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.ticket_relation DROP CONSTRAINT ticket_relation_pkey;
       public         postgres    false    245            �           2606    94579 .   ticket_relation_type ticket_relation_type_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.ticket_relation_type
    ADD CONSTRAINT ticket_relation_type_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.ticket_relation_type DROP CONSTRAINT ticket_relation_type_pkey;
       public         postgres    false    247            �           2606    94584 $   tickets_per_day tickets_per_day_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.tickets_per_day
    ADD CONSTRAINT tickets_per_day_pkey PRIMARY KEY (gantt_day_day, gantt_day_team_name, tickets_id);
 N   ALTER TABLE ONLY public.tickets_per_day DROP CONSTRAINT tickets_per_day_pkey;
       public         postgres    false    248    248    248            x           2606    94600 *   state_machine uk_avn79vw58361okjdwj0kkbuq3 
   CONSTRAINT     e   ALTER TABLE ONLY public.state_machine
    ADD CONSTRAINT uk_avn79vw58361okjdwj0kkbuq3 UNIQUE (name);
 T   ALTER TABLE ONLY public.state_machine DROP CONSTRAINT uk_avn79vw58361okjdwj0kkbuq3;
       public         postgres    false    231            F           2606    94303    acl_sid unique_uk_1 
   CONSTRAINT     X   ALTER TABLE ONLY public.acl_sid
    ADD CONSTRAINT unique_uk_1 UNIQUE (sid, principal);
 =   ALTER TABLE ONLY public.acl_sid DROP CONSTRAINT unique_uk_1;
       public         postgres    false    197    197            J           2606    94313    acl_class unique_uk_2 
   CONSTRAINT     Q   ALTER TABLE ONLY public.acl_class
    ADD CONSTRAINT unique_uk_2 UNIQUE (class);
 ?   ALTER TABLE ONLY public.acl_class DROP CONSTRAINT unique_uk_2;
       public         postgres    false    199            N           2606    94323    acl_object_identity unique_uk_3 
   CONSTRAINT     y   ALTER TABLE ONLY public.acl_object_identity
    ADD CONSTRAINT unique_uk_3 UNIQUE (object_id_class, object_id_identity);
 I   ALTER TABLE ONLY public.acl_object_identity DROP CONSTRAINT unique_uk_3;
       public         postgres    false    201    201            R           2606    94348    acl_entry unique_uk_4 
   CONSTRAINT     j   ALTER TABLE ONLY public.acl_entry
    ADD CONSTRAINT unique_uk_4 UNIQUE (acl_object_identity, ace_order);
 ?   ALTER TABLE ONLY public.acl_entry DROP CONSTRAINT unique_uk_4;
       public         postgres    false    203    203            �           2606    94598    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    251            �           2606    94698 "   ticket fk2d6jucg13miy1gtdc21r2bi6m    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT fk2d6jucg13miy1gtdc21r2bi6m FOREIGN KEY (team_name) REFERENCES public.team(id);
 L   ALTER TABLE ONLY public.ticket DROP CONSTRAINT fk2d6jucg13miy1gtdc21r2bi6m;
       public       postgres    false    236    2940    238            �           2606    94608 -   dependent_tickets fk49wwd1m50u69ko1qjediw6byq    FK CONSTRAINT     �   ALTER TABLE ONLY public.dependent_tickets
    ADD CONSTRAINT fk49wwd1m50u69ko1qjediw6byq FOREIGN KEY (dependent_tickets_id) REFERENCES public.ticket(id);
 W   ALTER TABLE ONLY public.dependent_tickets DROP CONSTRAINT fk49wwd1m50u69ko1qjediw6byq;
       public       postgres    false    238    211    2942            �           2606    94678 "   ticket fk4minyd3xqc4bwrn50j71h0iiu    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT fk4minyd3xqc4bwrn50j71h0iiu FOREIGN KEY (assignee_id) REFERENCES public.users(id);
 L   ALTER TABLE ONLY public.ticket DROP CONSTRAINT fk4minyd3xqc4bwrn50j71h0iiu;
       public       postgres    false    251    238    2954            �           2606    94673     team fk4sibnb6rjpyth97lemggqt2ul    FK CONSTRAINT     �   ALTER TABLE ONLY public.team
    ADD CONSTRAINT fk4sibnb6rjpyth97lemggqt2ul FOREIGN KEY (team_leader_id) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.team DROP CONSTRAINT fk4sibnb6rjpyth97lemggqt2ul;
       public       postgres    false    2954    251    236            �           2606    94623 9   group_acl_granted_authorities fk4t68jxfqe1futkj5mp6bmqm4j    FK CONSTRAINT     �   ALTER TABLE ONLY public.group_acl_granted_authorities
    ADD CONSTRAINT fk4t68jxfqe1futkj5mp6bmqm4j FOREIGN KEY (granted_authorities_id) REFERENCES public.acl_sid(id);
 c   ALTER TABLE ONLY public.group_acl_granted_authorities DROP CONSTRAINT fk4t68jxfqe1futkj5mp6bmqm4j;
       public       postgres    false    2884    217    197            �           2606    94668     team fk59argxrnjrtqlhp10ha5x6683    FK CONSTRAINT     �   ALTER TABLE ONLY public.team
    ADD CONSTRAINT fk59argxrnjrtqlhp10ha5x6683 FOREIGN KEY (team_coordinator_id) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.team DROP CONSTRAINT fk59argxrnjrtqlhp10ha5x6683;
       public       postgres    false    251    236    2954            �           2606    94688 "   ticket fk5hogyauuu1iaur0dkaiko2eq1    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT fk5hogyauuu1iaur0dkaiko2eq1 FOREIGN KEY (same_ticket) REFERENCES public.ticket(id);
 L   ALTER TABLE ONLY public.ticket DROP CONSTRAINT fk5hogyauuu1iaur0dkaiko2eq1;
       public       postgres    false    238    238    2942            �           2606    94708 *   ticket_comment fk5hqutu3m4b44b03p81q5t5ou1    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket_comment
    ADD CONSTRAINT fk5hqutu3m4b44b03p81q5t5ou1 FOREIGN KEY (event_generator_id) REFERENCES public.users(id);
 T   ALTER TABLE ONLY public.ticket_comment DROP CONSTRAINT fk5hqutu3m4b44b03p81q5t5ou1;
       public       postgres    false    251    2954    241            �           2606    94703 '   ticket_tags fk7iugdprhys0j2ml5xekwm7uk6    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket_tags
    ADD CONSTRAINT fk7iugdprhys0j2ml5xekwm7uk6 FOREIGN KEY (ticket_id) REFERENCES public.ticket(id);
 Q   ALTER TABLE ONLY public.ticket_tags DROP CONSTRAINT fk7iugdprhys0j2ml5xekwm7uk6;
       public       postgres    false    239    2942    238            �           2606    94693 "   ticket fk7swv9nqxut21c1d6c81qlf74n    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT fk7swv9nqxut21c1d6c81qlf74n FOREIGN KEY (target_id) REFERENCES public.target(id);
 L   ALTER TABLE ONLY public.ticket DROP CONSTRAINT fk7swv9nqxut21c1d6c81qlf74n;
       public       postgres    false    238    233    2938            �           2606    94603 4   db_scheduled_count_query fk9asmb464bidmjyfbq16uskybu    FK CONSTRAINT     �   ALTER TABLE ONLY public.db_scheduled_count_query
    ADD CONSTRAINT fk9asmb464bidmjyfbq16uskybu FOREIGN KEY (db_connection_info_db_connection_info_id) REFERENCES public.db_connection_info(db_connection_info_id);
 ^   ALTER TABLE ONLY public.db_scheduled_count_query DROP CONSTRAINT fk9asmb464bidmjyfbq16uskybu;
       public       postgres    false    2904    210    209            �           2606    94723 +   ticket_relation fkaimkjo2bk7vl0dv6ksiw392re    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket_relation
    ADD CONSTRAINT fkaimkjo2bk7vl0dv6ksiw392re FOREIGN KEY (ticket_id) REFERENCES public.ticket(id);
 U   ALTER TABLE ONLY public.ticket_relation DROP CONSTRAINT fkaimkjo2bk7vl0dv6ksiw392re;
       public       postgres    false    2942    238    245            �           2606    94753 0   user_type_membership fkbnwgdaj8dhu8b32m58gjnmts3    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_type_membership
    ADD CONSTRAINT fkbnwgdaj8dhu8b32m58gjnmts3 FOREIGN KEY (membership_group_id) REFERENCES public.group_acl(group_id);
 Z   ALTER TABLE ONLY public.user_type_membership DROP CONSTRAINT fkbnwgdaj8dhu8b32m58gjnmts3;
       public       postgres    false    2914    249    216            �           2606    94758 !   users fkbwv4uspmyi7xqjwcrgxow361t    FK CONSTRAINT     �   ALTER TABLE ONLY public.users
    ADD CONSTRAINT fkbwv4uspmyi7xqjwcrgxow361t FOREIGN KEY (company_id) REFERENCES public.company(id);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT fkbwv4uspmyi7xqjwcrgxow361t;
       public       postgres    false    207    251    2902            �           2606    94718 (   ticket_event fkc0syr9e4rriwduj19gec5c57h    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket_event
    ADD CONSTRAINT fkc0syr9e4rriwduj19gec5c57h FOREIGN KEY (ticket_id) REFERENCES public.ticket(id);
 R   ALTER TABLE ONLY public.ticket_event DROP CONSTRAINT fkc0syr9e4rriwduj19gec5c57h;
       public       postgres    false    2942    238    243            �           2606    94653 -   relation_instance fkc1xv6vuv3fv41jpqkep66jd51    FK CONSTRAINT     �   ALTER TABLE ONLY public.relation_instance
    ADD CONSTRAINT fkc1xv6vuv3fv41jpqkep66jd51 FOREIGN KEY (relation_name) REFERENCES public.relation(name);
 W   ALTER TABLE ONLY public.relation_instance DROP CONSTRAINT fkc1xv6vuv3fv41jpqkep66jd51;
       public       postgres    false    2926    226    224            �           2606    94713 *   ticket_comment fkcf0twfu7b4acgtu1audfbem60    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket_comment
    ADD CONSTRAINT fkcf0twfu7b4acgtu1audfbem60 FOREIGN KEY (ticket_id) REFERENCES public.ticket(id);
 T   ALTER TABLE ONLY public.ticket_comment DROP CONSTRAINT fkcf0twfu7b4acgtu1audfbem60;
       public       postgres    false    241    2942    238            �           2606    94648 -   relation_instance fkd736ek3as50ahv1ldph08v2bt    FK CONSTRAINT     �   ALTER TABLE ONLY public.relation_instance
    ADD CONSTRAINT fkd736ek3as50ahv1ldph08v2bt FOREIGN KEY (father_ticket_id) REFERENCES public.ticket(id);
 W   ALTER TABLE ONLY public.relation_instance DROP CONSTRAINT fkd736ek3as50ahv1ldph08v2bt;
       public       postgres    false    226    2942    238            �           2606    94663 -   target_categories fkekg3is7skg7cwn2xwfigo0eft    FK CONSTRAINT     �   ALTER TABLE ONLY public.target_categories
    ADD CONSTRAINT fkekg3is7skg7cwn2xwfigo0eft FOREIGN KEY (target_id) REFERENCES public.target(id);
 W   ALTER TABLE ONLY public.target_categories DROP CONSTRAINT fkekg3is7skg7cwn2xwfigo0eft;
       public       postgres    false    2938    234    233            �           2606    94658 ,   relation_instance fkfyn10lkxjgbdttqu5j6r6x9q    FK CONSTRAINT     �   ALTER TABLE ONLY public.relation_instance
    ADD CONSTRAINT fkfyn10lkxjgbdttqu5j6r6x9q FOREIGN KEY (son_ticket_id) REFERENCES public.ticket(id);
 V   ALTER TABLE ONLY public.relation_instance DROP CONSTRAINT fkfyn10lkxjgbdttqu5j6r6x9q;
       public       postgres    false    238    2942    226            �           2606    94633 #   payload fkg0ad6qq1aiip6jd55nobtjd5b    FK CONSTRAINT     �   ALTER TABLE ONLY public.payload
    ADD CONSTRAINT fkg0ad6qq1aiip6jd55nobtjd5b FOREIGN KEY (record_id) REFERENCES public.record(id);
 M   ALTER TABLE ONLY public.payload DROP CONSTRAINT fkg0ad6qq1aiip6jd55nobtjd5b;
       public       postgres    false    221    2922    222            �           2606    94763 !   users fkhn2tnbh9fqjqeuv8ehw5ple7a    FK CONSTRAINT        ALTER TABLE ONLY public.users
    ADD CONSTRAINT fkhn2tnbh9fqjqeuv8ehw5ple7a FOREIGN KEY (team_id) REFERENCES public.team(id);
 K   ALTER TABLE ONLY public.users DROP CONSTRAINT fkhn2tnbh9fqjqeuv8ehw5ple7a;
       public       postgres    false    2940    251    236            �           2606    94628 9   group_acl_granted_authorities fkjlv7d941w83ieauri8c7s93pr    FK CONSTRAINT     �   ALTER TABLE ONLY public.group_acl_granted_authorities
    ADD CONSTRAINT fkjlv7d941w83ieauri8c7s93pr FOREIGN KEY (group_group_id) REFERENCES public.group_acl(group_id);
 c   ALTER TABLE ONLY public.group_acl_granted_authorities DROP CONSTRAINT fkjlv7d941w83ieauri8c7s93pr;
       public       postgres    false    2914    217    216            �           2606    94733 +   ticket_relation fkjr2u14nhohbdvnt5wmsy0x0j5    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket_relation
    ADD CONSTRAINT fkjr2u14nhohbdvnt5wmsy0x0j5 FOREIGN KEY (type_id) REFERENCES public.ticket_relation_type(id);
 U   ALTER TABLE ONLY public.ticket_relation DROP CONSTRAINT fkjr2u14nhohbdvnt5wmsy0x0j5;
       public       postgres    false    2950    247    245            �           2606    94618 %   gantt_day fkjwviq60vuwodujidy95m1s2hn    FK CONSTRAINT     �   ALTER TABLE ONLY public.gantt_day
    ADD CONSTRAINT fkjwviq60vuwodujidy95m1s2hn FOREIGN KEY (team_name) REFERENCES public.team(id);
 O   ALTER TABLE ONLY public.gantt_day DROP CONSTRAINT fkjwviq60vuwodujidy95m1s2hn;
       public       postgres    false    236    214    2940            �           2606    94728 +   ticket_relation fkll0wim3tawcnhf6ydg6m11if9    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket_relation
    ADD CONSTRAINT fkll0wim3tawcnhf6ydg6m11if9 FOREIGN KEY (to_ticket_id) REFERENCES public.ticket(id);
 U   ALTER TABLE ONLY public.ticket_relation DROP CONSTRAINT fkll0wim3tawcnhf6ydg6m11if9;
       public       postgres    false    245    2942    238            �           2606    94643 8   regression_tickets_generator fko6p2xisgih8iafoc6iam2hm61    FK CONSTRAINT     �   ALTER TABLE ONLY public.regression_tickets_generator
    ADD CONSTRAINT fko6p2xisgih8iafoc6iam2hm61 FOREIGN KEY (ticket_id) REFERENCES public.ticket(id);
 b   ALTER TABLE ONLY public.regression_tickets_generator DROP CONSTRAINT fko6p2xisgih8iafoc6iam2hm61;
       public       postgres    false    2942    238    223            �           2606    94748 0   user_type_membership fkp8p2gempdsmy8g2ab1eovn1xg    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_type_membership
    ADD CONSTRAINT fkp8p2gempdsmy8g2ab1eovn1xg FOREIGN KEY (user_type_user_type_id) REFERENCES public.users(id);
 Z   ALTER TABLE ONLY public.user_type_membership DROP CONSTRAINT fkp8p2gempdsmy8g2ab1eovn1xg;
       public       postgres    false    249    2954    251            �           2606    94613 ,   dependent_tickets fkpao7atd70xo9rr2uup2wsewl    FK CONSTRAINT     �   ALTER TABLE ONLY public.dependent_tickets
    ADD CONSTRAINT fkpao7atd70xo9rr2uup2wsewl FOREIGN KEY (ticket_id) REFERENCES public.ticket(id);
 V   ALTER TABLE ONLY public.dependent_tickets DROP CONSTRAINT fkpao7atd70xo9rr2uup2wsewl;
       public       postgres    false    2942    211    238            �           2606    94738 +   tickets_per_day fkq3ltm04bfbv86gtyxihbt87au    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets_per_day
    ADD CONSTRAINT fkq3ltm04bfbv86gtyxihbt87au FOREIGN KEY (tickets_id) REFERENCES public.ticket(id);
 U   ALTER TABLE ONLY public.tickets_per_day DROP CONSTRAINT fkq3ltm04bfbv86gtyxihbt87au;
       public       postgres    false    248    238    2942            �           2606    94743 +   tickets_per_day fkq6jehpb7q030icdr08ks58enb    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets_per_day
    ADD CONSTRAINT fkq6jehpb7q030icdr08ks58enb FOREIGN KEY (gantt_day_day, gantt_day_team_name) REFERENCES public.gantt_day(day, team_name);
 U   ALTER TABLE ONLY public.tickets_per_day DROP CONSTRAINT fkq6jehpb7q030icdr08ks58enb;
       public       postgres    false    214    2912    214    248    248            �           2606    94638 8   regression_tickets_generator fkr23f4ucpna96ic9yk0k5cvw51    FK CONSTRAINT     �   ALTER TABLE ONLY public.regression_tickets_generator
    ADD CONSTRAINT fkr23f4ucpna96ic9yk0k5cvw51 FOREIGN KEY (regression_tickets_generator_id) REFERENCES public.ticket(id);
 b   ALTER TABLE ONLY public.regression_tickets_generator DROP CONSTRAINT fkr23f4ucpna96ic9yk0k5cvw51;
       public       postgres    false    238    2942    223            �           2606    94683 "   ticket fktq51yuei7dinva0v01br9ogn7    FK CONSTRAINT     �   ALTER TABLE ONLY public.ticket
    ADD CONSTRAINT fktq51yuei7dinva0v01br9ogn7 FOREIGN KEY (customer_id) REFERENCES public.users(id);
 L   ALTER TABLE ONLY public.ticket DROP CONSTRAINT fktq51yuei7dinva0v01br9ogn7;
       public       postgres    false    238    251    2954            �           2606    94324     acl_object_identity foreign_fk_1    FK CONSTRAINT     �   ALTER TABLE ONLY public.acl_object_identity
    ADD CONSTRAINT foreign_fk_1 FOREIGN KEY (parent_object) REFERENCES public.acl_object_identity(id);
 J   ALTER TABLE ONLY public.acl_object_identity DROP CONSTRAINT foreign_fk_1;
       public       postgres    false    201    201    2892            �           2606    94329     acl_object_identity foreign_fk_2    FK CONSTRAINT     �   ALTER TABLE ONLY public.acl_object_identity
    ADD CONSTRAINT foreign_fk_2 FOREIGN KEY (object_id_class) REFERENCES public.acl_class(id);
 J   ALTER TABLE ONLY public.acl_object_identity DROP CONSTRAINT foreign_fk_2;
       public       postgres    false    201    199    2888            �           2606    94334     acl_object_identity foreign_fk_3    FK CONSTRAINT     �   ALTER TABLE ONLY public.acl_object_identity
    ADD CONSTRAINT foreign_fk_3 FOREIGN KEY (owner_sid) REFERENCES public.acl_sid(id);
 J   ALTER TABLE ONLY public.acl_object_identity DROP CONSTRAINT foreign_fk_3;
       public       postgres    false    197    2884    201            �           2606    94349    acl_entry foreign_fk_4    FK CONSTRAINT     �   ALTER TABLE ONLY public.acl_entry
    ADD CONSTRAINT foreign_fk_4 FOREIGN KEY (acl_object_identity) REFERENCES public.acl_object_identity(id);
 @   ALTER TABLE ONLY public.acl_entry DROP CONSTRAINT foreign_fk_4;
       public       postgres    false    203    201    2892            �           2606    94354    acl_entry foreign_fk_5    FK CONSTRAINT     s   ALTER TABLE ONLY public.acl_entry
    ADD CONSTRAINT foreign_fk_5 FOREIGN KEY (sid) REFERENCES public.acl_sid(id);
 @   ALTER TABLE ONLY public.acl_entry DROP CONSTRAINT foreign_fk_5;
       public       postgres    false    2884    203    197            -   W   x�3�L����,...�+�L�N-��K�/�,.I��K�+�,��I,JO-�2"Fijb.�1>���9z�E���z� �˄c��\1z\\\ VtA�      1      x������ � �      /   %   x�3�4�4���44�,�2��<cN��b���� ��      3      x������ � �      +   �   x�u�=�0D��Ǡ�|�&1(RSWn"���C��#E4��{wOgMc�;*�c衭�|H,����1q$�]%�0�,>����U��e~P0R�,�X���tG�2��R��uR�
�ބ�m��հ�[c��5Ooxl ��F�      5      x�3�L�,�,.I���,���b���� n��      7      x������ � �      8      x������ � �      9      x������ � �      ;      x������ � �      <      x������ � �      >   7   x�3�L�t
�Wpt����2B��:�*���:�q#��C�C�}�b1z\\\ ��      ?   "   x�3�4�2�bCÄˈӌ˘Ә+F��� :�      @      x������ � �      B   �   x�M�QN�0D��S�	8A)�*�U��*���.k���㴀����{�7�+ϣ�p>�)�HG�
�T�J#���'h��ׁ����3���qo�F�Sh'�bT��Tb�,VU��l�m�|�<�+D!iM!���	�I�Ds͎yZ�o��X��m� �2i��D<�l�3�|GK��4��M_��������y+���%�u�}<>���A�R�oK>a�      C      x������ � �      D      x������ � �      E      x������ � �      F      x������ � �      H      x������ � �      J      x������ � �      L      x�3�L�,����� ��      M      x������ � �      O      x������ � �      P      x������ � �      R      x������ � �      T      x������ � �      W      x������ � �      Y      x������ � �      [      x������ � �      ]      x������ � �      U      x������ � �      ^      x������ � �      _      x�3�4����� ]      a   u   x�3�L�L/*-(�7�,...rH�M���K���tL��̃�*F�*�*��.�y��.f�!ɩ�����Q��A>���%Fن��99z��UE��Yz����`C9c��b���� ��$1     