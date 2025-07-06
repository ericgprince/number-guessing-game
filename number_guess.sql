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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 5);
INSERT INTO public.games VALUES (2, 1, 5);
INSERT INTO public.games VALUES (3, 1, 4);
INSERT INTO public.games VALUES (4, 1, 1);
INSERT INTO public.games VALUES (5, 1, 21);
INSERT INTO public.games VALUES (6, 2, 490);
INSERT INTO public.games VALUES (7, 2, 745);
INSERT INTO public.games VALUES (8, 3, 481);
INSERT INTO public.games VALUES (9, 3, 308);
INSERT INTO public.games VALUES (10, 2, 827);
INSERT INTO public.games VALUES (11, 2, 1);
INSERT INTO public.games VALUES (12, 2, 505);
INSERT INTO public.games VALUES (13, 1, 1);
INSERT INTO public.games VALUES (14, 4, 1);
INSERT INTO public.games VALUES (15, 4, 1);
INSERT INTO public.games VALUES (16, 5, 1);
INSERT INTO public.games VALUES (17, 5, 1);
INSERT INTO public.games VALUES (18, 4, 1);
INSERT INTO public.games VALUES (19, 4, 1);
INSERT INTO public.games VALUES (20, 4, 1);
INSERT INTO public.games VALUES (21, 6, 1);
INSERT INTO public.games VALUES (22, 6, 1);
INSERT INTO public.games VALUES (23, 7, 1);
INSERT INTO public.games VALUES (24, 7, 1);
INSERT INTO public.games VALUES (25, 6, 1);
INSERT INTO public.games VALUES (26, 6, 1);
INSERT INTO public.games VALUES (27, 6, 1);
INSERT INTO public.games VALUES (28, 8, 1);
INSERT INTO public.games VALUES (29, 8, 1);
INSERT INTO public.games VALUES (30, 9, 1);
INSERT INTO public.games VALUES (31, 9, 1);
INSERT INTO public.games VALUES (32, 8, 1);
INSERT INTO public.games VALUES (33, 8, 1);
INSERT INTO public.games VALUES (34, 8, 1);
INSERT INTO public.games VALUES (35, 10, 1);
INSERT INTO public.games VALUES (36, 10, 1);
INSERT INTO public.games VALUES (37, 11, 1);
INSERT INTO public.games VALUES (38, 11, 1);
INSERT INTO public.games VALUES (39, 10, 1);
INSERT INTO public.games VALUES (40, 10, 1);
INSERT INTO public.games VALUES (41, 10, 1);
INSERT INTO public.games VALUES (42, 12, 1);
INSERT INTO public.games VALUES (43, 12, 1);
INSERT INTO public.games VALUES (44, 13, 1);
INSERT INTO public.games VALUES (45, 13, 1);
INSERT INTO public.games VALUES (46, 12, 1);
INSERT INTO public.games VALUES (47, 12, 1);
INSERT INTO public.games VALUES (48, 12, 1);
INSERT INTO public.games VALUES (49, 14, 1);
INSERT INTO public.games VALUES (50, 14, 1);
INSERT INTO public.games VALUES (51, 15, 1);
INSERT INTO public.games VALUES (52, 15, 1);
INSERT INTO public.games VALUES (53, 14, 1);
INSERT INTO public.games VALUES (54, 14, 1);
INSERT INTO public.games VALUES (55, 14, 1);
INSERT INTO public.games VALUES (56, 16, 379);
INSERT INTO public.games VALUES (57, 16, 812);
INSERT INTO public.games VALUES (58, 17, 152);
INSERT INTO public.games VALUES (59, 17, 511);
INSERT INTO public.games VALUES (60, 16, 805);
INSERT INTO public.games VALUES (61, 16, 232);
INSERT INTO public.games VALUES (62, 16, 413);
INSERT INTO public.games VALUES (63, 19, 606);
INSERT INTO public.games VALUES (64, 19, 430);
INSERT INTO public.games VALUES (65, 20, 986);
INSERT INTO public.games VALUES (66, 20, 687);
INSERT INTO public.games VALUES (67, 19, 6);
INSERT INTO public.games VALUES (68, 19, 689);
INSERT INTO public.games VALUES (69, 19, 102);
INSERT INTO public.games VALUES (70, 21, 675);
INSERT INTO public.games VALUES (71, 21, 43);
INSERT INTO public.games VALUES (72, 22, 550);
INSERT INTO public.games VALUES (73, 22, 844);
INSERT INTO public.games VALUES (74, 21, 314);
INSERT INTO public.games VALUES (75, 21, 117);
INSERT INTO public.games VALUES (76, 21, 320);
INSERT INTO public.games VALUES (77, 23, 35);
INSERT INTO public.games VALUES (78, 23, 451);
INSERT INTO public.games VALUES (79, 24, 730);
INSERT INTO public.games VALUES (80, 24, 26);
INSERT INTO public.games VALUES (81, 23, 773);
INSERT INTO public.games VALUES (82, 23, 838);
INSERT INTO public.games VALUES (83, 23, 508);
INSERT INTO public.games VALUES (84, 25, 757);
INSERT INTO public.games VALUES (85, 25, 188);
INSERT INTO public.games VALUES (86, 26, 729);
INSERT INTO public.games VALUES (87, 26, 418);
INSERT INTO public.games VALUES (88, 25, 766);
INSERT INTO public.games VALUES (89, 25, 981);
INSERT INTO public.games VALUES (90, 25, 492);
INSERT INTO public.games VALUES (91, 27, 535);
INSERT INTO public.games VALUES (92, 27, 88);
INSERT INTO public.games VALUES (93, 28, 463);
INSERT INTO public.games VALUES (94, 28, 691);
INSERT INTO public.games VALUES (95, 27, 612);
INSERT INTO public.games VALUES (96, 27, 563);
INSERT INTO public.games VALUES (97, 27, 205);
INSERT INTO public.games VALUES (98, 29, 426);
INSERT INTO public.games VALUES (99, 29, 421);
INSERT INTO public.games VALUES (100, 30, 723);
INSERT INTO public.games VALUES (101, 30, 753);
INSERT INTO public.games VALUES (102, 29, 786);
INSERT INTO public.games VALUES (103, 29, 8);
INSERT INTO public.games VALUES (104, 29, 496);
INSERT INTO public.games VALUES (105, 31, 323);
INSERT INTO public.games VALUES (106, 31, 41);
INSERT INTO public.games VALUES (107, 32, 403);
INSERT INTO public.games VALUES (108, 32, 892);
INSERT INTO public.games VALUES (109, 31, 749);
INSERT INTO public.games VALUES (110, 31, 382);
INSERT INTO public.games VALUES (111, 31, 288);
INSERT INTO public.games VALUES (112, 33, 1);
INSERT INTO public.games VALUES (113, 33, 1);
INSERT INTO public.games VALUES (114, 34, 1);
INSERT INTO public.games VALUES (115, 34, 1);
INSERT INTO public.games VALUES (116, 33, 1);
INSERT INTO public.games VALUES (117, 33, 1);
INSERT INTO public.games VALUES (118, 33, 1);
INSERT INTO public.games VALUES (119, 35, 1);
INSERT INTO public.games VALUES (120, 35, 1);
INSERT INTO public.games VALUES (121, 36, 1);
INSERT INTO public.games VALUES (122, 36, 1);
INSERT INTO public.games VALUES (123, 35, 1);
INSERT INTO public.games VALUES (124, 35, 1);
INSERT INTO public.games VALUES (125, 35, 1);
INSERT INTO public.games VALUES (126, 37, 1);
INSERT INTO public.games VALUES (127, 37, 1);
INSERT INTO public.games VALUES (128, 38, 1);
INSERT INTO public.games VALUES (129, 38, 1);
INSERT INTO public.games VALUES (130, 37, 1);
INSERT INTO public.games VALUES (131, 37, 1);
INSERT INTO public.games VALUES (132, 37, 1);
INSERT INTO public.games VALUES (133, 39, 880);
INSERT INTO public.games VALUES (134, 39, 348);
INSERT INTO public.games VALUES (135, 40, 871);
INSERT INTO public.games VALUES (136, 40, 142);
INSERT INTO public.games VALUES (137, 39, 900);
INSERT INTO public.games VALUES (138, 39, 680);
INSERT INTO public.games VALUES (139, 39, 925);
INSERT INTO public.games VALUES (140, 41, 651);
INSERT INTO public.games VALUES (141, 41, 399);
INSERT INTO public.games VALUES (142, 42, 467);
INSERT INTO public.games VALUES (143, 42, 444);
INSERT INTO public.games VALUES (144, 41, 272);
INSERT INTO public.games VALUES (145, 41, 930);
INSERT INTO public.games VALUES (146, 41, 183);
INSERT INTO public.games VALUES (147, 43, 619);
INSERT INTO public.games VALUES (148, 43, 300);
INSERT INTO public.games VALUES (149, 44, 824);
INSERT INTO public.games VALUES (150, 44, 284);
INSERT INTO public.games VALUES (151, 43, 533);
INSERT INTO public.games VALUES (152, 43, 800);
INSERT INTO public.games VALUES (153, 43, 598);
INSERT INTO public.games VALUES (154, 45, 855);
INSERT INTO public.games VALUES (155, 45, 733);
INSERT INTO public.games VALUES (156, 46, 796);
INSERT INTO public.games VALUES (157, 46, 1000);
INSERT INTO public.games VALUES (158, 45, 824);
INSERT INTO public.games VALUES (159, 45, 282);
INSERT INTO public.games VALUES (160, 45, 688);
INSERT INTO public.games VALUES (161, 47, 803);
INSERT INTO public.games VALUES (162, 47, 999);
INSERT INTO public.games VALUES (163, 48, 456);
INSERT INTO public.games VALUES (164, 48, 293);
INSERT INTO public.games VALUES (165, 47, 838);
INSERT INTO public.games VALUES (166, 47, 578);
INSERT INTO public.games VALUES (167, 47, 897);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Eric');
INSERT INTO public.users VALUES (2, 'user_1751835067454');
INSERT INTO public.users VALUES (3, 'user_1751835067453');
INSERT INTO public.users VALUES (4, 'user_1751838028121');
INSERT INTO public.users VALUES (5, 'user_1751838028120');
INSERT INTO public.users VALUES (6, 'user_1751838467001');
INSERT INTO public.users VALUES (7, 'user_1751838467000');
INSERT INTO public.users VALUES (8, 'user_1751838917950');
INSERT INTO public.users VALUES (9, 'user_1751838917949');
INSERT INTO public.users VALUES (10, 'user_1751838971734');
INSERT INTO public.users VALUES (11, 'user_1751838971733');
INSERT INTO public.users VALUES (12, 'user_1751839084078');
INSERT INTO public.users VALUES (13, 'user_1751839084077');
INSERT INTO public.users VALUES (14, 'user_1751839274678');
INSERT INTO public.users VALUES (15, 'user_1751839274677');
INSERT INTO public.users VALUES (16, 'user_1751839448419');
INSERT INTO public.users VALUES (17, 'user_1751839448418');
INSERT INTO public.users VALUES (18, 'Eri');
INSERT INTO public.users VALUES (19, 'user_1751839546863');
INSERT INTO public.users VALUES (20, 'user_1751839546862');
INSERT INTO public.users VALUES (21, 'user_1751839899014');
INSERT INTO public.users VALUES (22, 'user_1751839899013');
INSERT INTO public.users VALUES (23, 'user_1751839950460');
INSERT INTO public.users VALUES (24, 'user_1751839950459');
INSERT INTO public.users VALUES (25, 'user_1751839995801');
INSERT INTO public.users VALUES (26, 'user_1751839995800');
INSERT INTO public.users VALUES (27, 'user_1751840086712');
INSERT INTO public.users VALUES (28, 'user_1751840086711');
INSERT INTO public.users VALUES (29, 'user_1751840239307');
INSERT INTO public.users VALUES (30, 'user_1751840239306');
INSERT INTO public.users VALUES (31, 'user_1751840318200');
INSERT INTO public.users VALUES (32, 'user_1751840318199');
INSERT INTO public.users VALUES (33, 'user_1751840511476');
INSERT INTO public.users VALUES (34, 'user_1751840511475');
INSERT INTO public.users VALUES (35, 'user_1751840563924');
INSERT INTO public.users VALUES (36, 'user_1751840563923');
INSERT INTO public.users VALUES (37, 'user_1751840671662');
INSERT INTO public.users VALUES (38, 'user_1751840671661');
INSERT INTO public.users VALUES (39, 'user_1751840784182');
INSERT INTO public.users VALUES (40, 'user_1751840784181');
INSERT INTO public.users VALUES (41, 'user_1751840885143');
INSERT INTO public.users VALUES (42, 'user_1751840885142');
INSERT INTO public.users VALUES (43, 'user_1751840930134');
INSERT INTO public.users VALUES (44, 'user_1751840930133');
INSERT INTO public.users VALUES (45, 'user_1751841092982');
INSERT INTO public.users VALUES (46, 'user_1751841092981');
INSERT INTO public.users VALUES (47, 'user_1751841128680');
INSERT INTO public.users VALUES (48, 'user_1751841128679');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 167, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 48, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

