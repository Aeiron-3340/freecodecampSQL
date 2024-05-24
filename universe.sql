--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: deleted; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.deleted (
    deleted_id integer NOT NULL,
    exploded text NOT NULL,
    name character varying(10)
);


ALTER TABLE public.deleted OWNER TO freecodecamp;

--
-- Name: deleted_deleted_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.deleted_deleted_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.deleted_deleted_id_seq OWNER TO freecodecamp;

--
-- Name: deleted_deleted_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.deleted_deleted_id_seq OWNED BY public.deleted.deleted_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(32) NOT NULL,
    number_of_black_holes integer NOT NULL,
    is_round boolean NOT NULL,
    code_name character varying(32) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(32) NOT NULL,
    weight numeric NOT NULL,
    planet_id integer NOT NULL,
    code_name character varying(32) NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(32) NOT NULL,
    weight numeric NOT NULL,
    has_water boolean NOT NULL,
    star_id integer NOT NULL,
    code_name character varying(32) NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(32) NOT NULL,
    size integer NOT NULL,
    galaxy_id integer NOT NULL,
    code_name character varying(32) NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: deleted deleted_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.deleted ALTER COLUMN deleted_id SET DEFAULT nextval('public.deleted_deleted_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: deleted; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.deleted VALUES (1, 'line', 'helloss');
INSERT INTO public.deleted VALUES (4, 'linde', 'hellosss');
INSERT INTO public.deleted VALUES (5, 'lindde', 'hellosss');
INSERT INTO public.deleted VALUES (6, 'linddde', 'hellosss');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'hello', 8, true, 'Help');
INSERT INTO public.galaxy VALUES (2, 'hello2', 9, false, 'Halp');
INSERT INTO public.galaxy VALUES (3, 'hellos', 90, true, 'Helps');
INSERT INTO public.galaxy VALUES (4, 'helloss', 90, true, 'Helpss');
INSERT INTO public.galaxy VALUES (6, 'helloss', 90, true, 'Helpsss');
INSERT INTO public.galaxy VALUES (7, 'helloss', 90, true, 'Helpssss');
INSERT INTO public.galaxy VALUES (8, 'helloss', 90, true, 'Helpsssss');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'helloss', 90, 1, 'sshsddsdffdadfasdgfcvaas');
INSERT INTO public.moon VALUES (2, 'helloss', 90, 1, 'sshsddsdffdadfasdgfcvasas');
INSERT INTO public.moon VALUES (3, 'helloss', 90, 1, 'sshsddsdffdadfasdgfcvasass');
INSERT INTO public.moon VALUES (4, 'helloss', 90, 1, '1');
INSERT INTO public.moon VALUES (5, 'helloss', 90, 1, '12');
INSERT INTO public.moon VALUES (6, 'helloss', 90, 1, '123');
INSERT INTO public.moon VALUES (7, 'helloss', 90, 1, '1234');
INSERT INTO public.moon VALUES (8, 'helloss', 90, 1, '12345');
INSERT INTO public.moon VALUES (9, 'helloss', 90, 1, '123456');
INSERT INTO public.moon VALUES (10, 'helloss', 90, 1, '1234567');
INSERT INTO public.moon VALUES (11, 'helloss', 90, 1, '8');
INSERT INTO public.moon VALUES (12, 'helloss', 90, 1, '9');
INSERT INTO public.moon VALUES (13, 'helloss', 90, 1, '10');
INSERT INTO public.moon VALUES (14, 'helloss', 90, 1, '11');
INSERT INTO public.moon VALUES (16, 'helloss', 90, 1, '13');
INSERT INTO public.moon VALUES (17, 'helloss', 90, 1, '14');
INSERT INTO public.moon VALUES (18, 'helloss', 90, 1, '15');
INSERT INTO public.moon VALUES (19, 'helloss', 90, 1, '16');
INSERT INTO public.moon VALUES (20, 'helloss', 90, 1, '17');
INSERT INTO public.moon VALUES (21, 'helloss', 90, 1, '19');
INSERT INTO public.moon VALUES (22, 'helloss', 90, 1, '190');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'helloss', 90, true, 1, 'Hssd');
INSERT INTO public.planet VALUES (2, 'helloss', 90, true, 1, 'Hsdfssd');
INSERT INTO public.planet VALUES (3, 'helloss', 90, true, 1, 'Hsdfssdsdf');
INSERT INTO public.planet VALUES (5, 'helloss', 90, true, 6, 'Hsdfssdf');
INSERT INTO public.planet VALUES (6, 'helloss', 90, true, 5, 'sHsdfssdf');
INSERT INTO public.planet VALUES (7, 'helloss', 90, true, 5, 'sHsdfssd');
INSERT INTO public.planet VALUES (10, 'helloss', 90, true, 2, 'shsdfssd');
INSERT INTO public.planet VALUES (11, 'helloss', 90, true, 8, 'sshsdfssd');
INSERT INTO public.planet VALUES (12, 'helloss', 90, true, 8, 'sshsdfsssdfd');
INSERT INTO public.planet VALUES (13, 'helloss', 90, true, 8, 'sshsdfsssdsdffd');
INSERT INTO public.planet VALUES (14, 'helloss', 90, true, 8, 'sshsdfsssdsdffds');
INSERT INTO public.planet VALUES (15, 'helloss', 90, true, 8, 'sshsddsdffds');
INSERT INTO public.planet VALUES (16, 'helloss', 90, true, 8, 'sshsddsdffdadfas');
INSERT INTO public.planet VALUES (17, 'helloss', 90, true, 8, 'sshsddsdffdadfasdgfaas');
INSERT INTO public.planet VALUES (18, 'helloss', 90, true, 8, 'sshsddsdffdadfasdgfcvaas');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'helloss', 90, 1, 'Helpsssss');
INSERT INTO public.star VALUES (2, 'helloss', 90, 1, 'Hel');
INSERT INTO public.star VALUES (5, 'helloss', 90, 2, 'Hels');
INSERT INTO public.star VALUES (6, 'helloss', 90, 2, 'Helsd');
INSERT INTO public.star VALUES (7, 'helloss', 90, 4, 'Hselsd');
INSERT INTO public.star VALUES (8, 'helloss', 90, 4, 'Hseslsd');
INSERT INTO public.star VALUES (9, 'helloss', 90, 4, 'Hseslssd');
INSERT INTO public.star VALUES (10, 'helloss', 90, 6, 'Hssd');


--
-- Name: deleted_deleted_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.deleted_deleted_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: deleted deleted_exploded_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.deleted
    ADD CONSTRAINT deleted_exploded_key UNIQUE (exploded);


--
-- Name: deleted deleted_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.deleted
    ADD CONSTRAINT deleted_pkey PRIMARY KEY (deleted_id);


--
-- Name: galaxy galaxy_code_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_code_name_key UNIQUE (code_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_code_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_code_name_key UNIQUE (code_name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_code_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_code_name_key UNIQUE (code_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_code_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_code_name_key UNIQUE (code_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

