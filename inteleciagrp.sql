--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

-- Started on 2021-12-15 12:13:55

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
-- TOC entry 209 (class 1259 OID 32769)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
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


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 32796)
-- Name: RH; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RH" (
)
INHERITS (public."user");


ALTER TABLE public."RH" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 32813)
-- Name: adress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.adress (
    id integer NOT NULL,
    country text,
    ville text,
    code_postal integer
);


ALTER TABLE public.adress OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 32776)
-- Name: chefDivision; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."chefDivision" (
    id_division integer
)
INHERITS (public."user");


ALTER TABLE public."chefDivision" OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 32786)
-- Name: chefProjet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."chefProjet" (
    id_division integer
)
INHERITS (public."user");


ALTER TABLE public."chefProjet" OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 32791)
-- Name: client; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.client (
    activiter text,
    contact text,
    fax integer
)
INHERITS (public."user");


ALTER TABLE public.client OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 32920)
-- Name: division; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.division (
    id integer NOT NULL,
    chifre_affaire double precision,
    raisson_social text
);


ALTER TABLE public.division OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 32910)
-- Name: equipe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.equipe (
    id integer NOT NULL,
    numero integer,
    nombre_employers integer
);


ALTER TABLE public.equipe OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 32898)
-- Name: material; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.material (
    id integer NOT NULL,
    numero integer,
    nom text,
    reference_constructeur text,
    type text,
    id_salary integer
);


ALTER TABLE public.material OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 32862)
-- Name: projet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.projet (
    id integer NOT NULL,
    date_deadline date,
    theme text,
    numero integer,
    libelle text,
    date_debut date,
    date_fin date,
    id_chefprojet integer
);


ALTER TABLE public.projet OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 32806)
-- Name: role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role (
    id integer NOT NULL,
    name_role text
);


ALTER TABLE public.role OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 32781)
-- Name: salary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salary (
    function text,
    renumeration text,
    specialisation text,
    id_equipe integer
)
INHERITS (public."user");


ALTER TABLE public.salary OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 32801)
-- Name: superViseur; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."superViseur" (
)
INHERITS (public."user");


ALTER TABLE public."superViseur" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 32881)
-- Name: task; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.task (
    id integer NOT NULL,
    nom text,
    date_debut date,
    date_fin date,
    status boolean,
    id_project integer,
    id_salary integer
);


ALTER TABLE public.task OWNER TO postgres;

--
-- TOC entry 3394 (class 0 OID 32796)
-- Dependencies: 214
-- Data for Name: RH; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RH" (id, nom, prenom, email, numero, telephone, password, status, id_role, id_adress) FROM stdin;
\.


--
-- TOC entry 3397 (class 0 OID 32813)
-- Dependencies: 217
-- Data for Name: adress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.adress (id, country, ville, code_postal) FROM stdin;
\.


--
-- TOC entry 3390 (class 0 OID 32776)
-- Dependencies: 210
-- Data for Name: chefDivision; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."chefDivision" (id, nom, prenom, email, numero, telephone, password, status, id_role, id_division, id_adress) FROM stdin;
\.


--
-- TOC entry 3392 (class 0 OID 32786)
-- Dependencies: 212
-- Data for Name: chefProjet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."chefProjet" (id, nom, prenom, email, numero, telephone, password, status, id_role, id_division, id_adress) FROM stdin;
\.


--
-- TOC entry 3393 (class 0 OID 32791)
-- Dependencies: 213
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.client (id, nom, prenom, email, numero, telephone, password, status, activiter, contact, fax, id_role, id_adress) FROM stdin;
\.


--
-- TOC entry 3402 (class 0 OID 32920)
-- Dependencies: 222
-- Data for Name: division; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.division (id, chifre_affaire, raisson_social) FROM stdin;
\.


--
-- TOC entry 3401 (class 0 OID 32910)
-- Dependencies: 221
-- Data for Name: equipe; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.equipe (id, numero, nombre_employers) FROM stdin;
\.


--
-- TOC entry 3400 (class 0 OID 32898)
-- Dependencies: 220
-- Data for Name: material; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.material (id, numero, nom, reference_constructeur, type, id_salary) FROM stdin;
\.


--
-- TOC entry 3398 (class 0 OID 32862)
-- Dependencies: 218
-- Data for Name: projet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.projet (id, date_deadline, theme, numero, libelle, date_debut, date_fin, id_chefprojet) FROM stdin;
\.


--
-- TOC entry 3396 (class 0 OID 32806)
-- Dependencies: 216
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.role (id, name_role) FROM stdin;
\.


--
-- TOC entry 3391 (class 0 OID 32781)
-- Dependencies: 211
-- Data for Name: salary; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.salary (id, nom, prenom, email, numero, telephone, password, status, function, renumeration, specialisation, id_role, id_equipe, id_adress) FROM stdin;
\.


