PGDMP     (    *                 {         	   school_db    15.1    15.1     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16398 	   school_db    DATABASE     ?   CREATE DATABASE school_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE school_db;
                postgres    false            ?            1259    16450 
   tblstudent    TABLE     	  CREATE TABLE public.tblstudent (
    id integer NOT NULL,
    student_fname character varying(255) NOT NULL,
    student_lname character varying(255) NOT NULL,
    student_email character varying(255) NOT NULL,
    student_course character varying(255) NOT NULL
);
    DROP TABLE public.tblstudent;
       public         heap    postgres    false            ?            1259    16449    tblstudent_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.tblstudent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tblstudent_id_seq;
       public          postgres    false    215            ?           0    0    tblstudent_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.tblstudent_id_seq OWNED BY public.tblstudent.id;
          public          postgres    false    214            e           2604    16453    tblstudent id    DEFAULT     n   ALTER TABLE ONLY public.tblstudent ALTER COLUMN id SET DEFAULT nextval('public.tblstudent_id_seq'::regclass);
 <   ALTER TABLE public.tblstudent ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            ?          0    16450 
   tblstudent 
   TABLE DATA           e   COPY public.tblstudent (id, student_fname, student_lname, student_email, student_course) FROM stdin;
    public          postgres    false    215   n       ?           0    0    tblstudent_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tblstudent_id_seq', 15, true);
          public          postgres    false    214            g           2606    16457    tblstudent tblstudent_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.tblstudent
    ADD CONSTRAINT tblstudent_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.tblstudent DROP CONSTRAINT tblstudent_pkey;
       public            postgres    false    215            ?   ?   x?e??N?0E??_?/?mv?Ɇ(?t???~%?9?D???Yyq????u?;?xfGg??Vsz?x?6?8t?G?G?:????8&??YqVѢ
9??P???&?Ɵ9?a?P=?Gq?2?qҎ??/z?@?!$?}YIa`뿫???u(D~??'?ŉ)0R??s?lF??@?ߎu???e5????f??`T?o?RX?[?<?!??ߡ???zs?????=??"?l?!?'<ĉ?     