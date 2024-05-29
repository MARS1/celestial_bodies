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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    width integer,
    has_life boolean
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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    width integer,
    has_life boolean,
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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    width integer,
    has_life boolean,
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
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    description character varying(100) NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_types_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_types_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_types_planet_type_id_seq OWNED BY public.planet_types.planet_types_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    width integer,
    has_life boolean,
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_types planet_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types ALTER COLUMN planet_types_id SET DEFAULT nextval('public.planet_types_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'A barred spiral galaxy, it contains our Solar System', 213.23, 8, 800, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda M31', 'A spiral galaxy, and the nearest to the Milky Way', 2.756, 9, 12, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum M33', 'A spiral galaxy that sucks', 2.43, 89438, 787, false);
INSERT INTO public.galaxy VALUES (4, 'Andromeda Returns', 'Spiral galaxy, like a toilet flush', 2.537, 10000, 220000, false);
INSERT INTO public.galaxy VALUES (5, 'Whirlppol-M51', 'Spiral galaxy like the appliance maker', 23, 400, 60000, false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero-M104', 'Nonsense name like the mexican hat, epa, epa, andale, andale', 29.3, 8200, 50000, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth''s natural satellite, vital for tidal cycles.', 384400, 4500, 3474, false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Martian moon, heavily cratered surface, tidally decaying.', 9380, 4500, 22, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Martian moon, irregular shape, smooth terrain, likely captured.', 23460, 4500, 12, false, 4);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Largest moon in the solar system, icy surface, subsurface ocean.', 628000000, 4500, 5268, false, 5);
INSERT INTO public.moon VALUES (5, 'Titan', 'Saturn''s largest moon, thick atmosphere, hydrocarbon lakes.', 1222000000, 4500, 5152, false, 6);
INSERT INTO public.moon VALUES (6, 'Europa', 'Icy moon of Jupiter, possible subsurface ocean, intriguing geology.', 628000000, 4500, 3122, false, 5);
INSERT INTO public.moon VALUES (7, 'Io', 'Volcanically active moon of Jupiter, sulfuric surface, intense radiation.', 628000000, 4500, 3643, false, 5);
INSERT INTO public.moon VALUES (8, 'Callisto', 'Icy moon of Jupiter, heavily cratered, possible subsurface ocean.', 628000000, 4500, 4822, false, 5);
INSERT INTO public.moon VALUES (9, 'Triton', 'Largest moon of Neptune, retrograde orbit, geologically active.', 4351000000, 4500, 2707, false, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 'Icy moon of Saturn, geysers from subsurface ocean, potential habitability.', 1275000000, 4500, 504, false, 6);
INSERT INTO public.moon VALUES (11, 'Rhea', 'Saturn''s second-largest moon, heavily cratered, thin atmosphere.', 1275000000, 4500, 1528, false, 6);
INSERT INTO public.moon VALUES (12, 'Mimas', 'Saturn''s "Death Star" moon, prominent Herschel Crater.', 1275000000, 4500, 396, false, 6);
INSERT INTO public.moon VALUES (13, 'Iapetus', 'Two-toned moon of Saturn, dark leading side, bright trailing side.', 1275000000, 4500, 1471, false, 6);
INSERT INTO public.moon VALUES (14, 'Charon', 'Largest moon of Pluto, similar size, forms binary system.', 5900000000, 4500, 1212, false, 1);
INSERT INTO public.moon VALUES (15, 'Miranda', 'Chaotic terrain on Uranus, diverse geology, ridges, canyons.', 2724000000, 4500, 472, false, 7);
INSERT INTO public.moon VALUES (16, 'Dione', 'Saturn''s moon with bright, wispy streaks, icy surface.', 1275000000, 4500, 1123, false, 6);
INSERT INTO public.moon VALUES (17, 'Tethys', 'Icy moon of Saturn, giant Odysseus Crater, smooth plains.', 1275000000, 4500, 1061, false, 1);
INSERT INTO public.moon VALUES (18, 'Larisa', 'Neptunian moon with irregular shape and low crater count.', 4351, 4500, 208, false, 8);
INSERT INTO public.moon VALUES (19, 'Naiad', 'Small inner moon of Neptune, irregular shape, lacks craters.', 4351, 4500, 58, false, 8);
INSERT INTO public.moon VALUES (20, 'Amalthea', 'Irregular-shaped moon of Jupiter, reddish color, heavily cratered.', 628, 4500, 250, false, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Smallest, closest planet to the Sun.', 77, 4500, 4880, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Hottest planet, thick toxic atmosphere', 41, 4500, 12104, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Home to diverse life forms.', 0, 4500, 12742, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Red planet with potential for past water.', 78, 4500, 6779, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Largest planet, Great Red Spot storm.', 628, 4500, 139820, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Famous for its extensive ring system.', 1275, 4500, 116460, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice giant with tilted rotational axis.', 2724, 4500, 50724, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Farthest ice giant, strong winds.', 4351, 4500, 49244, false, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 'Potentially habitable, close to Earth.', 4.24, 4850, 1, false, 2);
INSERT INTO public.planet VALUES (10, 'Keplar-22b', 'Potentially habitable super-Earth', 600, 4000, 2, false, 3);
INSERT INTO public.planet VALUES (11, 'TrES-2b', 'Darkest known exoplanet', 750, 4750, 1, false, 3);
INSERT INTO public.planet VALUES (12, 'HD 189733 b', 'Blue, violent weather exoplanet.', 64.5, 6000, 1, false, 3);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Rocky planets, solid surfaces, similar to Earth.', 'Terrestrial');
INSERT INTO public.planet_types VALUES (2, 'Large planets, mainly composed of hydrogen and helium.', 'Gas Giant');
INSERT INTO public.planet_types VALUES (3, 'Large planets with icy cores, methane and ammonia.', 'Ice Giant');
INSERT INTO public.planet_types VALUES (4, 'Small celestial bodies, not large enough to clear orbits.', 'Dwarf Planet');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'Yellow dwarf star, center of our solar system...not', 0, 4600, 139100, false, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Closest known star to the Sun', 4.24, 4850, 200000, false, 1);
INSERT INTO public.star VALUES (3, 'Kepler-22', 'Sun-like star with potentially habitable planet', 600, 4000, 1220000, false, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 'Brightest star in Alpha Centauri stat system', 4.37, 7000, 2, false, 1);
INSERT INTO public.star VALUES (5, 'Sirius', 'Brightest star in the night sky, part of Canis Major.', 8.6, 300, 2, false, 2);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 'Red supergiant star in Orion constellation, nearing supernova', 724, 9, 1180, false, 2);


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
-- Name: planet_types_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_types_planet_type_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy UNIQUE (name);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: planet unique_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet UNIQUE (name);


--
-- Name: planet_types unique_planet_type; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT unique_planet_type UNIQUE (name);


--
-- Name: star unique_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star UNIQUE (name);


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

