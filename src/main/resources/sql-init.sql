PGDMP  ;                    |            HTV    16.1    16.1 &               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    27759    HTV    DATABASE     �   CREATE DATABASE "HTV" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "HTV";
                postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                pg_database_owner    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   pg_database_owner    false    4            �            1259    27884    object_comment    TABLE     �   CREATE TABLE public.object_comment (
    id bigint NOT NULL,
    content text,
    created_day timestamp(6) without time zone,
    user_id character varying(255),
    object_transform_id bigint
);
 "   DROP TABLE public.object_comment;
       public         heap    postgres    false    4            �            1259    27883    object_comment_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.object_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.object_comment_id_seq;
       public          postgres    false    222    4                       0    0    object_comment_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.object_comment_id_seq OWNED BY public.object_comment.id;
          public          postgres    false    221            �            1259    27833    object_transfrom    TABLE       CREATE TABLE public.object_transfrom (
    id bigint NOT NULL,
    position_x real NOT NULL,
    position_y real NOT NULL,
    position_z real NOT NULL,
    rotation_w real NOT NULL,
    rotation_x real NOT NULL,
    rotation_y real NOT NULL,
    rotation_z real NOT NULL,
    scale_x real NOT NULL,
    scale_y real NOT NULL,
    scale_z real NOT NULL,
    station_id bigint,
    maintenance_instruction character varying(255),
    index bigint NOT NULL,
    sensor_id bigint,
    video_url character varying(255)
);
 $   DROP TABLE public.object_transfrom;
       public         heap    postgres    false    4            �            1259    27832    object_transfrom_id_seq    SEQUENCE     �   CREATE SEQUENCE public.object_transfrom_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.object_transfrom_id_seq;
       public          postgres    false    4    218                       0    0    object_transfrom_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.object_transfrom_id_seq OWNED BY public.object_transfrom.id;
          public          postgres    false    217            �            1259    27851    sensor_device    TABLE     
  CREATE TABLE public.sensor_device (
    id bigint NOT NULL,
    sensor_unit character varying(255) NOT NULL,
    sensor_id character varying(255) NOT NULL,
    sensor_name character varying(255) NOT NULL,
    station_id bigint NOT NULL,
    sensor_image_url text
);
 !   DROP TABLE public.sensor_device;
       public         heap    postgres    false    4            �            1259    27850    sensor_device_id_seq    SEQUENCE     }   CREATE SEQUENCE public.sensor_device_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.sensor_device_id_seq;
       public          postgres    false    4    220                       0    0    sensor_device_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.sensor_device_id_seq OWNED BY public.sensor_device.id;
          public          postgres    false    219            �            1259    27770    station    TABLE     �   CREATE TABLE public.station (
    gps_latitude double precision NOT NULL,
    gps_longitude double precision NOT NULL,
    id bigint NOT NULL,
    station_id character varying(255) NOT NULL,
    station_name character varying(255) NOT NULL
);
    DROP TABLE public.station;
       public         heap    postgres    false    4            �            1259    27769    station_id_seq    SEQUENCE     w   CREATE SEQUENCE public.station_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.station_id_seq;
       public          postgres    false    216    4                       0    0    station_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.station_id_seq OWNED BY public.station.id;
          public          postgres    false    215            b           2604    27887    object_comment id    DEFAULT     v   ALTER TABLE ONLY public.object_comment ALTER COLUMN id SET DEFAULT nextval('public.object_comment_id_seq'::regclass);
 @   ALTER TABLE public.object_comment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    221    222            `           2604    27836    object_transfrom id    DEFAULT     z   ALTER TABLE ONLY public.object_transfrom ALTER COLUMN id SET DEFAULT nextval('public.object_transfrom_id_seq'::regclass);
 B   ALTER TABLE public.object_transfrom ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218            a           2604    27854    sensor_device id    DEFAULT     t   ALTER TABLE ONLY public.sensor_device ALTER COLUMN id SET DEFAULT nextval('public.sensor_device_id_seq'::regclass);
 ?   ALTER TABLE public.sensor_device ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            _           2604    27773 
   station id    DEFAULT     h   ALTER TABLE ONLY public.station ALTER COLUMN id SET DEFAULT nextval('public.station_id_seq'::regclass);
 9   ALTER TABLE public.station ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216                      0    27884    object_comment 
   TABLE DATA           `   COPY public.object_comment (id, content, created_day, user_id, object_transform_id) FROM stdin;
    public          postgres    false    222   �-                 0    27833    object_transfrom 
   TABLE DATA           �   COPY public.object_transfrom (id, position_x, position_y, position_z, rotation_w, rotation_x, rotation_y, rotation_z, scale_x, scale_y, scale_z, station_id, maintenance_instruction, index, sensor_id, video_url) FROM stdin;
    public          postgres    false    218   !.                 0    27851    sensor_device 
   TABLE DATA           n   COPY public.sensor_device (id, sensor_unit, sensor_id, sensor_name, station_id, sensor_image_url) FROM stdin;
    public          postgres    false    220   #/       �          0    27770    station 
   TABLE DATA           \   COPY public.station (gps_latitude, gps_longitude, id, station_id, station_name) FROM stdin;
    public          postgres    false    216   �0                  0    0    object_comment_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.object_comment_id_seq', 5, true);
          public          postgres    false    221                       0    0    object_transfrom_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.object_transfrom_id_seq', 264, true);
          public          postgres    false    217                       0    0    sensor_device_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.sensor_device_id_seq', 13, true);
          public          postgres    false    219                       0    0    station_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.station_id_seq', 1, false);
          public          postgres    false    215            j           2606    27891 "   object_comment object_comment_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.object_comment
    ADD CONSTRAINT object_comment_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.object_comment DROP CONSTRAINT object_comment_pkey;
       public            postgres    false    222            f           2606    27838 &   object_transfrom object_transfrom_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.object_transfrom
    ADD CONSTRAINT object_transfrom_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.object_transfrom DROP CONSTRAINT object_transfrom_pkey;
       public            postgres    false    218            h           2606    27858     sensor_device sensor_device_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.sensor_device
    ADD CONSTRAINT sensor_device_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.sensor_device DROP CONSTRAINT sensor_device_pkey;
       public            postgres    false    220            d           2606    27777    station station_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.station
    ADD CONSTRAINT station_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.station DROP CONSTRAINT station_pkey;
       public            postgres    false    216            k           2606    44352 ,   object_transfrom fk87n6y4yuhtayqaplcn43cl599    FK CONSTRAINT     �   ALTER TABLE ONLY public.object_transfrom
    ADD CONSTRAINT fk87n6y4yuhtayqaplcn43cl599 FOREIGN KEY (sensor_id) REFERENCES public.sensor_device(id);
 V   ALTER TABLE ONLY public.object_transfrom DROP CONSTRAINT fk87n6y4yuhtayqaplcn43cl599;
       public          postgres    false    220    218    4712            m           2606    27859 )   sensor_device fkhl3asgyccstwraqa2fs4ymnhw    FK CONSTRAINT     �   ALTER TABLE ONLY public.sensor_device
    ADD CONSTRAINT fkhl3asgyccstwraqa2fs4ymnhw FOREIGN KEY (station_id) REFERENCES public.station(id);
 S   ALTER TABLE ONLY public.sensor_device DROP CONSTRAINT fkhl3asgyccstwraqa2fs4ymnhw;
       public          postgres    false    216    220    4708            n           2606    27892 *   object_comment fkop4a3kabrd7u1vlavfgjkoy8y    FK CONSTRAINT     �   ALTER TABLE ONLY public.object_comment
    ADD CONSTRAINT fkop4a3kabrd7u1vlavfgjkoy8y FOREIGN KEY (object_transform_id) REFERENCES public.object_transfrom(id);
 T   ALTER TABLE ONLY public.object_comment DROP CONSTRAINT fkop4a3kabrd7u1vlavfgjkoy8y;
       public          postgres    false    218    222    4710            l           2606    27844 ,   object_transfrom fkta9o5pec1ptvt2mu0bxsvvk5n    FK CONSTRAINT     �   ALTER TABLE ONLY public.object_transfrom
    ADD CONSTRAINT fkta9o5pec1ptvt2mu0bxsvvk5n FOREIGN KEY (station_id) REFERENCES public.station(id);
 V   ALTER TABLE ONLY public.object_transfrom DROP CONSTRAINT fkta9o5pec1ptvt2mu0bxsvvk5n;
       public          postgres    false    4708    218    216               I   x�3���O�KW+��G&^��sxA�B��ݓ3�2/��!#cK.#�s�p��h�1���qqq R�CA         �   x�u�Mn� F��\���0��#�n��Vj;�I�޾`GmԴ����>r`��-{�.rmP�12h5F$��	�(zϦ�� 1XV�Ֆ}N�ǥ���*��q>ۏ�O�E�O9���PƊn%x��e��}A���G�᎚Һvoɲ!��X��F��5�,���8U�p�@���<�o�8��z;�q����w9���l��/�4Q���\�4�ʣsjv���K%��S��%wJ�Ϧ�m�4_=�h�         �  x����j�0 ���ٝ�CR')��d��iL�.����mER�e9���O�$��C/:_}B�?H�Pٜ"�H/a �5�-�F�6�^5?�^����ܘ4g	O`!���󨖻cTC��	�S������PZboo����e��~�oOj�њ��w��C�,]��)%�7�'OYsv�W��V��Du��<�vF������'Wp���et?.0펏��`X�T���G��Ye�}�>��(�D6n�k˵��%xy:�A���p����EmD���H/v9� �3����w���^�F���Γ�����Fy��̪��T�/�w���y����紬���.|��K��`��O��1K1��d���K^_�}�
D��o�[�a�	��j�i���KU�n9�8<�q��I��      �   %   x�34�3�4���E�F���A
 W� }b�     