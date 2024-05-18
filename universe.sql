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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    distance integer,
    size integer,
    age integer,
    mass numeric,
    discovered boolean,
    visited boolean,
    nickname text NOT NULL
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
    name character varying NOT NULL,
    distance integer,
    size integer,
    age integer,
    mass numeric,
    discovered boolean,
    visited boolean,
    nickname text NOT NULL,
    planet_id integer
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
    name character varying NOT NULL,
    distance integer,
    size integer,
    age integer,
    mass numeric,
    discovered boolean,
    visited boolean,
    nickname text NOT NULL,
    star_id integer
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
-- Name: species; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.species (
    species_id integer NOT NULL,
    name character varying NOT NULL,
    distance integer,
    size integer,
    age integer,
    mass numeric,
    discovered boolean,
    visited boolean,
    nickname text NOT NULL,
    planet_id integer
);


ALTER TABLE public.species OWNER TO freecodecamp;

--
-- Name: species_species_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.species_species_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.species_species_id_seq OWNER TO freecodecamp;

--
-- Name: species_species_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.species_species_id_seq OWNED BY public.species.species_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    distance integer,
    size integer,
    age integer,
    mass numeric,
    discovered boolean,
    visited boolean,
    nickname text NOT NULL,
    galaxy_id integer
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
-- Name: species species_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species ALTER COLUMN species_id SET DEFAULT nextval('public.species_species_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (3, 'galaxy1', 1, 1, 1, 1, true, true, 'a');
INSERT INTO public.galaxy VALUES (4, 'galaxy2', 1, 1, 1, 1, true, true, 'b');
INSERT INTO public.galaxy VALUES (5, 'galaxy3', 1, 1, 1, 1, true, true, 'c');
INSERT INTO public.galaxy VALUES (6, 'galaxy4', 1, 1, 1, 1, true, true, 'd');
INSERT INTO public.galaxy VALUES (7, 'galaxy5', 1, 1, 1, 1, true, true, 'e');
INSERT INTO public.galaxy VALUES (8, 'galaxy6', 1, 1, 1, 1, true, true, 'f');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'galaxy1', 1, 1, 1, 1, true, true, 'a', 3);
INSERT INTO public.moon VALUES (2, 'galaxy2', 1, 1, 1, 1, true, true, 'b', 3);
INSERT INTO public.moon VALUES (3, 'galaxy3', 1, 1, 1, 1, true, true, 'c', 3);
INSERT INTO public.moon VALUES (4, 'galaxy4', 1, 1, 1, 1, true, true, 'd', 4);
INSERT INTO public.moon VALUES (5, 'galaxy5', 1, 1, 1, 1, true, true, 'e', 4);
INSERT INTO public.moon VALUES (6, 'galaxy6', 1, 1, 1, 1, true, true, 'f', 6);
INSERT INTO public.moon VALUES (7, 'galaxy7', 1, 1, 1, 1, true, true, 'aa', 7);
INSERT INTO public.moon VALUES (8, 'galaxy8', 1, 1, 1, 1, true, true, 'bb', 7);
INSERT INTO public.moon VALUES (9, 'galaxy9', 1, 1, 1, 1, true, true, 'cc', 8);
INSERT INTO public.moon VALUES (10, 'galaxy10', 1, 1, 1, 1, true, true, 'dd', 8);
INSERT INTO public.moon VALUES (11, 'galaxy11', 1, 1, 1, 1, true, true, 'ee', 8);
INSERT INTO public.moon VALUES (12, 'galaxy12', 1, 1, 1, 1, true, true, 'ff', 8);
INSERT INTO public.moon VALUES (13, 'galaxy5', 1, 1, 1, 1, true, true, 'eee', 4);
INSERT INTO public.moon VALUES (14, 'galaxy6', 1, 1, 1, 1, true, true, 'fff', 6);
INSERT INTO public.moon VALUES (15, 'galaxy7', 1, 1, 1, 1, true, true, 'aaa', 7);
INSERT INTO public.moon VALUES (16, 'galaxy8', 1, 1, 1, 1, true, true, 'bbb', 7);
INSERT INTO public.moon VALUES (17, 'galaxy9', 1, 1, 1, 1, true, true, 'ccc', 8);
INSERT INTO public.moon VALUES (18, 'galaxy10', 1, 1, 1, 1, true, true, 'ddd', 8);
INSERT INTO public.moon VALUES (19, 'galaxy11', 1, 1, 1, 1, true, true, 'eeee', 8);
INSERT INTO public.moon VALUES (20, 'galaxy12', 1, 1, 1, 1, true, true, 'ffff', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'galaxy1', 1, 1, 1, 1, true, true, 'a', 3);
INSERT INTO public.planet VALUES (2, 'galaxy2', 1, 1, 1, 1, true, true, 'b', 3);
INSERT INTO public.planet VALUES (3, 'galaxy3', 1, 1, 1, 1, true, true, 'c', 3);
INSERT INTO public.planet VALUES (4, 'galaxy4', 1, 1, 1, 1, true, true, 'd', 4);
INSERT INTO public.planet VALUES (5, 'galaxy5', 1, 1, 1, 1, true, true, 'e', 4);
INSERT INTO public.planet VALUES (6, 'galaxy6', 1, 1, 1, 1, true, true, 'f', 6);
INSERT INTO public.planet VALUES (7, 'galaxy7', 1, 1, 1, 1, true, true, 'aa', 7);
INSERT INTO public.planet VALUES (8, 'galaxy8', 1, 1, 1, 1, true, true, 'bb', 7);
INSERT INTO public.planet VALUES (9, 'galaxy9', 1, 1, 1, 1, true, true, 'cc', 8);
INSERT INTO public.planet VALUES (10, 'galaxy10', 1, 1, 1, 1, true, true, 'dd', 8);
INSERT INTO public.planet VALUES (11, 'galaxy11', 1, 1, 1, 1, true, true, 'ee', 8);
INSERT INTO public.planet VALUES (12, 'galaxy12', 1, 1, 1, 1, true, true, 'ff', 8);


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.species VALUES (1, 'galaxy9', 1, 1, 1, 1, true, true, 'cc', 8);
INSERT INTO public.species VALUES (2, 'galaxy10', 1, 1, 1, 1, true, true, 'dd', 8);
INSERT INTO public.species VALUES (3, 'galaxy11', 1, 1, 1, 1, true, true, 'ee', 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'galaxy1', 1, 1, 1, 1, true, true, 'a', 3);
INSERT INTO public.star VALUES (2, 'galaxy2', 1, 1, 1, 1, true, true, 'b', 3);
INSERT INTO public.star VALUES (3, 'galaxy3', 1, 1, 1, 1, true, true, 'c', 3);
INSERT INTO public.star VALUES (4, 'galaxy4', 1, 1, 1, 1, true, true, 'd', 4);
INSERT INTO public.star VALUES (5, 'galaxy5', 1, 1, 1, 1, true, true, 'e', 4);
INSERT INTO public.star VALUES (6, 'galaxy6', 1, 1, 1, 1, true, true, 'f', 6);
INSERT INTO public.star VALUES (7, 'galaxy7', 1, 1, 1, 1, true, true, 'aa', 7);
INSERT INTO public.star VALUES (8, 'galaxy8', 1, 1, 1, 1, true, true, 'bb', 7);
INSERT INTO public.star VALUES (9, 'galaxy9', 1, 1, 1, 1, true, true, 'cc', 8);
INSERT INTO public.star VALUES (10, 'galaxy10', 1, 1, 1, 1, true, true, 'dd', 8);
INSERT INTO public.star VALUES (11, 'galaxy11', 1, 1, 1, 1, true, true, 'ee', 8);
INSERT INTO public.star VALUES (12, 'galaxy12', 1, 1, 1, 1, true, true, 'ff', 8);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: species_species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.species_species_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: galaxy galaxy_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_nickname_key UNIQUE (nickname);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_nickname_key UNIQUE (nickname);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_nickname_key UNIQUE (nickname);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: species species_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_nickname_key UNIQUE (nickname);


--
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (species_id);


--
-- Name: star star_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_nickname_key UNIQUE (nickname);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: species species_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

