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
    name character varying(30) NOT NULL,
    alt integer,
    lat integer,
    distance numeric(10,1),
    description text,
    is_star boolean,
    is_earth boolean
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
    alt integer,
    lat integer,
    distance numeric(10,1),
    description text,
    is_star boolean,
    is_earth boolean,
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
-- Name: new_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.new_table (
    new_table_id integer NOT NULL,
    name character varying(255) NOT NULL,
    alt integer,
    lat integer,
    distance numeric(10,1),
    description text,
    is_star boolean,
    is_earth boolean
);


ALTER TABLE public.new_table OWNER TO freecodecamp;

--
-- Name: new_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.new_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.new_table_id_seq OWNER TO freecodecamp;

--
-- Name: new_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.new_table_id_seq OWNED BY public.new_table.new_table_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    alt integer,
    lat integer,
    distance numeric(10,1),
    description text,
    is_star boolean,
    is_earth boolean,
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
    alt integer,
    lat integer,
    distance numeric(10,1),
    description text,
    is_star boolean,
    is_earth boolean,
    galaxy_id integer NOT NULL
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
-- Name: new_table new_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.new_table ALTER COLUMN new_table_id SET DEFAULT nextval('public.new_table_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'gushi', 124, 235, 55555.4, 'it is one of the galaxies', false, false);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 0, 0, 0.0, 'The Milky Way galaxy.', false, false);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 0, 0, 0.0, 'The Andromeda galaxy.', false, false);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 0, 0, 0.0, 'The Sombrero galaxy.', false, false);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 0, 0, 0.0, 'The Whirlpool galaxy.', false, false);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 0, 0, 0.0, 'The Pinwheel galaxy.', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Sun', 0, 0, 0.0, 'The Sun is the star at the center of our solar system.', true, true, 1);
INSERT INTO public.moon VALUES (2, 'Moon', 0, 0, 0.0, 'Earth''s natural satellite.', false, true, 2);
INSERT INTO public.moon VALUES (3, 'Phobos', 0, 0, 0.0, 'One of the moons of Mars.', false, false, 3);
INSERT INTO public.moon VALUES (4, 'Europa', 0, 0, 0.0, 'One of Jupiter''s moons.', false, false, 4);
INSERT INTO public.moon VALUES (5, 'Titan', 0, 0, 0.0, 'Saturn''s largest moon.', false, false, 12);
INSERT INTO public.moon VALUES (6, 'Ganymede', 0, 0, 0.0, 'Jupiter''s largest moon.', false, false, 13);
INSERT INTO public.moon VALUES (7, 'Callisto', 0, 0, 0.0, 'A moon of Jupiter.', false, false, 13);
INSERT INTO public.moon VALUES (8, 'Io', 0, 0, 0.0, 'A volcanic moon of Jupiter.', false, false, 13);
INSERT INTO public.moon VALUES (9, 'Phobos', 0, 0, 0.0, 'A moon of Mars.', false, false, 3);
INSERT INTO public.moon VALUES (10, 'Deimos', 0, 0, 0.0, 'Another moon of Mars.', false, false, 3);
INSERT INTO public.moon VALUES (11, 'Luna', 0, 0, 0.0, 'Earth''s natural satellite.', false, true, 2);
INSERT INTO public.moon VALUES (12, 'Triton', 0, 0, 0.0, 'Neptune''s largest moon.', false, false, 17);
INSERT INTO public.moon VALUES (13, 'Charon', 0, 0, 0.0, 'Pluto''s largest moon.', false, false, 18);
INSERT INTO public.moon VALUES (14, 'Europa', 0, 0, 0.0, 'A moon of Jupiter.', false, false, 4);
INSERT INTO public.moon VALUES (15, 'Ganymede', 0, 0, 0.0, 'Another moon of Jupiter.', false, false, 4);
INSERT INTO public.moon VALUES (16, 'Callisto', 0, 0, 0.0, 'A moon of Jupiter.', false, false, 4);
INSERT INTO public.moon VALUES (17, 'Io', 0, 0, 0.0, 'A volcanic moon of Jupiter.', false, false, 4);
INSERT INTO public.moon VALUES (18, 'Phobos', 0, 0, 0.0, 'One of the moons of Mars.', false, false, 3);
INSERT INTO public.moon VALUES (19, 'Deimos', 0, 0, 0.0, 'Another moon of Mars.', false, false, 3);
INSERT INTO public.moon VALUES (20, 'Luna', 0, 0, 0.0, 'Earth''s natural satellite.', false, true, 2);


