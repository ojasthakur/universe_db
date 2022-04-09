--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: age_of_planets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.age_of_planets (
    name character varying(30) NOT NULL,
    age integer NOT NULL,
    age_of_planets_id integer NOT NULL
);


ALTER TABLE public.age_of_planets OWNER TO freecodecamp;

--
-- Name: age_of_planets_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.age_of_planets_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.age_of_planets_planet_id_seq OWNER TO freecodecamp;

--
-- Name: age_of_planets_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.age_of_planets_planet_id_seq OWNED BY public.age_of_planets.age_of_planets_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth_in_kly integer,
    description text
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
    name character varying(30) NOT NULL,
    planet_id integer,
    is_spherical boolean,
    mass numeric(10,5)
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
    name character varying(30) NOT NULL,
    mass numeric(10,5),
    planet_id integer NOT NULL,
    star_id integer,
    has_life boolean
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
    name character varying(30) NOT NULL,
    galaxy_id integer,
    type text,
    distance_from_earth_in_au integer
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
-- Name: age_of_planets age_of_planets_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.age_of_planets ALTER COLUMN age_of_planets_id SET DEFAULT nextval('public.age_of_planets_planet_id_seq'::regclass);


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
-- Data for Name: age_of_planets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.age_of_planets VALUES ('Earth', 4, 1);
INSERT INTO public.age_of_planets VALUES ('Mars', 3, 2);
INSERT INTO public.age_of_planets VALUES ('Saturn', 10, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 10010, 2537, 'nice galaxy');
INSERT INTO public.galaxy VALUES (3, 'Sunflower Galaxy', 13280, 27000, 'looks like a sunflower');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 400, 23160, 'shaped like a whirlpool');
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13610, 0, 'our very own galaxy');
INSERT INTO public.galaxy VALUES (5, 'Eye Of Sauron', 13250, 61970, 'dangerous eye better avoid');
INSERT INTO public.galaxy VALUES (6, 'Black Eye Galaxy', 13280, 24010, 'full of black eyes!');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, true, 7.34760);
INSERT INTO public.moon VALUES (2, 'Europa', 5, true, 0.00800);
INSERT INTO public.moon VALUES (3, 'Titan', 6, true, 0.02250);
INSERT INTO public.moon VALUES (4, 'Io', 5, true, 0.01500);
INSERT INTO public.moon VALUES (5, 'Calisto', 5, true, 0.01800);
INSERT INTO public.moon VALUES (6, 'Enceladus', 6, true, 0.00002);
INSERT INTO public.moon VALUES (7, 'Mimas', 6, true, 0.00001);
INSERT INTO public.moon VALUES (8, 'Charon', 9, true, 0.00027);
INSERT INTO public.moon VALUES (9, 'Titania', 8, true, 0.00058);
INSERT INTO public.moon VALUES (10, 'Tethys', 6, true, 0.00010);
INSERT INTO public.moon VALUES (11, 'Dione', 6, true, 0.00018);
INSERT INTO public.moon VALUES (12, 'Oberon', 8, true, 0.00051);
INSERT INTO public.moon VALUES (13, 'Ganymede', 5, true, 0.02500);
INSERT INTO public.moon VALUES (14, 'Mixar', 10, false, 0.19200);
INSERT INTO public.moon VALUES (15, 'Suckoor', 12, false, 1.29000);
INSERT INTO public.moon VALUES (16, 'Renata', 11, true, 2.50000);
INSERT INTO public.moon VALUES (17, 'Kuranga', 10, true, 0.00500);
INSERT INTO public.moon VALUES (18, 'Mantis', 12, false, 0.99000);
INSERT INTO public.moon VALUES (19, 'Horus', 12, false, 5.00000);
INSERT INTO public.moon VALUES (20, 'Krasti', 11, true, 10.00000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Earth', 5.97200, 1, 1, true);
INSERT INTO public.planet VALUES ('Mercury', 3.28500, 2, 1, false);
INSERT INTO public.planet VALUES ('Venus', 48.67000, 3, 1, false);
INSERT INTO public.planet VALUES ('Mars', 6.39000, 4, 1, true);
INSERT INTO public.planet VALUES ('Jupiter', 18981.00000, 5, 1, false);
INSERT INTO public.planet VALUES ('Saturn', 5683.00000, 6, 1, false);
INSERT INTO public.planet VALUES ('Neptune', 1024.00000, 7, 1, false);
INSERT INTO public.planet VALUES ('Uranus', 868.10000, 8, 1, false);
INSERT INTO public.planet VALUES ('Pluto', 0.13090, 9, 1, false);
INSERT INTO public.planet VALUES ('Saffar', 0.68760, 10, 2, false);
INSERT INTO public.planet VALUES ('Samh', 1.98100, 11, 2, false);
INSERT INTO public.planet VALUES ('Majriti', 10.25000, 12, 2, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'G-type main-sequence star', 1);
INSERT INTO public.star VALUES (2, 'Alpha Andromedae', 2, 'B-type star', 6126163);
INSERT INTO public.star VALUES (3, 'Upsilon Andromedae', 2, 'Spectral type F8V star', 2799050);
INSERT INTO public.star VALUES (4, 'Antares', 1, 'Red Super Giant star', 34150000);
INSERT INTO public.star VALUES (5, '51 Andromadae', 2, 'Orange K-type giant star', 11190000);
INSERT INTO public.star VALUES (6, 'Alpha Canis Majoris', 1, 'binary star', 544568);


--
-- Name: age_of_planets_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.age_of_planets_planet_id_seq', 3, true);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: age_of_planets age_of_planets_age_of_planets_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.age_of_planets
    ADD CONSTRAINT age_of_planets_age_of_planets_id_key UNIQUE (age_of_planets_id);


--
-- Name: age_of_planets age_of_planets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.age_of_planets
    ADD CONSTRAINT age_of_planets_pkey PRIMARY KEY (age_of_planets_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

