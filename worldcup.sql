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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 548, 549, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 550, 551, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 549, 551, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 548, 550, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 549, 552, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 551, 553, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 550, 554, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 548, 555, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 551, 556, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 553, 557, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 550, 558, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 554, 559, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 549, 560, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 552, 561, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 555, 562, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 548, 563, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 564, 563, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 565, 554, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 563, 565, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 564, 554, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 565, 566, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 563, 550, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 554, 556, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 564, 548, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 554, 567, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 556, 555, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 548, 568, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 564, 569, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 565, 559, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 566, 570, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 563, 557, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 550, 571, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (548, 'France');
INSERT INTO public.teams VALUES (549, 'Croatia');
INSERT INTO public.teams VALUES (550, 'Belgium');
INSERT INTO public.teams VALUES (551, 'England');
INSERT INTO public.teams VALUES (552, 'Russia');
INSERT INTO public.teams VALUES (553, 'Sweden');
INSERT INTO public.teams VALUES (554, 'Brazil');
INSERT INTO public.teams VALUES (555, 'Uruguay');
INSERT INTO public.teams VALUES (556, 'Colombia');
INSERT INTO public.teams VALUES (557, 'Switzerland');
INSERT INTO public.teams VALUES (558, 'Japan');
INSERT INTO public.teams VALUES (559, 'Mexico');
INSERT INTO public.teams VALUES (560, 'Denmark');
INSERT INTO public.teams VALUES (561, 'Spain');
INSERT INTO public.teams VALUES (562, 'Portugal');
INSERT INTO public.teams VALUES (563, 'Argentina');
INSERT INTO public.teams VALUES (564, 'Germany');
INSERT INTO public.teams VALUES (565, 'Netherlands');
INSERT INTO public.teams VALUES (566, 'Costa Rica');
INSERT INTO public.teams VALUES (567, 'Chile');
INSERT INTO public.teams VALUES (568, 'Nigeria');
INSERT INTO public.teams VALUES (569, 'Algeria');
INSERT INTO public.teams VALUES (570, 'Greece');
INSERT INTO public.teams VALUES (571, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 571, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

