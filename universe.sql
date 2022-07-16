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
-- Name: discover_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.discover_info (
    discover_info_id integer NOT NULL,
    name character varying(30) NOT NULL,
    email character varying(30) NOT NULL
);


ALTER TABLE public.discover_info OWNER TO freecodecamp;

--
-- Name: discover_info_discover_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.discover_info_discover_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discover_info_discover_id_seq OWNER TO freecodecamp;

--
-- Name: discover_info_discover_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.discover_info_discover_id_seq OWNED BY public.discover_info.discover_info_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types character varying(30),
    discover_date date,
    galaxy_coordinates numeric(100,5)
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
    planet_id integer NOT NULL,
    year_found integer,
    diameter numeric,
    discoverer character varying(50),
    comment text,
    moon_coordinates numeric(100,2)
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
    diameter integer,
    has_life boolean,
    distance_sun_million numeric(5,2) NOT NULL,
    planet_coordinates numeric(110,2)
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
    age numeric,
    distance_from_earth character varying(20),
    has_life boolean,
    galaxy_id integer,
    star_coordinates numeric(100,2)
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
-- Name: discover_info discover_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discover_info ALTER COLUMN discover_info_id SET DEFAULT nextval('public.discover_info_discover_id_seq'::regclass);


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
-- Data for Name: discover_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.discover_info VALUES (1, 'Dr. C. Perrine', 'cperrine@nasa.gov');
INSERT INTO public.discover_info VALUES (2, 'Dr. S. Sheppard', 'ssheppard@nasa.gov');
INSERT INTO public.discover_info VALUES (3, 'Dr. A. Hall', 'ahall@nasa.gov');
INSERT INTO public.discover_info VALUES (4, 'Dr. M. Holman', 'mholman@nasa.gov');
INSERT INTO public.discover_info VALUES (5, 'Dr. K. Voyager', 'kvoyager@nasa.gov');
INSERT INTO public.discover_info VALUES (6, 'Dr. W. Lassel', 'wlassel@nasa.gov');
INSERT INTO public.discover_info VALUES (7, 'Dr. N. Gladman', 'ngladman@nasa.gov');
INSERT INTO public.discover_info VALUES (8, 'Dr. C. Nicholson', 'cnicholson@nasa.gov');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Sculptor Galaxy', 'Barred spiral', '1867-04-02', NULL);
INSERT INTO public.galaxy VALUES (3, 'Sombrero Galaxy', 'Elliptical', '1975-07-12', NULL);
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', 'Irregular', '1987-05-23', NULL);
INSERT INTO public.galaxy VALUES (5, 'Tadpole', 'Spiral', '1996-06-11', NULL);
INSERT INTO public.galaxy VALUES (6, 'Mice Galaxy', 'Barred spiral', '2000-08-12', NULL);
INSERT INTO public.galaxy VALUES (7, 'Andromeda Galaxy', 'Spiral', '2005-10-07', NULL);
INSERT INTO public.galaxy VALUES (1, 'Pinwheel Galaxy', 'Spiral', '1987-01-23', 122435.12000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Elara', 5, 1905, 3, 'Dr. C. Perrine', 'Impressive', NULL);
INSERT INTO public.moon VALUES (2, 'Arche', 5, 2002, 3, 'Dr. S. Sheppard', ' ', NULL);
INSERT INTO public.moon VALUES (3, 'Carpo', 5, 2003, 3, 'Dr. S. Sheppard', ' ', NULL);
INSERT INTO public.moon VALUES (4, 'Phobos', 4, 1877, 9270, 'Dr. A. Hall', ' ', NULL);
INSERT INTO public.moon VALUES (5, 'Deimos', 4, 1877, 8, 'Dr. A. Hall', ' ', NULL);
INSERT INTO public.moon VALUES (6, 'Sao', 8, 2002, 38, 'Dr. M. Holman', ' ', NULL);
INSERT INTO public.moon VALUES (7, 'Larissa', 8, 1989, 200, 'Dr. K. Voyager', NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Despina', 8, 1989, 160, 'Dr. K. Voyager', NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Umbriel', 7, 1851, 1190, 'Dr. W. Lassel', NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Setebos', 7, 1999, 47, 'Dr. N. Gladman', 'Shape is not round', NULL);
INSERT INTO public.moon VALUES (11, 'Puck', 7, 1985, 154, 'Dr. K. Voyager', NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Tarvos', 6, 2000, 16, 'Astronomers', NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Ymir', 6, 2000, 20, 'Astronomers', NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Caliban', 7, 1997, 80, 'Dr. C. Nicholson', 'Close to Planet', NULL);
INSERT INTO public.moon VALUES (15, 'Skoll', 6, 2006, 6, 'Dr. S. SHeppard', 'Moon is half white, half yello', NULL);
INSERT INTO public.moon VALUES (16, 'Thebe', 11, 1979, 100, 'Astronomers', NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Atlas', 11, 1980, 3727, 'Dr. C. Nicholson', NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Metis', 12, 2001, 2, 'Dr. A. Hall', NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Sponde', 12, 2003, 28, 'Dr. M. Holman', NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Kale', 1, 2001, 2, 'Dr. C. Perrine', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4879, false, 36.00, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 7520, false, 67.00, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 12714, true, 93.00, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 7845, false, 125.32, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 8745, false, 254.75, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 5874, true, 25.35, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 9564, false, 57.89, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 9687, true, 63.58, NULL);
INSERT INTO public.planet VALUES (9, 'Terrestrial', 2354, true, 89.63, NULL);
INSERT INTO public.planet VALUES (10, 'Gas Giants', 8574, false, 23.69, NULL);
INSERT INTO public.planet VALUES (11, 'Pluto', 800, false, 745.32, NULL);
INSERT INTO public.planet VALUES (12, 'Charon', 89652, true, 896.54, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 12500000, '7600 lighting year', true, 1, NULL);
INSERT INTO public.star VALUES (3, 'Vega', 32400000, '129000 lighting year', true, 2, NULL);
INSERT INTO public.star VALUES (7, 'Procyon', 14500000, '25000 lighting year', false, 3, NULL);
INSERT INTO public.star VALUES (6, 'Alpha', 65400000, '15000 lighting year', true, 4, NULL);
INSERT INTO public.star VALUES (2, 'Canopus', 2350000, '10000 lighting year', false, 5, NULL);
INSERT INTO public.star VALUES (4, 'Rigel', 120000000, '8000 lighting year', false, 6, NULL);
INSERT INTO public.star VALUES (5, 'Achernar', 5600000000, '34000 lighting year', true, 7, NULL);


--
-- Name: discover_info_discover_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.discover_info_discover_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 2, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, true);


--
-- Name: discover_info discover_info_email_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discover_info
    ADD CONSTRAINT discover_info_email_key UNIQUE (email);


--
-- Name: discover_info discover_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.discover_info
    ADD CONSTRAINT discover_info_pkey PRIMARY KEY (discover_info_id);


--
-- Name: galaxy galaxy_galaxy_coordinates_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_coordinates_key UNIQUE (galaxy_coordinates);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_coordinates_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_coordinates_key UNIQUE (moon_coordinates);


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
-- Name: planet planet_planet_coordinates_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_coordinates_key UNIQUE (planet_coordinates);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_coordinates_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_coordinates_key UNIQUE (star_coordinates);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);
