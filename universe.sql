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
-- Name: blacknebula; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.blacknebula (
    blacknebula_id integer NOT NULL,
    gravity integer,
    galaxy_id integer,
    wormhole boolean DEFAULT false NOT NULL
);


ALTER TABLE public.blacknebula OWNER TO freecodecamp;

--
-- Name: blacknebula_blacknebula_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.blacknebula_blacknebula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blacknebula_blacknebula_id_seq OWNER TO freecodecamp;

--
-- Name: blacknebula_blacknebula_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.blacknebula_blacknebula_id_seq OWNED BY public.blacknebula.blacknebula_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    speed integer,
    description text,
    name character varying(255) NOT NULL,
    rotation_speed integer DEFAULT 100000 NOT NULL
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
    name character varying(255) NOT NULL,
    has_water boolean NOT NULL,
    planet_id integer NOT NULL,
    name_code character varying(255) NOT NULL
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
    name character varying(255) NOT NULL,
    amount_of_people numeric,
    time_travel boolean DEFAULT false NOT NULL,
    star_id integer NOT NULL
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
    radius integer NOT NULL,
    color character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: start_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.start_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.start_star_id_seq OWNER TO freecodecamp;

--
-- Name: start_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.start_star_id_seq OWNED BY public.star.star_id;


--
-- Name: blacknebula blacknebula_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blacknebula ALTER COLUMN blacknebula_id SET DEFAULT nextval('public.blacknebula_blacknebula_id_seq'::regclass);


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

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.start_star_id_seq'::regclass);


--
-- Data for Name: blacknebula; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, 'adonis', 100000);
INSERT INTO public.galaxy VALUES (2, NULL, NULL, 'galaxy2', 100000);
INSERT INTO public.galaxy VALUES (3, NULL, NULL, 'galaxy3', 100000);
INSERT INTO public.galaxy VALUES (4, NULL, NULL, 'galaxy4', 100000);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 'galaxy5', 100000);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, 'galaxy6', 100000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', true, 2, 'moon1');
INSERT INTO public.moon VALUES (2, 'moon2', true, 2, 'moon2');
INSERT INTO public.moon VALUES (3, 'moon3', false, 2, 'moon3');
INSERT INTO public.moon VALUES (4, 'moon4', false, 2, 'moon4');
INSERT INTO public.moon VALUES (5, 'moon5', true, 2, 'moon5');
INSERT INTO public.moon VALUES (6, 'moon6', true, 2, 'moon6');
INSERT INTO public.moon VALUES (7, 'moon7', true, 2, 'moon7');
INSERT INTO public.moon VALUES (8, 'moon8', true, 2, 'moon8');
INSERT INTO public.moon VALUES (9, 'moon9', true, 2, 'moon9');
INSERT INTO public.moon VALUES (10, 'moon10', true, 2, 'moon10');
INSERT INTO public.moon VALUES (11, 'moon11', true, 2, 'moon11');
INSERT INTO public.moon VALUES (12, 'moon12', true, 2, 'moon12');
INSERT INTO public.moon VALUES (13, 'moon13', true, 2, 'moon13');
INSERT INTO public.moon VALUES (14, 'moon14', true, 2, 'moon14');
INSERT INTO public.moon VALUES (15, 'moon15', true, 2, 'moon15');
INSERT INTO public.moon VALUES (16, 'moon16', true, 2, 'moon16');
INSERT INTO public.moon VALUES (17, 'moon17', true, 2, 'moon17');
INSERT INTO public.moon VALUES (18, 'moon18', true, 2, 'moon18');
INSERT INTO public.moon VALUES (19, 'moon19', true, 2, 'moon19');
INSERT INTO public.moon VALUES (20, 'moon20', true, 2, 'moon20');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mars', NULL, false, 1);
INSERT INTO public.planet VALUES (2, 'jupiter', NULL, false, 1);
INSERT INTO public.planet VALUES (3, 'pluto', NULL, false, 1);
INSERT INTO public.planet VALUES (4, 'uranus', NULL, false, 1);
INSERT INTO public.planet VALUES (5, 'neptune', NULL, false, 1);
INSERT INTO public.planet VALUES (6, 'earth', NULL, false, 1);
INSERT INTO public.planet VALUES (7, 'mercury', NULL, false, 1);
INSERT INTO public.planet VALUES (8, 'saturn', NULL, false, 1);
INSERT INTO public.planet VALUES (9, 'venus', NULL, false, 1);
INSERT INTO public.planet VALUES (10, 'nebula', NULL, false, 1);
INSERT INTO public.planet VALUES (11, 'stargaze', NULL, false, 1);
INSERT INTO public.planet VALUES (12, 'lightblaze', NULL, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 23456123, 'blue', 'mantischap', 1);
INSERT INTO public.star VALUES (2, 23456123, 'red', 'flymock', 1);
INSERT INTO public.star VALUES (4, 23456123, 'yellow', 'beespirit', 1);
INSERT INTO public.star VALUES (5, 23456123, 'orange', 'gare', 1);
INSERT INTO public.star VALUES (6, 23456123, 'purple', 'crowspirit', 1);
INSERT INTO public.star VALUES (3, 23456123, 'pink', 'falconmaze', 1);


--
-- Name: blacknebula_blacknebula_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.blacknebula_blacknebula_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: start_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.start_star_id_seq', 8, true);


--
-- Name: blacknebula blacknebula_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.blacknebula
    ADD CONSTRAINT blacknebula_pkey PRIMARY KEY (blacknebula_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_code_key UNIQUE (name_code);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (name);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (name);


--
-- Name: star start_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT start_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


-- Name: star start_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT start_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

