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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    secret_number integer NOT NULL,
    number_of_guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_user_id_seq OWNER TO freecodecamp;

--
-- Name: players_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_user_id_seq OWNED BY public.players.user_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(22) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN user_id SET DEFAULT nextval('public.players_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 523, 524);
INSERT INTO public.games VALUES (2, 1, 836, 837);
INSERT INTO public.games VALUES (3, 2, 833, 834);
INSERT INTO public.games VALUES (4, 2, 433, 434);
INSERT INTO public.games VALUES (5, 1, 657, 660);
INSERT INTO public.games VALUES (6, 1, 506, 508);
INSERT INTO public.games VALUES (7, 1, 479, 480);
INSERT INTO public.games VALUES (8, 3, 413, 414);
INSERT INTO public.games VALUES (9, 3, 846, 847);
INSERT INTO public.games VALUES (10, 4, 954, 955);
INSERT INTO public.games VALUES (11, 4, 359, 360);
INSERT INTO public.games VALUES (12, 3, 4, 7);
INSERT INTO public.games VALUES (13, 3, 321, 323);
INSERT INTO public.games VALUES (14, 3, 823, 824);
INSERT INTO public.games VALUES (15, 5, 107, 108);
INSERT INTO public.games VALUES (16, 5, 732, 733);
INSERT INTO public.games VALUES (17, 6, 531, 532);
INSERT INTO public.games VALUES (18, 6, 315, 316);
INSERT INTO public.games VALUES (19, 5, 992, 995);
INSERT INTO public.games VALUES (20, 5, 113, 115);
INSERT INTO public.games VALUES (21, 5, 291, 292);
INSERT INTO public.games VALUES (22, 7, 15, 16);
INSERT INTO public.games VALUES (23, 7, 466, 467);
INSERT INTO public.games VALUES (24, 8, 973, 974);
INSERT INTO public.games VALUES (25, 8, 389, 390);
INSERT INTO public.games VALUES (26, 7, 319, 322);
INSERT INTO public.games VALUES (27, 7, 325, 327);
INSERT INTO public.games VALUES (28, 7, 577, 578);
INSERT INTO public.games VALUES (29, 9, 907, 908);
INSERT INTO public.games VALUES (30, 9, 360, 361);
INSERT INTO public.games VALUES (31, 10, 123, 124);
INSERT INTO public.games VALUES (32, 10, 228, 229);
INSERT INTO public.games VALUES (33, 9, 59, 62);
INSERT INTO public.games VALUES (34, 9, 581, 583);
INSERT INTO public.games VALUES (35, 9, 298, 299);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (1, 'user_1727189113305');
INSERT INTO public.players VALUES (2, 'user_1727189113304');
INSERT INTO public.players VALUES (3, 'user_1727189301114');
INSERT INTO public.players VALUES (4, 'user_1727189301113');
INSERT INTO public.players VALUES (5, 'user_1727189328945');
INSERT INTO public.players VALUES (6, 'user_1727189328944');
INSERT INTO public.players VALUES (7, 'user_1727189483597');
INSERT INTO public.players VALUES (8, 'user_1727189483596');
INSERT INTO public.players VALUES (9, 'user_1727189592561');
INSERT INTO public.players VALUES (10, 'user_1727189592560');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('Loh', 1, 22);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 35, true);


--
-- Name: players_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_user_id_seq', 10, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (user_id);


--
-- Name: players players_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_username_key UNIQUE (username);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.players(user_id);


--
-- PostgreSQL database dump complete
--

