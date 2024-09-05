--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8
-- Dumped by pg_dump version 16.4

-- Started on 2024-09-05 21:20:19

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
-- TOC entry 3344 (class 1262 OID 16397)
-- Name: aikom; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE aikom WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';


ALTER DATABASE aikom OWNER TO postgres;

\connect aikom

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
-- TOC entry 215 (class 1259 OID 16399)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    first_name character varying(255),
    second_name character varying(255)
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16398)
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.customers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 217 (class 1259 OID 16407)
-- Name: items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.items (
    id integer NOT NULL,
    name character varying(255),
    price real
);


ALTER TABLE public.items OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16406)
-- Name: items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.items ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 16413)
-- Name: purchases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.purchases (
    id integer NOT NULL,
    customer_id integer,
    item_id integer,
    purchase_date date
);


ALTER TABLE public.purchases OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16412)
-- Name: purchases_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.purchases ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.purchases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 3334 (class 0 OID 16399)
-- Dependencies: 215
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.customers (id, first_name, second_name) OVERRIDING SYSTEM VALUE VALUES (1, 'John', 'Doe');
INSERT INTO public.customers (id, first_name, second_name) OVERRIDING SYSTEM VALUE VALUES (2, 'Elizabeth', 'Grant');
INSERT INTO public.customers (id, first_name, second_name) OVERRIDING SYSTEM VALUE VALUES (3, 'Ada', 'Lovelace');
INSERT INTO public.customers (id, first_name, second_name) OVERRIDING SYSTEM VALUE VALUES (4, 'Brad', 'Pitt');


--
-- TOC entry 3336 (class 0 OID 16407)
-- Dependencies: 217
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.items (id, name, price) OVERRIDING SYSTEM VALUE VALUES (1, 'concrete', 3.55);
INSERT INTO public.items (id, name, price) OVERRIDING SYSTEM VALUE VALUES (2, 'chocolate', 1.01);
INSERT INTO public.items (id, name, price) OVERRIDING SYSTEM VALUE VALUES (3, 'still water', 0.002);
INSERT INTO public.items (id, name, price) OVERRIDING SYSTEM VALUE VALUES (4, 'sea water', 0.5);
INSERT INTO public.items (id, name, price) OVERRIDING SYSTEM VALUE VALUES (5, 'battery', 1.78);
INSERT INTO public.items (id, name, price) OVERRIDING SYSTEM VALUE VALUES (6, 'dye', 2.27);


--
-- TOC entry 3338 (class 0 OID 16413)
-- Dependencies: 219
-- Data for Name: purchases; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.purchases (id, customer_id, item_id, purchase_date) OVERRIDING SYSTEM VALUE VALUES (1, 1, 4, '1992-05-15');
INSERT INTO public.purchases (id, customer_id, item_id, purchase_date) OVERRIDING SYSTEM VALUE VALUES (2, 2, 5, '2024-09-05');
INSERT INTO public.purchases (id, customer_id, item_id, purchase_date) OVERRIDING SYSTEM VALUE VALUES (9, 1, 1, '2020-07-10');
INSERT INTO public.purchases (id, customer_id, item_id, purchase_date) OVERRIDING SYSTEM VALUE VALUES (10, 4, 2, '2022-04-09');
INSERT INTO public.purchases (id, customer_id, item_id, purchase_date) OVERRIDING SYSTEM VALUE VALUES (11, 1, 4, '1977-08-22');
INSERT INTO public.purchases (id, customer_id, item_id, purchase_date) OVERRIDING SYSTEM VALUE VALUES (12, 2, 4, '2005-07-08');
INSERT INTO public.purchases (id, customer_id, item_id, purchase_date) OVERRIDING SYSTEM VALUE VALUES (13, 3, 6, '2012-03-16');
INSERT INTO public.purchases (id, customer_id, item_id, purchase_date) OVERRIDING SYSTEM VALUE VALUES (14, 1, 2, '19991-11-21');


--
-- TOC entry 3345 (class 0 OID 0)
-- Dependencies: 214
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 4, true);


--
-- TOC entry 3346 (class 0 OID 0)
-- Dependencies: 216
-- Name: items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.items_id_seq', 6, true);


--
-- TOC entry 3347 (class 0 OID 0)
-- Dependencies: 218
-- Name: purchases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.purchases_id_seq', 14, true);


--
-- TOC entry 3184 (class 2606 OID 16405)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 3186 (class 2606 OID 16411)
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);


--
-- TOC entry 3188 (class 2606 OID 16417)
-- Name: purchases purchases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_pkey PRIMARY KEY (id);


--
-- TOC entry 3189 (class 2606 OID 16418)
-- Name: purchases purchases_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id);


--
-- TOC entry 3190 (class 2606 OID 16423)
-- Name: purchases purchases_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.items(id);


-- Completed on 2024-09-05 21:20:20

--
-- PostgreSQL database dump complete
--

