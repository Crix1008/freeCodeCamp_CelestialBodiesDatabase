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
-- Name: artifical_satelite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.artifical_satelite (
    artifical_satelite_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer
);


ALTER TABLE public.artifical_satelite OWNER TO freecodecamp;

--
-- Name: artifical_satelite_artifical_satelite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.artifical_satelite_artifical_satelite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artifical_satelite_artifical_satelite_id_seq OWNER TO freecodecamp;

--
-- Name: artifical_satelite_artifical_satelite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.artifical_satelite_artifical_satelite_id_seq OWNED BY public.artifical_satelite.artifical_satelite_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    diameter_in_ly numeric(32,24),
    constellation text,
    estimation_method text
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
    is_spherical boolean,
    diameter_in_km numeric(8,3),
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
    name character varying(30) NOT NULL,
    has_life boolean,
    known_natural_sattelites integer,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    known_natural_sattelites integer,
    mass_in_solar_mass numeric(32,3),
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
-- Name: artifical_satelite artifical_satelite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artifical_satelite ALTER COLUMN artifical_satelite_id SET DEFAULT nextval('public.artifical_satelite_artifical_satelite_id_seq'::regclass);


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
-- Data for Name: artifical_satelite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.artifical_satelite VALUES (1, 'Sputnik 1', 3);
INSERT INTO public.artifical_satelite VALUES (2, 'Sputnik 2', 3);
INSERT INTO public.artifical_satelite VALUES (3, 'Explorer 1', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Ursa Major III', 9.800000000000000000000000, 'Ursa Major', NULL);
INSERT INTO public.galaxy VALUES (2, 'ESO 383-76', 1764000.000000000000000000000000, 'Centaurus', NULL);
INSERT INTO public.galaxy VALUES (3, 'NGC 6872', 718000.000000000000000000000000, 'Pavo', NULL);
INSERT INTO public.galaxy VALUES (4, 'UGC 6697', 205000.000000000000000000000000, 'Leo', NULL);
INSERT INTO public.galaxy VALUES (5, 'ESO 248-6', 1731000.000000000000000000000000, 'Eridanus', NULL);
INSERT INTO public.galaxy VALUES (6, 'Abell 2125 BCG', 715000.000000000000000000000000, 'Ursa Minor', NULL);
INSERT INTO public.galaxy VALUES (7, 'Milky Way', 87400.000000000000000000000000, 'Sagittarius', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Amalthea', false, 167.000, 6);
INSERT INTO public.moon VALUES (2, 'Thebe', false, 98.600, 6);
INSERT INTO public.moon VALUES (3, 'Io', true, 3643.200, 6);
INSERT INTO public.moon VALUES (4, 'Europa', true, 3121.600, 6);
INSERT INTO public.moon VALUES (5, 'Ganymede', true, 5268.200, 6);
INSERT INTO public.moon VALUES (6, 'Callisto', true, 4820.600, 6);
INSERT INTO public.moon VALUES (7, 'Themisto', NULL, 9.000, 6);
INSERT INTO public.moon VALUES (8, 'Leda', NULL, 21.500, 6);
INSERT INTO public.moon VALUES (9, 'Ersa', NULL, 3.000, 6);
INSERT INTO public.moon VALUES (10, 'Himalia', NULL, 139.600, 6);
INSERT INTO public.moon VALUES (11, 'Pandia', NULL, 3.000, 6);
INSERT INTO public.moon VALUES (12, 'Lysithea', NULL, 32.200, 6);
INSERT INTO public.moon VALUES (13, 'Elara', NULL, 79.900, 6);
INSERT INTO public.moon VALUES (14, 'Dia', NULL, 4.000, 6);
INSERT INTO public.moon VALUES (15, 'Carpo', NULL, 3.000, 6);
INSERT INTO public.moon VALUES (16, 'Valetudo', NULL, 1.000, 6);
INSERT INTO public.moon VALUES (17, 'Euporie', NULL, 2.000, 6);
INSERT INTO public.moon VALUES (18, 'Eupheme', NULL, 2.000, 6);
INSERT INTO public.moon VALUES (19, 'Mneme', NULL, 2.000, 6);
INSERT INTO public.moon VALUES (20, 'Euanthe', NULL, 3.000, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, 0, 1);
INSERT INTO public.planet VALUES (2, 'VENUS', false, 0, 1);
INSERT INTO public.planet VALUES (3, 'Earth', true, 1, 1);
INSERT INTO public.planet VALUES (4, 'Mars', false, 2, 1);
INSERT INTO public.planet VALUES (5, 'Ceres', false, 0, 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', false, 95, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', false, 156, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', false, 28, 1);
INSERT INTO public.planet VALUES (9, 'Neptune', false, 16, 1);
INSERT INTO public.planet VALUES (10, 'Orcus', false, 1, 1);
INSERT INTO public.planet VALUES (11, 'Pluto', false, 5, 1);
INSERT INTO public.planet VALUES (12, 'Haumea', false, 2, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 758, 1.000, 7);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', NULL, 0.122, 7);
INSERT INTO public.star VALUES (3, 'Bernards Star', NULL, 0.162, 7);
INSERT INTO public.star VALUES (4, 'Luhman_16', NULL, 0.034, 7);
INSERT INTO public.star VALUES (5, 'Wolf_359', NULL, 0.110, 7);
INSERT INTO public.star VALUES (6, 'Sirius', NULL, 2.063, 7);


--
-- Name: artifical_satelite_artifical_satelite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.artifical_satelite_artifical_satelite_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


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
-- Name: artifical_satelite artifical_satelite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artifical_satelite
    ADD CONSTRAINT artifical_satelite_name_key UNIQUE (name);


--
-- Name: artifical_satelite artifical_satelite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artifical_satelite
    ADD CONSTRAINT artifical_satelite_pkey PRIMARY KEY (artifical_satelite_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: artifical_satelite unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artifical_satelite
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: galaxy unique_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_galaxy UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


--
-- Name: artifical_satelite artifical_satelite_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.artifical_satelite
    ADD CONSTRAINT artifical_satelite_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