--
-- TOC entry 3395 (class 0 OID 32801)
-- Dependencies: 215
-- Data for Name: superViseur; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."superViseur" (id, nom, prenom, email, numero, telephone, password, status, id_role, id_adress) FROM stdin;
\.


--
-- TOC entry 3399 (class 0 OID 32881)
-- Dependencies: 219
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.task (id, nom, date_debut, date_fin, status, id_project, id_salary) FROM stdin;
\.


--
-- TOC entry 3389 (class 0 OID 32769)
-- Dependencies: 209
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."user" (id, nom, prenom, email, numero, telephone, password, status, id_role, id_adress) FROM stdin;
\.


--
-- TOC entry 3226 (class 2606 OID 32836)
-- Name: RH RH_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RH"
    ADD CONSTRAINT "RH_pkey" PRIMARY KEY (id);


--
-- TOC entry 3230 (class 2606 OID 32819)
-- Name: adress adress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adress
    ADD CONSTRAINT adress_pkey PRIMARY KEY (id);


--
-- TOC entry 3218 (class 2606 OID 32834)
-- Name: chefDivision chefDivision_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."chefDivision"
    ADD CONSTRAINT "chefDivision_pkey" PRIMARY KEY (id);


--
-- TOC entry 3222 (class 2606 OID 32832)
-- Name: chefProjet chefProjet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."chefProjet"
    ADD CONSTRAINT "chefProjet_pkey" PRIMARY KEY (id);


--
-- TOC entry 3224 (class 2606 OID 32830)
-- Name: client client_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);


--
-- TOC entry 3240 (class 2606 OID 32926)
-- Name: division division_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.division
    ADD CONSTRAINT division_pkey PRIMARY KEY (id);


--
-- TOC entry 3238 (class 2606 OID 32914)
-- Name: equipe equipe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipe
    ADD CONSTRAINT equipe_pkey PRIMARY KEY (id);


--
-- TOC entry 3236 (class 2606 OID 32904)
-- Name: material material_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material
    ADD CONSTRAINT material_pkey PRIMARY KEY (id);


--
-- TOC entry 3232 (class 2606 OID 32868)
-- Name: projet projet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projet
    ADD CONSTRAINT projet_pkey PRIMARY KEY (id);


--
-- TOC entry 3228 (class 2606 OID 32812)
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (id);


--
-- TOC entry 3220 (class 2606 OID 32828)
-- Name: salary salary_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salary
    ADD CONSTRAINT salary_pkey PRIMARY KEY (id);


--
-- TOC entry 3234 (class 2606 OID 32887)
-- Name: task task_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);


--
-- TOC entry 3216 (class 2606 OID 32775)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- TOC entry 3242 (class 2606 OID 32942)
-- Name: user id_adress; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT id_adress FOREIGN KEY (id_adress) REFERENCES public.adress(id) NOT VALID;


--
-- TOC entry 3246 (class 2606 OID 32876)
-- Name: projet id_chefprojet; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.projet
    ADD CONSTRAINT id_chefprojet FOREIGN KEY (id_chefprojet) REFERENCES public."chefProjet"(id) NOT VALID;


--
-- TOC entry 3245 (class 2606 OID 32932)
-- Name: chefProjet id_division; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."chefProjet"
    ADD CONSTRAINT id_division FOREIGN KEY (id_division) REFERENCES public.division(id) NOT VALID;


--
-- TOC entry 3243 (class 2606 OID 32937)
-- Name: chefDivision id_division; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."chefDivision"
    ADD CONSTRAINT id_division FOREIGN KEY (id_division) REFERENCES public.division(id) NOT VALID;


--
-- TOC entry 3244 (class 2606 OID 32915)
-- Name: salary id_equipe; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salary
    ADD CONSTRAINT id_equipe FOREIGN KEY (id) REFERENCES public.equipe(id) NOT VALID;


--
-- TOC entry 3247 (class 2606 OID 32888)
-- Name: task id_project; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task
    ADD CONSTRAINT id_project FOREIGN KEY (id_project) REFERENCES public.projet(id) NOT VALID;


--
-- TOC entry 3241 (class 2606 OID 32856)
-- Name: user id_role; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT id_role FOREIGN KEY (id_role) REFERENCES public.role(id) NOT VALID;


--
-- TOC entry 3248 (class 2606 OID 32893)
-- Name: task id_salary; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.task
    ADD CONSTRAINT id_salary FOREIGN KEY (id_salary) REFERENCES public.salary(id) NOT VALID;


--
-- TOC entry 3249 (class 2606 OID 32905)
-- Name: material id_salary; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material
    ADD CONSTRAINT id_salary FOREIGN KEY (id_salary) REFERENCES public.salary(id) NOT VALID;


-- Completed on 2021-12-15 12:13:55

--
-- PostgreSQL database dump complete
--

