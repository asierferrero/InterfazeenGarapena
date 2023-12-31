--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 15.4

-- Started on 2023-11-05 18:31:52

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

--
-- TOC entry 6 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

-- *not* creating schema, since initdb creates it


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 202 (class 1259 OID 19649)
-- Name: Elikagaia; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Elikagaia" (
    "Id" integer NOT NULL,
    "Izena" character varying(50) NOT NULL,
    "Marka" character varying(50) NOT NULL
);


--
-- TOC entry 203 (class 1259 OID 19654)
-- Name: Elikagaia_Id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public."Elikagaia" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Elikagaia_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 206 (class 1259 OID 19663)
-- Name: Informazioa; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Informazioa" (
    "Id" integer NOT NULL,
    "OsagaiaId" integer NOT NULL,
    "Urtea" integer NOT NULL,
    "Kantitatea" integer,
    "ElikagaiaId" integer NOT NULL
);


--
-- TOC entry 207 (class 1259 OID 19668)
-- Name: Informazioa_Id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public."Informazioa" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Informazioa_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 204 (class 1259 OID 19656)
-- Name: Osagaia; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Osagaia" (
    "Id" integer NOT NULL,
    "Izena" character varying(50) NOT NULL,
    "Unitatea" character varying(50) NOT NULL,
    "Konparaketa" integer
);


--
-- TOC entry 205 (class 1259 OID 19661)
-- Name: Osagaia_Id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public."Osagaia" ALTER COLUMN "Id" ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public."Osagaia_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 2834 (class 0 OID 19649)
-- Dependencies: 202
-- Data for Name: Elikagaia; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Elikagaia" VALUES (1, 'Moldeko ogia', 'Silueta');
INSERT INTO public."Elikagaia" VALUES (2, 'Tomatea', 'Orlando');


--
-- TOC entry 2838 (class 0 OID 19663)
-- Dependencies: 206
-- Data for Name: Informazioa; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Informazioa" VALUES (9, 2, 2022, 11, 1);
INSERT INTO public."Informazioa" VALUES (10, 1, 2022, 100, 1);
INSERT INTO public."Informazioa" VALUES (11, 3, 2021, 60, 1);
INSERT INTO public."Informazioa" VALUES (12, 4, 2023, 12, 1);
INSERT INTO public."Informazioa" VALUES (13, 5, 2023, 20, 1);
INSERT INTO public."Informazioa" VALUES (14, 6, 2022, 1, 1);
INSERT INTO public."Informazioa" VALUES (15, 1, 2020, 90, 2);
INSERT INTO public."Informazioa" VALUES (16, 2, 2020, 5, 2);
INSERT INTO public."Informazioa" VALUES (17, 3, 2020, 50, 2);
INSERT INTO public."Informazioa" VALUES (18, 4, 2020, 15, 2);
INSERT INTO public."Informazioa" VALUES (19, 5, 2020, 10, 2);
INSERT INTO public."Informazioa" VALUES (20, 6, 2020, 6, 2);


--
-- TOC entry 2836 (class 0 OID 19656)
-- Dependencies: 204
-- Data for Name: Osagaia; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public."Osagaia" VALUES (1, 'Energia', 'Kaloria', 200);
INSERT INTO public."Osagaia" VALUES (2, 'Koipea', 'gramo', 10);
INSERT INTO public."Osagaia" VALUES (3, 'Karbohidratoak', 'gramo', 30);
INSERT INTO public."Osagaia" VALUES (4, 'Azukreak', 'gramo', 9);
INSERT INTO public."Osagaia" VALUES (5, 'Proteinak', 'gramo', 26);
INSERT INTO public."Osagaia" VALUES (6, 'Gatza', 'gramo', 3);


--
-- TOC entry 2846 (class 0 OID 0)
-- Dependencies: 203
-- Name: Elikagaia_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Elikagaia_Id_seq"', 2, true);


--
-- TOC entry 2847 (class 0 OID 0)
-- Dependencies: 207
-- Name: Informazioa_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Informazioa_Id_seq"', 20, true);


--
-- TOC entry 2848 (class 0 OID 0)
-- Dependencies: 205
-- Name: Osagaia_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Osagaia_Id_seq"', 6, true);


--
-- TOC entry 2701 (class 2606 OID 19653)
-- Name: Elikagaia Elikagaia_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Elikagaia"
    ADD CONSTRAINT "Elikagaia_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 2705 (class 2606 OID 27841)
-- Name: Informazioa Informazioa_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Informazioa"
    ADD CONSTRAINT "Informazioa_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 2703 (class 2606 OID 19660)
-- Name: Osagaia Osagaia_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Osagaia"
    ADD CONSTRAINT "Osagaia_pkey" PRIMARY KEY ("Id");


--
-- TOC entry 2706 (class 2606 OID 27842)
-- Name: Informazioa Informazioa_ElikagaiaId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Informazioa"
    ADD CONSTRAINT "Informazioa_ElikagaiaId_fkey" FOREIGN KEY ("ElikagaiaId") REFERENCES public."Elikagaia"("Id") NOT VALID;


--
-- TOC entry 2707 (class 2606 OID 19675)
-- Name: Informazioa Informazioa_OsagaiaId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Informazioa"
    ADD CONSTRAINT "Informazioa_OsagaiaId_fkey" FOREIGN KEY ("OsagaiaId") REFERENCES public."Osagaia"("Id") NOT VALID;


--
-- TOC entry 2845 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: -
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2023-11-05 18:31:52

--
-- PostgreSQL database dump complete
--

