PGDMP                         y           intelcia    14.1    14.1 6    M           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            N           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            O           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            P           1262    32768    intelcia    DATABASE     d   CREATE DATABASE intelcia WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_France.1252';
    DROP DATABASE intelcia;
                postgres    false            �            1259    32769    user    TABLE     �   CREATE TABLE public."user" (
    id integer NOT NULL,
    nom text,
    prenom text,
    email text,
    numero integer,
    telephone text,
    password text,
    status boolean,
    id_role integer,
    id_adress integer
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    32796    RH    TABLE     7   CREATE TABLE public."RH" (
)
INHERITS (public."user");
    DROP TABLE public."RH";
       public         heap    postgres    false    209            �            1259    32813    adress    TABLE     s   CREATE TABLE public.adress (
    id integer NOT NULL,
    country text,
    ville text,
    code_postal integer
);
    DROP TABLE public.adress;
       public         heap    postgres    false            �            1259    32776    chefDivision    TABLE     Y   CREATE TABLE public."chefDivision" (
    id_division integer
)
INHERITS (public."user");
 "   DROP TABLE public."chefDivision";
       public         heap    postgres    false    209            �            1259    32786 
   chefProjet    TABLE     W   CREATE TABLE public."chefProjet" (
    id_division integer
)
INHERITS (public."user");
     DROP TABLE public."chefProjet";
       public         heap    postgres    false    209            �            1259    32791    client    TABLE     o   CREATE TABLE public.client (
    activiter text,
    contact text,
    fax integer
)
INHERITS (public."user");
    DROP TABLE public.client;
       public         heap    postgres    false    209            �            1259    32920    division    TABLE     x   CREATE TABLE public.division (
    id integer NOT NULL,
    chifre_affaire double precision,
    raisson_social text
);
    DROP TABLE public.division;
       public         heap    postgres    false            �            1259    32910    equipe    TABLE     j   CREATE TABLE public.equipe (
    id integer NOT NULL,
    numero integer,
    nombre_employers integer
);
    DROP TABLE public.equipe;
       public         heap    postgres    false            �            1259    32898    material    TABLE     �   CREATE TABLE public.material (
    id integer NOT NULL,
    numero integer,
    nom text,
    reference_constructeur text,
    type text,
    id_salary integer
);
    DROP TABLE public.material;
       public         heap    postgres    false            �            1259    32862    projet    TABLE     �   CREATE TABLE public.projet (
    id integer NOT NULL,
    date_deadline date,
    theme text,
    numero integer,
    libelle text,
    date_debut date,
    date_fin date,
    id_chefprojet integer
);
    DROP TABLE public.projet;
       public         heap    postgres    false            �            1259    32806    role    TABLE     J   CREATE TABLE public.role (
    id integer NOT NULL,
    name_role text
);
    DROP TABLE public.role;
       public         heap    postgres    false            �            1259    32781    salary    TABLE     �   CREATE TABLE public.salary (
    function text,
    renumeration text,
    specialisation text,
    id_equipe integer
)
INHERITS (public."user");
    DROP TABLE public.salary;
       public         heap    postgres    false    209            �            1259    32801    superViseur    TABLE     @   CREATE TABLE public."superViseur" (
)
INHERITS (public."user");
 !   DROP TABLE public."superViseur";
       public         heap    postgres    false    209            �            1259    32881    task    TABLE     �   CREATE TABLE public.task (
    id integer NOT NULL,
    nom text,
    date_debut date,
    date_fin date,
    status boolean,
    id_project integer,
    id_salary integer
);
    DROP TABLE public.task;
       public         heap    postgres    false            B          0    32796    RH 
   TABLE DATA           o   COPY public."RH" (id, nom, prenom, email, numero, telephone, password, status, id_role, id_adress) FROM stdin;
    public          postgres    false    214   �;       E          0    32813    adress 
   TABLE DATA           A   COPY public.adress (id, country, ville, code_postal) FROM stdin;
    public          postgres    false    217   �;       >          0    32776    chefDivision 
   TABLE DATA           �   COPY public."chefDivision" (id, nom, prenom, email, numero, telephone, password, status, id_role, id_division, id_adress) FROM stdin;
    public          postgres    false    210   <       @          0    32786 
   chefProjet 
   TABLE DATA           �   COPY public."chefProjet" (id, nom, prenom, email, numero, telephone, password, status, id_role, id_division, id_adress) FROM stdin;
    public          postgres    false    212   )<       A          0    32791    client 
   TABLE DATA           �   COPY public.client (id, nom, prenom, email, numero, telephone, password, status, activiter, contact, fax, id_role, id_adress) FROM stdin;
    public          postgres    false    213   F<       J          0    32920    division 
   TABLE DATA           F   COPY public.division (id, chifre_affaire, raisson_social) FROM stdin;
    public          postgres    false    222   c<       I          0    32910    equipe 
   TABLE DATA           >   COPY public.equipe (id, numero, nombre_employers) FROM stdin;
    public          postgres    false    221   �<       H          0    32898    material 
   TABLE DATA           \   COPY public.material (id, numero, nom, reference_constructeur, type, id_salary) FROM stdin;
    public          postgres    false    220   �<       F          0    32862    projet 
   TABLE DATA           p   COPY public.projet (id, date_deadline, theme, numero, libelle, date_debut, date_fin, id_chefprojet) FROM stdin;
    public          postgres    false    218   �<       D          0    32806    role 
   TABLE DATA           -   COPY public.role (id, name_role) FROM stdin;
    public          postgres    false    216   �<       ?          0    32781    salary 
   TABLE DATA           �   COPY public.salary (id, nom, prenom, email, numero, telephone, password, status, function, renumeration, specialisation, id_role, id_equipe, id_adress) FROM stdin;
    public          postgres    false    211   �<       C          0    32801    superViseur 
   TABLE DATA           x   COPY public."superViseur" (id, nom, prenom, email, numero, telephone, password, status, id_role, id_adress) FROM stdin;
    public          postgres    false    215   =       G          0    32881    task 
   TABLE DATA           \   COPY public.task (id, nom, date_debut, date_fin, status, id_project, id_salary) FROM stdin;
    public          postgres    false    219   .=       =          0    32769    user 
   TABLE DATA           q   COPY public."user" (id, nom, prenom, email, numero, telephone, password, status, id_role, id_adress) FROM stdin;
    public          postgres    false    209   K=       �           2606    32836 
   RH RH_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public."RH"
    ADD CONSTRAINT "RH_pkey" PRIMARY KEY (id);
 8   ALTER TABLE ONLY public."RH" DROP CONSTRAINT "RH_pkey";
       public            postgres    false    214            �           2606    32819    adress adress_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.adress
    ADD CONSTRAINT adress_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.adress DROP CONSTRAINT adress_pkey;
       public            postgres    false    217            �           2606    32834    chefDivision chefDivision_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."chefDivision"
    ADD CONSTRAINT "chefDivision_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."chefDivision" DROP CONSTRAINT "chefDivision_pkey";
       public            postgres    false    210            �           2606    32832    chefProjet chefProjet_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."chefProjet"
    ADD CONSTRAINT "chefProjet_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."chefProjet" DROP CONSTRAINT "chefProjet_pkey";
       public            postgres    false    212            �           2606    32830    client client_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public            postgres    false    213            �           2606    32926    division division_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.division
    ADD CONSTRAINT division_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.division DROP CONSTRAINT division_pkey;
       public            postgres    false    222            �           2606    32914    equipe equipe_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.equipe
    ADD CONSTRAINT equipe_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.equipe DROP CONSTRAINT equipe_pkey;
       public            postgres    false    221            �           2606    32904    material material_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.material DROP CONSTRAINT material_pkey;
       public            postgres    false    220            �           2606    32868    projet projet_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.projet
    ADD CONSTRAINT projet_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.projet DROP CONSTRAINT projet_pkey;
       public            postgres    false    218            �           2606    32812    role role_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.role DROP CONSTRAINT role_pkey;
       public            postgres    false    216            �           2606    32828    salary salary_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.salary
    ADD CONSTRAINT salary_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.salary DROP CONSTRAINT salary_pkey;
       public            postgres    false    211            �           2606    32887    task task_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.task DROP CONSTRAINT task_pkey;
       public            postgres    false    219            �           2606    32775    user user_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    209            �           2606    32942    user id_adress    FK CONSTRAINT     |   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT id_adress FOREIGN KEY (id_adress) REFERENCES public.adress(id) NOT VALID;
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT id_adress;
       public          postgres    false    209    217    3230            �           2606    32876    projet id_chefprojet    FK CONSTRAINT     �   ALTER TABLE ONLY public.projet
    ADD CONSTRAINT id_chefprojet FOREIGN KEY (id_chefprojet) REFERENCES public."chefProjet"(id) NOT VALID;
 >   ALTER TABLE ONLY public.projet DROP CONSTRAINT id_chefprojet;
       public          postgres    false    212    218    3222            �           2606    32932    chefProjet id_division    FK CONSTRAINT     �   ALTER TABLE ONLY public."chefProjet"
    ADD CONSTRAINT id_division FOREIGN KEY (id_division) REFERENCES public.division(id) NOT VALID;
 B   ALTER TABLE ONLY public."chefProjet" DROP CONSTRAINT id_division;
       public          postgres    false    3240    222    212            �           2606    32937    chefDivision id_division    FK CONSTRAINT     �   ALTER TABLE ONLY public."chefDivision"
    ADD CONSTRAINT id_division FOREIGN KEY (id_division) REFERENCES public.division(id) NOT VALID;
 D   ALTER TABLE ONLY public."chefDivision" DROP CONSTRAINT id_division;
       public          postgres    false    222    3240    210            �           2606    32915    salary id_equipe    FK CONSTRAINT     u   ALTER TABLE ONLY public.salary
    ADD CONSTRAINT id_equipe FOREIGN KEY (id) REFERENCES public.equipe(id) NOT VALID;
 :   ALTER TABLE ONLY public.salary DROP CONSTRAINT id_equipe;
       public          postgres    false    211    3238    221            �           2606    32888    task id_project    FK CONSTRAINT     |   ALTER TABLE ONLY public.task
    ADD CONSTRAINT id_project FOREIGN KEY (id_project) REFERENCES public.projet(id) NOT VALID;
 9   ALTER TABLE ONLY public.task DROP CONSTRAINT id_project;
       public          postgres    false    3232    218    219            �           2606    32856    user id_role    FK CONSTRAINT     v   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT id_role FOREIGN KEY (id_role) REFERENCES public.role(id) NOT VALID;
 8   ALTER TABLE ONLY public."user" DROP CONSTRAINT id_role;
       public          postgres    false    216    3228    209            �           2606    32893    task id_salary    FK CONSTRAINT     z   ALTER TABLE ONLY public.task
    ADD CONSTRAINT id_salary FOREIGN KEY (id_salary) REFERENCES public.salary(id) NOT VALID;
 8   ALTER TABLE ONLY public.task DROP CONSTRAINT id_salary;
       public          postgres    false    3220    211    219            �           2606    32905    material id_salary    FK CONSTRAINT     ~   ALTER TABLE ONLY public.material
    ADD CONSTRAINT id_salary FOREIGN KEY (id_salary) REFERENCES public.salary(id) NOT VALID;
 <   ALTER TABLE ONLY public.material DROP CONSTRAINT id_salary;
       public          postgres    false    211    3220    220            B      x������ � �      E      x������ � �      >      x������ � �      @      x������ � �      A      x������ � �      J      x������ � �      I      x������ � �      H      x������ � �      F      x������ � �      D      x������ � �      ?      x������ � �      C      x������ � �      G      x������ � �      =      x������ � �     