--
-- Data for Name: new_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.new_table VALUES (1, 'Row 1', 0, 0, 1000.5, 'Description for Row 1.', true, false);
INSERT INTO public.new_table VALUES (2, 'Row 2', 10, 20, 500.2, 'Description for Row 2.', false, true);
INSERT INTO public.new_table VALUES (3, 'Row 3', -5, 15, 750.8, 'Description for Row 3.', true, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Sun', 0, 0, 0.0, 'The Sun is the star at the center of our solar system.', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Earth', 0, 0, 0.0, 'The third planet from the Sun.', false, true, 2);
INSERT INTO public.planet VALUES (3, 'Mars', 0, 0, 0.0, 'The fourth planet from the Sun.', false, false, 3);
INSERT INTO public.planet VALUES (4, 'Jupiter', 0, 0, 0.0, 'The largest planet in the Solar System.', false, false, 4);
INSERT INTO public.planet VALUES (5, 'Venus', 0, 0, 0.0, 'The second planet from the Sun.', false, true, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 0, 0, 0.0, 'The sixth planet from the Sun.', false, false, 3);
INSERT INTO public.planet VALUES (7, 'Mercury', 0, 0, 0.0, 'The closest planet to the Sun.', false, true, 2);
INSERT INTO public.planet VALUES (8, 'Uranus', 0, 0, 0.0, 'The seventh planet from the Sun.', false, false, 4);
INSERT INTO public.planet VALUES (9, 'Neptune', 0, 0, 0.0, 'The eighth and farthest-known planet from the Sun in the Solar System.', false, false, 4);
INSERT INTO public.planet VALUES (10, 'Pluto', 0, 0, 0.0, 'A dwarf planet in the Kuiper belt.', false, false, 4);
INSERT INTO public.planet VALUES (11, 'Venus', 0, 0, 0.0, 'The second planet from the Sun.', false, true, 2);
INSERT INTO public.planet VALUES (12, 'Saturn', 0, 0, 0.0, 'The sixth planet from the Sun.', false, false, 3);
INSERT INTO public.planet VALUES (13, 'Jupiter', 0, 0, 0.0, 'The largest planet in the Solar System.', false, false, 4);
INSERT INTO public.planet VALUES (14, 'Earth', 0, 0, 0.0, 'The third planet from the Sun.', false, true, 2);
INSERT INTO public.planet VALUES (15, 'Mars', 0, 0, 0.0, 'The fourth planet from the Sun.', false, false, 3);
INSERT INTO public.planet VALUES (16, 'Uranus', 0, 0, 0.0, 'The seventh planet from the Sun.', false, false, 4);
INSERT INTO public.planet VALUES (17, 'Neptune', 0, 0, 0.0, 'The eighth and farthest-known planet from the Sun in the Solar System.', false, false, 4);
INSERT INTO public.planet VALUES (18, 'Pluto', 0, 0, 0.0, 'A dwarf planet in the Kuiper belt.', false, false, 4);
INSERT INTO public.planet VALUES (19, 'Venus', 0, 0, 0.0, 'The second planet from the Sun.', false, true, 2);
INSERT INTO public.planet VALUES (20, 'Saturn', 0, 0, 0.0, 'The sixth planet from the Sun.', false, false, 3);
INSERT INTO public.planet VALUES (21, 'Jupiter', 0, 0, 0.0, 'The largest planet in the Solar System.', false, false, 4);
INSERT INTO public.planet VALUES (22, 'Earth', 0, 0, 0.0, 'The third planet from the Sun.', false, true, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'earth', 124, 235, 55555.4, 'it is one of the stars', false, false, 1);
INSERT INTO public.star VALUES (2, 'Sun', 0, 0, 0.0, 'The Sun is a star.', true, true, 2);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 0, 0, 0.0, 'A star in the Alpha Centauri system.', true, false, 3);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 0, 0, 0.0, 'A red supergiant star in the Orion constellation.', true, false, 4);
INSERT INTO public.star VALUES (5, 'Sirius', 0, 0, 0.0, 'The brightest star in the night sky.', true, false, 2);
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 0, 0, 0.0, 'A main-sequence star in the Alpha Centauri system.', true, false, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: new_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.new_table_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: new_table new_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.new_table
    ADD CONSTRAINT new_table_pkey PRIMARY KEY (new_table_id);


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
-- Name: moon unique_id_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_id_moon UNIQUE (moon_id);


--
-- Name: new_table unique_id_new_table; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.new_table
    ADD CONSTRAINT unique_id_new_table UNIQUE (new_table_id);


--
-- Name: planet unique_id_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_id_planet UNIQUE (planet_id);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: galaxy unique_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name_galaxy UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


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

