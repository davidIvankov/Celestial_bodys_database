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
-- Name: dwarf_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarf_planet (
    dwarf_planet_id integer NOT NULL,
    name character varying(30),
    star_id integer NOT NULL
);


ALTER TABLE public.dwarf_planet OWNER TO freecodecamp;

--
-- Name: dwarf_planet_dwarf_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dwarf_planet_dwarf_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dwarf_planet_dwarf_planet_id_seq OWNER TO freecodecamp;

--
-- Name: dwarf_planet_dwarf_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dwarf_planet_dwarf_planet_id_seq OWNED BY public.dwarf_planet.dwarf_planet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30),
    galaxy_id integer NOT NULL,
    millions_of_stars integer NOT NULL,
    size_in_light_years numeric,
    inhabited boolean
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
    name character varying(30),
    description text,
    planet_id integer NOT NULL,
    discovered_by character varying(30)
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
    name character varying(30),
    surface_gravity numeric,
    number_of_moons integer,
    is_bigger_then_earth boolean,
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
    name character varying(30),
    bigger_then_sun boolean,
    galaxy_id integer NOT NULL,
    color character varying(30)
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
-- Name: dwarf_planet dwarf_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet ALTER COLUMN dwarf_planet_id SET DEFAULT nextval('public.dwarf_planet_dwarf_planet_id_seq'::regclass);


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
-- Data for Name: dwarf_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dwarf_planet VALUES (1, 'pluton', 1);
INSERT INTO public.dwarf_planet VALUES (2, 'eris', 1);
INSERT INTO public.dwarf_planet VALUES (3, 'ceres', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky way', 1, 100000, 52.850, true);
INSERT INTO public.galaxy VALUES ('andromeda', 2, 1000, 110.000, false);
INSERT INTO public.galaxy VALUES ('antennea', 3, 300000, 500.000, false);
INSERT INTO public.galaxy VALUES ('Canis major dwarf galaxy', 4, 1000, 10.000, false);
INSERT INTO public.galaxy VALUES ('Magellanic cloud', 5, 3000, 7.000, false);
INSERT INTO public.galaxy VALUES ('Black eye galaxy', 6, 100000, 26.481, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earths only natural satelite. Fifth largest satelite in solar system', 1, '');
INSERT INTO public.moon VALUES (2, 'europa', 'radius of europa is 1569km, and distance from jupiter is 670 900km', 3, 'Galileo Galilei');
INSERT INTO public.moon VALUES (3, 'ganimed', 'radius of europa is 2631km, and distance from jupiter is 1 070 100km', 3, 'Galileo Galilei');
INSERT INTO public.moon VALUES (4, 'Titan', 'Distance from Saturn is 1 221 830km, and its radius is 2575km', 7, 'Christiaan Huygens');
INSERT INTO public.moon VALUES (5, 'Ija', 'Distance from Jupiter is 422 000km, and radius 1815km', 3, 'Galileo Galilei');
INSERT INTO public.moon VALUES (6, 'Kalista', 'Distance from Jupiter is 1 883 000km, and radius is 2 400km', 3, 'Galileo Galilei');
INSERT INTO public.moon VALUES (7, 'Amalteja', 'Distance form Jupiter 181 300km, radius is 84km', 3, 'Edward Emerson');
INSERT INTO public.moon VALUES (8, 'Himalija', 'Distance form Jupiter 11 460 000km, Named after nimfa who gave Zeus three sons', 3, 'C. D. Perrine');
INSERT INTO public.moon VALUES (9, 'Adrasteja', 'Iregular shape. It makes jurney around Jupiter for 7 h and 9 minutes', 3, 'Jewit Danielson');
INSERT INTO public.moon VALUES (10, 'Elara', 'Named after one of the Zeuses wifes. It makes jurney around Jupiter for 259,64 days', 3, 'Charles Dillon Perine');
INSERT INTO public.moon VALUES (11, 'Karpo', 'Satelite from the group Karpo. It makes jurney around Jupiter for 458.625 days', 3, 'Scott S. Sheppard');
INSERT INTO public.moon VALUES (12, 'Ananka', 'Satelite from the group Ananka. It makes jurney around Jupiter for 613.518 days', 3, 'Seth Barnes Nicholosn');
INSERT INTO public.moon VALUES (13, 'Jokasta', 'Satelite from the group Ananka. It makes jurney around Jupiter for 609.427 days', 3, 'Scott S. Sheppard');
INSERT INTO public.moon VALUES (14, 'Carma', 'Satelite from the group Carma. It makes jurney around Jupiter for 747.008 days', 3, 'Seth Barnes Nicholson');
INSERT INTO public.moon VALUES (15, 'Autonoa', 'Satelite from the group Pasiphae. It makes jurney around Jupiter for 772.168 days', 3, 'Scott S. Sheppard');
INSERT INTO public.moon VALUES (16, 'Kilean', 'Satelite from the group Pasiphae. It makes jurney around Jupiter for 731.099 days', 3, 'Scott S. Sheppard');
INSERT INTO public.moon VALUES (17, 'Haldena', 'satelite from the group Carma makes jurney around Jupiter for 699.327days', 3, 'Scott S. Sheppard');
INSERT INTO public.moon VALUES (18, 'Euporia', 'satelite from the group Ananka,makes jurney around Jupiter for 538.780 days', 3, 'Scott S. Sheppard');
INSERT INTO public.moon VALUES (19, 'Caliroa', 'satelite from the group Pasiphae, it males jurney around the Jupiter for 776.543 days', 3, 'Spacewatch');
INSERT INTO public.moon VALUES (20, 'Harpalika', 'satelite from the group Ananka, it makes jurney around Jupiter for 624.542 days', 3, 'Scott S. Sheppard');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 9.807, 1, false, 1);
INSERT INTO public.planet VALUES (2, 'sirius_b', 3432450, 24, false, 2);
INSERT INTO public.planet VALUES (3, 'jupiter', 24.79, 80, true, 1);
INSERT INTO public.planet VALUES (4, 'Mercury', 3.7, 0, false, 1);
INSERT INTO public.planet VALUES (5, 'Venus', 8.87, 0, false, 1);
INSERT INTO public.planet VALUES (6, 'Mars', 3.721, 2, false, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', 10.44, 83, true, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 8.87, 27, true, 1);
INSERT INTO public.planet VALUES (9, 'Neptun', 11.15, 14, true, 1);
INSERT INTO public.planet VALUES (10, 'pullux_b', 49.58, 160, true, 6);
INSERT INTO public.planet VALUES (11, 'Kepler-62f', 17.533, NULL, true, 7);
INSERT INTO public.planet VALUES (12, 'kepler_186f', 1.249, NULL, true, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, 1, 'yellow');
INSERT INTO public.star VALUES (5, 'Polaris', true, 1, 'yellow');
INSERT INTO public.star VALUES (2, 'sirius', true, 1, 'blue_white');
INSERT INTO public.star VALUES (3, 'alpheratz', true, 2, 'blue_white');
INSERT INTO public.star VALUES (4, 'Orion', true, 1, 'blue_white');
INSERT INTO public.star VALUES (6, 'Pollux', true, 1, 'orange');
INSERT INTO public.star VALUES (7, 'Kepler-62', false, 1, 'orange_to_red');
INSERT INTO public.star VALUES (8, 'kepler_186', false, 1, 'red');


--
-- Name: dwarf_planet_dwarf_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dwarf_planet_dwarf_planet_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 44, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: dwarf_planet dwarf_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_pkey PRIMARY KEY (dwarf_planet_id);


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
-- Name: dwarf_planet unique_dwarf_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT unique_dwarf_planet_id UNIQUE (dwarf_planet_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: dwarf_planet dwarf_planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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
