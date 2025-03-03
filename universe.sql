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
    age_in_millions_of_years integer,
    fun_fact text,
    radius_in_astronomical_units integer
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
    age_in_millions_of_years integer,
    planet_id integer,
    radius_in_miles integer
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
    age_in_millions_of_years integer,
    distance_from_earth_in_miles numeric(11,1),
    fun_fact text,
    has_life boolean,
    has_atmosphere boolean,
    star_id integer,
    planet_types_id integer
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_types_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_types_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_id integer,
    radius_in_miles integer
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
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_types_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 'Home to our Solar System, and has a supermassive black hole called Sagittarius A* at its center.', 85000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 9000, 'On a collision course with the Milky Way, and will merge with it in about 4.5 billion years.', 110000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 10000, 'Third-largest galaxy in the Local Group, and a close neighbor to the Andromeda Galaxy.', 30000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 500, 'Famous for its well-defined spiral structure and its interaction with a smaller companion galaxy, NGC 5195.', 30000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 500, 'Named for its resemblance to a Mexican sombrero hat, and has a very prominent and bright central bulge.', 35000);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 400, 'Known for its grand design spiral structure and is one of the most well-known spiral galaxies.', 60000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon (Luna)', 4500, 1, 1080);
INSERT INTO public.moon VALUES (2, 'Phobos', 4500, 2, 7);
INSERT INTO public.moon VALUES (3, 'Deimos', 4500, 2, 4);
INSERT INTO public.moon VALUES (4, 'Io', 4500, 3, 1131);
INSERT INTO public.moon VALUES (5, 'Europa', 4500, 3, 969);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4500, 3, 1635);
INSERT INTO public.moon VALUES (7, 'Callisto', 4500, 3, 1497);
INSERT INTO public.moon VALUES (8, 'Titan', 4500, 4, 1600);
INSERT INTO public.moon VALUES (9, 'Enceladus', 4500, 4, 157);
INSERT INTO public.moon VALUES (10, 'Rhea', 4500, 4, 474);
INSERT INTO public.moon VALUES (11, 'Iapetus', 4500, 4, 457);
INSERT INTO public.moon VALUES (12, 'Titania', 4500, 5, 490);
INSERT INTO public.moon VALUES (13, 'Oberon', 4500, 5, 473);
INSERT INTO public.moon VALUES (14, 'Triton', 4500, 6, 841);
INSERT INTO public.moon VALUES (15, 'Nereid', 4500, 6, 106);
INSERT INTO public.moon VALUES (16, 'Charon', 4500, 6, 606);
INSERT INTO public.moon VALUES (17, 'Gliese 581g', 7000, 9, 1200);
INSERT INTO public.moon VALUES (18, 'Kepler-22b I', 4400, 10, 1000);
INSERT INTO public.moon VALUES (19, 'Proxima b I', 4850, 11, 900);
INSERT INTO public.moon VALUES (20, 'TRAPPIST-1e I', 7600, 12, 800);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4540, 0.0, 'The only known planet to support life.', true, true, 7, 3);
INSERT INTO public.planet VALUES (2, 'Mars', 4600, 140000000.0, 'Known as the "Red Planet" due to its iron oxide-rich soil.', false, true, 7, 3);
INSERT INTO public.planet VALUES (3, 'Jupiter', 4600, 484000000.0, 'The largest planet in our Solar System and has a Great Red Spot.', false, true, 7, 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 4600, 890000000.0, 'Famous for its extensive ring system made mostly of ice particles.', false, true, 7, 1);
INSERT INTO public.planet VALUES (5, 'Uranus', 4600, 1780000000.0, 'Rotates on its side, making it unique among the planets in our Solar System.', false, true, 7, 4);
INSERT INTO public.planet VALUES (6, 'Neptune', 4600, 2680000000.0, 'Known for its intense blue color due to methane in its atmosphere.', false, true, 7, 4);
INSERT INTO public.planet VALUES (7, 'Venus', 4600, 25000000.0, 'Often called Earth''s "sister planet" because of its similar size and composition.', false, true, 7, 3);
INSERT INTO public.planet VALUES (8, 'Mercury', 4600, 57000000.0, 'The smallest planet and closest to the Sun, experiencing extreme temperatures.', false, true, 7, 3);
INSERT INTO public.planet VALUES (9, 'Gliese 581d', 7000, 1230000000.0, 'Potentially within the habitable zone of its star, Gliese 581.', NULL, true, 8, 3);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 4400, 6200000000.0, 'Was one of the first exoplanets found in the habitable zone of its star.', NULL, true, 9, 3);
INSERT INTO public.planet VALUES (11, 'Proxima b', 4850, 2500000000.0, 'Orbits the closest star to the Sun, Proxima Centauri.', NULL, true, 3, 3);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 7600, 3900000000.0, 'One of seven Earth-sized planets orbiting the star TRAPPIST-1, several of which could have liquid water.', NULL, true, 11, 3);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Gas giants', 'Large planets made up of mostly helium and/or hydrogen, Don''t have hard surfaces, but instead have swirling gases above a solid core');
INSERT INTO public.planet_types VALUES (3, 'Terrestrial planets', 'Made up of silicate rocks or metals, Have a central core, a rocky mantle, and a solid crust');
INSERT INTO public.planet_types VALUES (4, 'Ice giants', 'A subclass of giant planet that are smaller and have higher concentrations of volatiles than Jupiter and Saturn');
INSERT INTO public.planet_types VALUES (5, 'Dwarf planets', 'Similar to planets, but have not cleared the area around their orbit');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 300, 1, 740000);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 10, 1, 617000000);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 4850, 1, 124000);
INSERT INTO public.star VALUES (4, 'Rigel', 8, 1, 55000000);
INSERT INTO public.star VALUES (5, 'Vega', 455, 1, 1400000);
INSERT INTO public.star VALUES (6, 'Antares', 12, 1, 383000000);
INSERT INTO public.star VALUES (7, 'Sun', 4600, 1, 432450);
INSERT INTO public.star VALUES (8, 'Gliese 581', 7000, 1, 119000);
INSERT INTO public.star VALUES (9, 'Kepler-22', 4400, 1, 488000);
INSERT INTO public.star VALUES (11, 'TRAPPIST-1', 7600, 1, 50000);


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
-- Name: planet_types_planet_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_types_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


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
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_planet_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_types_id_fkey FOREIGN KEY (planet_types_id) REFERENCES public.planet_types(planet_types_id);


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

