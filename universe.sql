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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(45) NOT NULL,
    speed numeric NOT NULL,
    is_visible boolean NOT NULL,
    description text
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(45) NOT NULL,
    galaxy_type text NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    has_life boolean NOT NULL
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
    name character varying(45) NOT NULL,
    diameter integer NOT NULL,
    is_spherical boolean NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(45) NOT NULL,
    planet_type text NOT NULL,
    distance_from_earth integer NOT NULL,
    has_life boolean NOT NULL,
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
    name character varying(45) NOT NULL,
    star_type text NOT NULL,
    age_in_millions_of_years numeric NOT NULL,
    is_spherical boolean NOT NULL,
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halley', 54.6, true, 'Cometa famoso que pasa cerca de la Tierra cada 76 años.');
INSERT INTO public.comet VALUES (2, 'Neowise', 70.0, true, 'Cometa descubierto en 2020 que se hizo visible a simple vista.');
INSERT INTO public.comet VALUES (3, 'Hale-Bopp', 47.0, true, 'Uno de los cometas más brillantes del siglo XX, visible a simple vista en 1997.');
INSERT INTO public.comet VALUES (4, 'Encke', 58.0, true, 'Cometa que orbita alrededor del Sol cada 3.3 años.');
INSERT INTO public.comet VALUES (5, 'Ison', 53.0, false, 'Cometa que pasó muy cerca del Sol en 2013 y se desintegró.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Spiral', 10000.250, false);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'Spiral', 13500.123, true);
INSERT INTO public.galaxy VALUES (3, 'Sombrero Galaxy', 'Lenticular', 12500.456, false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 'Spiral', 14000.789, false);
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 'Irregular', 9000.300, false);
INSERT INTO public.galaxy VALUES (6, 'Triangulum Galaxy', 'Spiral', 10200.000, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Phobos', 22, true, 1);
INSERT INTO public.moon VALUES (2, 'Deimos', 12, true, 1);
INSERT INTO public.moon VALUES (3, 'Europa', 3122, true, 3);
INSERT INTO public.moon VALUES (4, 'Io', 3643, true, 3);
INSERT INTO public.moon VALUES (5, 'Ganymede', 5268, true, 3);
INSERT INTO public.moon VALUES (6, 'Titan', 5150, true, 4);
INSERT INTO public.moon VALUES (7, 'Rhea', 1528, true, 4);
INSERT INTO public.moon VALUES (8, 'Mimas', 396, true, 2);
INSERT INTO public.moon VALUES (9, 'Tethys', 1066, true, 2);
INSERT INTO public.moon VALUES (10, 'Enceladus', 504, true, 2);
INSERT INTO public.moon VALUES (11, 'Iapetus', 1469, true, 2);
INSERT INTO public.moon VALUES (12, 'Titania', 1578, true, 5);
INSERT INTO public.moon VALUES (13, 'Oberon', 1523, true, 5);
INSERT INTO public.moon VALUES (14, 'Miranda', 472, true, 5);
INSERT INTO public.moon VALUES (15, 'Umbriel', 1170, true, 5);
INSERT INTO public.moon VALUES (16, 'Callisto', 4821, true, 3);
INSERT INTO public.moon VALUES (17, 'Ceres', 940, true, 4);
INSERT INTO public.moon VALUES (18, 'Charon', 1212, true, 6);
INSERT INTO public.moon VALUES (19, 'Triton', 2706, true, 6);
INSERT INTO public.moon VALUES (20, 'Himalia', 1700, true, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Proxima b', 'Exoplanet', 4, false, 6);
INSERT INTO public.planet VALUES (2, 'Kepler-22b', 'Exoplanet', 600, false, 2);
INSERT INTO public.planet VALUES (3, 'Gliese 581g', 'Exoplanet', 20, true, 1);
INSERT INTO public.planet VALUES (4, 'TRAPPIST-1d', 'Exoplanet', 40, true, 3);
INSERT INTO public.planet VALUES (5, 'Kepler-452b', 'Exoplanet', 1400, false, 4);
INSERT INTO public.planet VALUES (6, 'LHS 1140 b', 'Rocky', 40, false, 5);
INSERT INTO public.planet VALUES (7, 'HD 209458 b', 'Gas Giant', 150, false, 2);
INSERT INTO public.planet VALUES (8, 'Kepler-16b', 'Gas Giant', 260, false, 6);
INSERT INTO public.planet VALUES (9, 'GJ 667 Cc', 'Exoplanet', 24, true, 3);
INSERT INTO public.planet VALUES (10, 'WASP-12b', 'Gas Giant', 870, false, 4);
INSERT INTO public.planet VALUES (11, 'WASP-17b', 'Gas Giant', 1300, false, 1);
INSERT INTO public.planet VALUES (12, 'HD 189733 b', 'Hot Jupiter', 63, false, 5);
INSERT INTO public.planet VALUES (13, '55 Cancri e', 'Super-Earth', 41, true, 6);
INSERT INTO public.planet VALUES (14, 'XO-1b', 'Exoplanet', 1500, false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Centauri', 'Main Sequence', 4500.000, true, 1);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 'Red Supergiant', 800.000, false, 2);
INSERT INTO public.star VALUES (3, 'Sirius', 'Main Sequence', 200.000, true, 3);
INSERT INTO public.star VALUES (4, 'Antares', 'Red Supergiant', 700.000, false, 4);
INSERT INTO public.star VALUES (5, 'Rigel', 'Blue Supergiant', 100.000, true, 5);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 'Red Dwarf', 4500.000, true, 6);
INSERT INTO public.star VALUES (7, 'Altair', 'Main Sequence', 500.000, true, 2);
INSERT INTO public.star VALUES (8, 'Vega', 'Main Sequence', 350.000, true, 3);
INSERT INTO public.star VALUES (9, 'Canopus', 'Supergiant', 100.000, false, 2);
INSERT INTO public.star VALUES (10, 'Arcturus', 'Red Giant', 7000.000, false, 4);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 5, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

