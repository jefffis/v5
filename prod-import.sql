--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.0
-- Dumped by pg_dump version 9.5.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: posts; Type: TABLE; Schema: public; Owner: jeffdoan
--

CREATE TABLE posts (
    id integer NOT NULL,
    name character varying,
    content text,
    image character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    unique_id character varying,
    post_file_name character varying,
    post_content_type character varying,
    post_file_size integer,
    post_updated_at timestamp without time zone,
    liked boolean,
    video_link character varying
);


ALTER TABLE posts OWNER TO jeffdoan;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: jeffdoan
--

CREATE SEQUENCE posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE posts_id_seq OWNER TO jeffdoan;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jeffdoan
--

ALTER SEQUENCE posts_id_seq OWNED BY posts.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: jeffdoan
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO jeffdoan;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: jeffdoan
--

ALTER TABLE ONLY posts ALTER COLUMN id SET DEFAULT nextval('posts_id_seq'::regclass);


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: jeffdoan
--

COPY posts (id, name, content, image, created_at, updated_at, unique_id, post_file_name, post_content_type, post_file_size, post_updated_at, liked, video_link) FROM stdin;
66	A bit off the other day =(		\N	2013-08-02 00:07:19.896069	2013-08-02 00:07:19.896069	WFhx9iDV	image.jpg	image/jpeg	115467	2013-08-02 00:07:17.529621	\N	
6	Momma lookin' good!	Rubes lookin' good too -- we can't wait to meet you!	\N	2013-05-23 22:32:54.13579	2013-05-23 22:32:54.13579	PU4amF2v	image.jpg	image/jpeg	2054343	2013-05-23 22:32:48.045491	\N	
8	What mummy wants! 		\N	2013-05-24 17:00:58.640873	2013-05-24 17:00:58.640873	ArJUA52q	image.jpg	image/jpeg	2167289	2013-05-24 17:00:50.097809	\N	
9	Little less than 3 weeks!		\N	2013-05-25 12:52:34.467957	2013-05-25 12:52:34.467957	xlv9Qcj-	image.jpg	image/jpeg	2520190	2013-05-25 12:52:24.786333	\N	
10	Gettin' ready for brunch =)		\N	2013-05-26 16:05:23.951871	2013-05-26 16:05:23.951871	WVXbFNY3	image.jpg	image/jpeg	1887877	2013-05-26 16:05:21.208695	\N	
11	Rockin' the rocker!		\N	2013-05-29 22:43:00.822208	2013-05-29 22:43:00.822208	eI0sh44t	image.jpg	image/jpeg	1904797	2013-05-29 22:42:54.028212	\N	
12	Looking suave		\N	2013-06-01 19:57:34.31656	2013-06-01 19:57:34.31656	ITi7XUDx	image.jpg	image/jpeg	2270569	2013-06-01 19:57:28.406701	\N	
13	Mum & Nana before the baby shower		\N	2013-06-03 14:24:57.830549	2013-06-03 14:24:57.830549	Zl3vkGJe	image.jpg	image/jpeg	2110672	2013-06-03 14:24:53.770806	\N	
14	Mum & Nana @ the ball park		\N	2013-06-06 13:44:20.113451	2013-06-06 13:44:48.006029	6XbC3NQT	image.jpg	image/jpeg	2309936	2013-06-06 13:44:43.565455	\N	
16	Rubes just snoozin'	Nana got a peak at Rubes today, sleeping a lot and up to 8lbs 2oz!	\N	2013-06-07 17:26:45.79686	2013-06-07 17:26:45.79686	pbRM_ZFz	\N	\N	\N	\N	\N	JEktiKJpYXs
17	Any day now!!	Mum & me are just waiting anxiously for you to come join us love <3	\N	2013-06-12 15:55:25.041721	2013-06-12 15:55:25.041721	KX2eeZ8N	\N	\N	\N	\N	\N	
18	Last night before Rubes	And Beanie can't wait either!	\N	2013-06-17 23:27:51.068639	2013-06-17 23:27:51.068639	T0KiLxBT	image.jpg	image/jpeg	1616519	2013-06-17 23:27:44.753131	\N	
19	Morning of; ready to rock!		\N	2013-06-18 14:08:11.887846	2013-06-18 14:08:11.887846	eWOnFDcG	image.jpg	image/jpeg	2132003	2013-06-18 14:08:09.254395	\N	
21	Morning world, day 2! 	I've been around for 32 hours now and I'm loving it! Being an awesome baby seems pretty easy! 	\N	2013-06-20 13:26:49.139896	2013-06-20 13:26:49.139896	QPYTTt6T	image.jpg	image/jpeg	1700290	2013-06-20 13:26:45.745116	\N	
22	Day three; a good nights rest for all =)	Mum & papa watched over me to make sure I slept well, changed me & fed me when I need it -- I'm sooo loved!	\N	2013-06-21 14:39:53.718862	2013-06-21 14:39:53.718862	E7e5Omr3	image.jpg	image/jpeg	1461168	2013-06-21 14:39:49.698756	\N	
20	World; meet Ruby. 	So much love for such a little package =)	\N	2013-06-19 21:20:02.687365	2013-06-22 15:01:43.142444	207pMyTV	image.jpg	image/jpeg	2129290	2013-06-19 21:19:57.303621	\N	
23	Day four(ish); first appt with my doctor!	The doctor said I was looking great, and I got my first vaccine -- mummy & papa were so relieved everything looked good =)	\N	2013-06-22 15:14:02.21724	2013-06-22 15:14:02.21724	Yqr7OhCN	image.jpg	image/jpeg	1606568	2013-06-22 15:13:48.89063	\N	
24	A bit of a rough night, but onto day 5	Grammy & grumpa were here for dinner, but once they left I got a bit cranky - sorry mummy & papa! But once I got to sleep, I had a good nights rest & feed. 	\N	2013-06-23 11:52:48.271211	2013-06-23 11:52:48.271211	x_W3ATXP	image.jpg	image/jpeg	1910292	2013-06-23 11:52:42.945996	\N	
35	After a bit of a fuss, all relaxed now		\N	2013-07-01 18:54:01.76057	2013-07-01 18:54:01.76057	AYqgJ1uF	image.jpg	image/jpeg	2373901	2013-07-01 18:53:56.919768	\N	
26	Cute as a button =)		\N	2013-06-25 14:43:26.777671	2013-06-25 14:43:26.777671	tWhi3haQ	image.jpg	image/jpeg	102792	2013-06-25 14:43:24.317207	\N	
36	Funtime with Nana & Mum		\N	2013-07-02 22:09:50.361687	2013-07-02 22:09:50.361687	-z0dBakQ	image.jpg	image/jpeg	572834	2013-07-02 22:09:44.50058	\N	
37	Two weeks in & I'm lookin' fab!		\N	2013-07-03 21:49:40.227091	2013-07-03 21:49:40.227091	aDLXfRQi	image.jpg	image/jpeg	2517485	2013-07-03 21:49:33.283523	\N	
25	Day 6, snoozing with Papa	Mum & Nana had to run some errands, so I just snoozed on Papas chest; so comfy!	\N	2013-06-24 15:41:26.750923	2013-06-25 18:52:57.67382	WDqJzjFH	image.jpg	image/jpeg	1946447	2013-06-24 15:41:12.839603	\N	
27	Already 7 days old!!!	A great nights sleep for all three of us -- I'm already 7 days old; time flies when you're cute!	\N	2013-06-25 14:46:16.720939	2013-06-25 18:53:15.853374	8tKERi-h	image.jpg	image/jpeg	699959	2013-06-25 14:46:11.37107	\N	
29	8 days outside; look at my cute skirt!		\N	2013-06-27 13:02:48.042083	2013-06-27 13:02:48.042083	KAhduv74	image.jpg	image/jpeg	2324855	2013-06-27 13:02:42.88765	\N	
30	Day 9, feelin' fine	I just loooooove my green chair. I get a great view of all the cool things around my house and I can focus on a few nice patterns, and I also just love to snooze in here too!	\N	2013-06-27 14:40:59.83717	2013-06-27 14:40:59.83717	fCpiiQqU	image.jpg	image/jpeg	2164400	2013-06-27 14:40:53.556939	\N	
31	Snoozin' with pap		\N	2013-06-28 15:35:55.348543	2013-06-28 15:35:55.348543	0NCpmh3O	image.jpg	image/jpeg	550133	2013-06-28 15:35:53.388409	\N	
32	Mum & me lounging on day 10		\N	2013-06-28 17:32:21.610246	2013-06-28 17:34:20.676592	_DFk7bPJ	image.jpg	image/jpeg	1693845	2013-06-28 17:34:14.968954	\N	
33	Nana makes me smile on day 11	On day 11, Nana loves holding me and I love being held =)	\N	2013-06-29 12:20:52.603956	2013-06-29 12:20:52.603956	PsTc09QX	image.jpg	image/jpeg	1662024	2013-06-29 12:20:41.649952	\N	
34	Mum & me cuddling		\N	2013-07-01 00:44:10.786445	2013-07-01 00:44:10.786445	HFQIHGw6	image.jpg	image/jpeg	1975140	2013-07-01 00:44:08.444198	\N	
38	Happy 4th July world! 		\N	2013-07-04 21:40:42.300068	2013-07-04 21:40:42.300068	h5bcz6fy	image.jpg	image/jpeg	1440325	2013-07-04 21:40:37.103359	\N	
39	My first prescription! 	I have had a gunky eye and the doctor says it's a blocked tear duct. Some antibiotic cream should clear it up in no time! 	\N	2013-07-06 01:35:30.966584	2013-07-06 01:35:30.966584	MTl7idqb	image.jpg	image/jpeg	3112746	2013-07-06 01:35:15.566715	\N	
40	Sunday Snoozing		\N	2013-07-07 14:28:06.948929	2013-07-07 14:28:06.948929	jGFKspxh	image.jpg	image/jpeg	2485031	2013-07-07 14:27:58.147076	\N	
41	Resting on mum after a lazy Sunday		\N	2013-07-08 00:59:56.806637	2013-07-08 00:59:56.806637	auvGK7hh	image.jpg	image/jpeg	1842728	2013-07-08 00:59:53.099447	\N	
42	Loving my new blankey from Steve & Claire!		\N	2013-07-08 15:37:59.879111	2013-07-08 15:37:59.879111	AGUIfBMh	image.jpg	image/jpeg	2524942	2013-07-08 15:37:56.913235	\N	
43	Mum cuddling me when my tummy's not feeling so great		\N	2013-07-09 21:30:24.565156	2013-07-09 21:31:56.178271	KYjukuCS	image.jpg	image/jpeg	665321	2013-07-09 21:31:53.386033	\N	
44	Three weeks old!!!		\N	2013-07-11 00:59:02.525139	2013-07-11 00:59:02.525139	Zde67JtE	image.jpg	image/jpeg	2005016	2013-07-11 00:58:54.311418	\N	
45	Tuckered out from a long night walk		\N	2013-07-12 02:12:09.035663	2013-07-12 02:12:29.148089	Ju2-Lz5R	image.jpg	image/jpeg	1911065	2013-07-12 02:12:03.695236	\N	
46	Snuggl'd		\N	2013-07-13 15:48:51.188788	2013-07-13 15:48:51.188788	t53tOO3J	image.jpg	image/jpeg	2009852	2013-07-13 15:48:41.519287	\N	
47	Am I cute or what?!?		\N	2013-07-13 15:49:18.521391	2013-07-13 15:49:18.521391	TPMHJIzD	image.jpg	image/jpeg	145359	2013-07-13 15:49:16.821218	\N	
48	Check out my swing!		\N	2013-07-15 17:07:31.592891	2013-07-15 17:07:31.592891	FW_O-U_o	image.jpg	image/jpeg	120925	2013-07-15 17:07:29.561877	\N	
49	Hot glasses, ya know?		\N	2013-07-16 23:46:03.012177	2013-07-16 23:49:44.238666	erC3B87R	image.jpg	image/jpeg	1992300	2013-07-16 23:49:36.899087	\N	
50	Snoozin' during daddy / daughter night		\N	2013-07-16 23:50:37.838941	2013-07-16 23:50:37.838941	08uM2fH6	image.jpg	image/jpeg	1909007	2013-07-16 23:50:27.362701	\N	
51	Snoozin' on Mum		\N	2013-07-18 20:59:06.737994	2013-07-18 20:59:06.737994	za3Z5yM_	image.jpg	image/jpeg	1901030	2013-07-18 20:58:58.697232	\N	
52	Almost 1 month already!	Mum & papa can't believe you're almost 1 month old; we're so in awe & in love of you; all our love! <3	\N	2013-07-18 22:49:04.724982	2013-07-18 22:49:04.724982	5xvywiFW	image.jpg	image/jpeg	1999807	2013-07-18 22:48:52.866284	\N	
53	1 month old!!!	OMG, I can't believe mom & dad did so well with me!	\N	2013-07-19 22:09:30.980368	2013-07-19 22:09:30.980368	PYPq8Na4	image.jpg	image/jpeg	1719939	2013-07-19 22:09:26.846929	\N	
54	Getting ready to go to Roosevelt Island		\N	2013-07-21 14:59:47.437058	2013-07-21 14:59:47.437058	wChTPyIo	image.jpg	image/jpeg	2363038	2013-07-21 14:59:44.434779	\N	
560	Grammy & Grumpa		\N	2015-05-17 23:31:32.300737	2015-05-19 04:00:25.721697	cibBm7Ac	\N	\N	\N	\N	\N	LdcOY9V3yds
55	Yep world, I'm one month old! You're welcome...		\N	2013-07-22 00:02:52.700512	2013-07-22 00:03:31.759316	P1bltfEH	image.jpg	image/jpeg	1692995	2013-07-22 00:02:40.235145	\N	
56	Chillaxin' with Mum		\N	2013-07-22 23:40:10.162608	2013-07-22 23:40:10.162608	Oq1MERS3	image.jpg	image/jpeg	2050944	2013-07-22 23:40:04.024961	\N	
57	That's how I roll...		\N	2013-07-23 01:57:34.246161	2013-07-23 01:57:34.246161	s1FEHZqT	image.jpg	image/jpeg	1645417	2013-07-23 01:57:30.484419	\N	
58	Crib time; just a test tho. 		\N	2013-07-23 23:12:02.717471	2013-07-23 23:12:02.717471	VSydP0El	image.jpg	image/jpeg	132510	2013-07-23 23:12:01.00789	\N	
60	Look how tiny I am in here!		\N	2013-07-25 15:03:45.013324	2013-07-25 15:05:20.591388	tSp96FCP	image.jpg	image/jpeg	1672586	2013-07-25 15:03:40.447786	\N	
59	First night in the crib; everyone seems more rested =)	Mum & Papa got more good sleep, so I'm happy to help out!	\N	2013-07-25 15:00:55.07219	2013-07-25 15:05:41.97097	whYJjbla	image.jpg	image/jpeg	118689	2013-07-25 15:00:52.226713	\N	
61	I'm a big girl now!	I slept In my crib in mum and dads room last night and I did just fine! 	\N	2013-07-25 17:46:21.027493	2013-07-25 17:46:21.027493	tq_kjV2e	image.jpg	image/jpeg	2578297	2013-07-25 17:46:17.033251	\N	
62	Snoozing after a looooonng day =)		\N	2013-07-27 20:05:31.800476	2013-07-27 20:05:31.800476	xg2Yu9N6	image.jpg	image/jpeg	1960041	2013-07-27 20:05:27.85307	\N	
63	Night out at Friday Night Live		\N	2013-07-27 20:37:13.384102	2013-07-27 20:37:13.384102	SkebW9F1	image.jpg	image/jpeg	1533780	2013-07-27 20:37:07.240663	\N	
64	Morning world		\N	2013-07-28 13:58:16.199	2013-07-28 13:58:16.199	VuzsCGbl	image.jpg	image/jpeg	1852687	2013-07-28 13:58:12.436751	\N	
65	Smiles smiles smiles		\N	2013-07-30 11:26:31.959973	2013-07-30 11:26:31.959973	-U3X_c7w	image.jpg	image/jpeg	570712	2013-07-30 11:26:30.155271	\N	
67	But better today =)		\N	2013-08-02 00:08:11.634727	2013-08-02 00:08:11.634727	7o_PF_8j	image.jpg	image/jpeg	125712	2013-08-02 00:08:08.795161	\N	
68	Back home after a long day		\N	2013-08-03 19:18:34.07446	2013-08-03 19:18:34.07446	0QhPG5hN	image.jpg	image/jpeg	2294425	2013-08-03 19:18:26.772689	\N	
69	Rubes talking		\N	2013-08-03 19:24:16.01288	2013-08-03 19:24:16.01288	KCCP3qsQ	\N	\N	\N	\N	\N	oUaZufF6-G8
70	Nana makes me smile!		\N	2013-08-05 15:13:26.383561	2013-08-05 15:13:26.383561	SHGltKwC	image.jpg	image/jpeg	111728	2013-08-05 15:13:24.622934	\N	
71	Smiles all around		\N	2013-08-07 13:57:20.283371	2013-08-07 13:57:20.283371	eFbiFZ4n	image.jpg	image/jpeg	125373	2013-08-07 13:57:19.614622	\N	
72	Just loving life today		\N	2013-08-07 13:57:41.293061	2013-08-07 13:57:41.293061	C9cpQ8Dc	image.jpg	image/jpeg	112607	2013-08-07 13:57:40.666973	\N	
73	First road trip to the lake- watch out Owasco! 		\N	2013-08-10 04:48:22.629334	2013-08-10 04:48:22.629334	QGrIBoSd	image.jpg	image/jpeg	1541203	2013-08-10 04:48:10.914462	\N	
75	Checking to make sure my sister is still strapped in! 	Coming home from the lake, Bean checks to make sure Ruby is still ok. So cute! 	\N	2013-08-11 16:18:00.459971	2013-08-11 16:18:00.459971	uu9aG1oW	image.jpg	image/jpeg	1268179	2013-08-11 16:17:58.172411	\N	
76	First road trip and loving it! 	After heading to the lake for the weekend, we left this morning at 4 and by 9 miss monkey was laughing and chatting in her car seat. This was one road trip done right! 	\N	2013-08-11 16:20:29.264435	2013-08-11 16:20:29.264435	3xrS2fVK	image.jpg	image/jpeg	1765514	2013-08-11 16:20:25.385189	\N	
77	Snoozably beautiful!		\N	2013-08-12 23:49:48.926793	2013-08-12 23:49:48.926793	ZNI2uTSp	image.jpg	image/jpeg	1906637	2013-08-12 23:49:44.450415	\N	
78	Walmart anyone?		\N	2013-08-14 14:33:13.517051	2013-08-14 14:33:13.517051	uuGrIXwV	image.jpg	image/jpeg	116662	2013-08-14 14:33:12.1408	\N	
79	Monkey at the museum		\N	2013-08-15 23:49:09.423907	2013-08-15 23:49:09.423907	e1TkLMQO	image.jpg	image/jpeg	1112482	2013-08-15 23:49:06.069361	\N	
81	No words, all smiles		\N	2013-08-20 01:56:00.451879	2013-08-20 01:56:00.451879	KwtagVf8	image.jpg	image/jpeg	93571	2013-08-20 01:55:59.285747	\N	
82	Shots are no fun!	Got my 2 month shots\r\nToday and I did not like them! Mommy had to hold me close to comfort me. I now have 3 little band aids on each leg :(	\N	2013-08-20 01:59:34.313631	2013-08-20 02:02:28.464647	A5JAom5v	image.jpg	image/jpeg	1918498	2013-08-20 02:02:24.868058	\N	
94	Happy baby in my new room	I slept 11 hours in the new place last night, so I must like it very much :) after a long day yesterday, mom and dad are looking forward to packing away today. 	\N	2013-09-02 11:45:20.225136	2013-09-02 11:45:20.225136	AGmgpPPW	image.jpg	image/jpeg	1725592	2013-09-02 11:45:17.005832	\N	
83	Rubes just being happy	Roo & Daddy danced like crazy to Led Zeppelin just before this -- so much fun!	\N	2013-08-20 01:59:45.641667	2013-08-20 02:11:02.418401	YSGkdaFU	\N	\N	\N	\N	\N	-OdNMMbNU20
80	Rubes with the fam in Old Town	After a night out with Mum, we all went out for tasty crab to Old Town & had a blast -- Roo fell asleep in mum & daddy's arms too, so cute	\N	2013-08-18 16:17:58.264259	2013-08-20 02:12:02.807505	E58Bc_qP	image.jpg	image/jpeg	1938971	2013-08-18 16:17:54.702819	\N	
74	Mum, Nana & me out on the pier	After lunch at Doug's Fish Fry, we walked around the shops in Skaneateles and then out on the pier -- so pretty	\N	2013-08-10 16:36:35.779686	2013-08-20 02:13:15.640695	MCaLVUcI	image.jpg	image/jpeg	2294083	2013-08-10 16:36:31.5962	\N	
84	2 months old!?!	How the time flies when you're super adorbs!	\N	2013-08-21 18:43:11.885273	2013-08-21 18:43:11.885273	SrghrH9D	image.jpg	image/jpeg	122684	2013-08-21 18:43:10.761576	\N	
85	Bathing at the Elmer's 		\N	2013-08-22 00:29:53.36105	2013-08-22 00:29:53.36105	Xs02EarG	image.jpg	image/jpeg	1566877	2013-08-22 00:29:46.997751	\N	
86	Trying on wedding dresses =)	Getting ready for Uncle Chris' wedding -- I need two super cute outfits to show off in!	\N	2013-08-22 16:11:05.901714	2013-08-22 16:11:05.901714	KaZ0_gAi	image.jpg	image/jpeg	125358	2013-08-22 16:11:03.849719	\N	
87	Coming home from the wedding		\N	2013-08-25 15:25:47.23098	2013-08-25 15:25:47.23098	V8b5uJ2U	image.jpg	image/jpeg	1686322	2013-08-25 15:25:29.766594	\N	
88	Mum & me before the wedding		\N	2013-08-27 11:33:52.956628	2013-08-27 11:33:52.956628	QdLuhIPc	image.jpg	image/jpeg	172215	2013-08-27 11:33:51.578175	\N	
89	Early mornin' stretches =)		\N	2013-08-27 11:34:35.439505	2013-08-27 11:34:54.10062	EBxaEu-Z	image.jpg	image/jpeg	104815	2013-08-27 11:34:33.905154	\N	
90	Gettin' my redneck on! 	Having one of our last bbq's before nana goes home on Saturday. I've outgrown all my 0-3 month onesies! 	\N	2013-08-28 01:12:30.685802	2013-08-28 01:12:30.685802	kTcYRCDm	image.jpg	image/jpeg	95850	2013-08-28 01:12:29.671265	\N	
91	Happy baby!!!		\N	2013-08-30 00:56:07.924015	2013-08-30 00:56:07.924015	e3-B5ZKj	image.jpg	image/jpeg	102811	2013-08-30 00:56:06.742071	\N	
92	Remember when I was this little?!?	Roo -- you're growing so fast and acting like you're already a 6 month old girl; slow down & enjoy it my love!	\N	2013-08-31 01:04:14.668746	2013-08-31 01:04:14.668746	XfbNAJbt	image.jpg	image/jpeg	1946573	2013-08-31 01:04:11.030301	\N	
93	A sad sad day...	Well, today was a bit of a rough day. Firstly, Nana went home this morning, which made us all sad. Then we had to move to our new apartment. After a long day of moving, in pretty pooped. We are not done yet and have to move more tomorrow. Hope it's a better day! 	\N	2013-08-31 23:31:27.675483	2013-08-31 23:31:27.675483	6SRH_kn5	image.jpg	image/jpeg	1918760	2013-08-31 23:31:19.439548	\N	
95	Third day in the new place, my rooms all setup now =)		\N	2013-09-02 18:05:37.188034	2013-09-02 18:05:37.188034	WjEiNlj5	image.jpg	image/jpeg	1976809	2013-09-02 18:05:34.891805	\N	
96	First night in my room!		\N	2013-09-03 12:03:26.431171	2013-09-03 12:03:26.431171	RNQhHXTX	image.jpg	image/jpeg	1882813	2013-09-03 12:03:18.608414	\N	
97	Hanging with Mum		\N	2013-09-05 12:30:51.235064	2013-09-05 12:30:51.235064	YEqam3-Y	image.jpg	image/jpeg	835896	2013-09-05 12:30:48.349449	\N	
98	Sleeping in Dads lap =)		\N	2013-09-05 12:31:29.161335	2013-09-05 12:31:29.161335	-D8wpsZx	image.jpg	image/jpeg	408275	2013-09-05 12:31:27.247679	\N	
99	Listen to me coo		\N	2013-09-05 12:32:24.10148	2013-09-05 12:32:24.10148	fqkzL0ty	\N	\N	\N	\N	\N	DFXq_-fNbYA
100	First week of just Mum & Dad =)	We did it -- we moved, Mum went back to work and Roo is still happy & healthy!	\N	2013-09-07 13:04:08.397706	2013-09-07 13:04:08.397706	cKNkGdKO	image.jpg	image/jpeg	2436718	2013-09-07 13:04:04.415328	\N	
101	My first trip on the Metro	I went with Dad to his old work to pick some of his things up & everyone just loved me cuz I'm suuuuper cute!	\N	2013-09-07 13:05:56.007255	2013-09-07 13:05:56.007255	ELQSo6Gn	image.jpg	image/jpeg	1505045	2013-09-07 13:05:51.022032	\N	
102	Sunday Snoozin' with Mum	Funzies brunch with Katie, Steve & Anna -- then a full day of snoozing with mum	\N	2013-09-09 01:06:27.461076	2013-09-09 01:06:27.461076	Jn_e-h9u	image.jpg	image/jpeg	2502054	2013-09-09 01:06:23.771185	\N	
103	Manic Monday with Mum	Spent the day with mum playing on my mat, reading and playing with toys. Not bad for a Monday! 	\N	2013-09-10 02:39:25.659882	2013-09-10 02:39:25.659882	TvA2_FgF	image.jpg	image/jpeg	2665256	2013-09-10 02:39:22.195115	\N	
104	Roo snoring =)		\N	2013-09-10 12:11:39.480697	2013-09-10 12:11:39.480697	LrTtcIs4	\N	\N	\N	\N	\N	VGAm3LLTO8E
105	Roo snoozin' in Dads lap	After a fun day with Mrs Elmer, I'm pooped =)	\N	2013-09-10 21:10:22.162219	2013-09-10 21:10:22.162219	o3nqkqIZ	image.jpg	image/jpeg	1642933	2013-09-10 21:10:18.768144	\N	
107	Just a good afternoon		\N	2013-09-13 20:49:54.585559	2013-09-13 20:49:54.585559	mFr98SbB	image.jpg	image/jpeg	2083926	2013-09-13 20:49:47.275926	\N	
108	Snoozing with Dad		\N	2013-09-13 20:50:22.964324	2013-09-13 20:50:22.964324	PIqUavIW	image.jpg	image/jpeg	397095	2013-09-13 20:50:21.368933	\N	
110	Snoozing with mommy this morning 	One of mommies favorite things is to cuddle with me in the morning. 	\N	2013-09-15 15:42:58.366077	2013-09-15 15:42:58.366077	UJTfJG3x	image.jpg	image/jpeg	538738	2013-09-15 15:42:56.543819	\N	
111	First day of Daycare!	It's my first day of daycare! I'm at Maria Theresa's babies and I hope I'm going to meet lots of new friends. Mommy was sad dropping me off, she cried a little :(. But I think I'm going to have fun! 	\N	2013-09-16 14:08:21.296258	2013-09-16 19:22:31.087873	FNVQHuNw	image.jpg	image/jpeg	113817	2013-09-16 14:08:20.108125	\N	
112	My first infant report	My very first infant report. I had a great day! 	\N	2013-09-16 21:44:19.19111	2013-09-16 21:44:19.19111	NUaYjA_D	image.jpg	image/jpeg	2092645	2013-09-16 21:44:14.866984	\N	
113	Back home with Mum after my first day =)	Had a great day, I played a lot, ate a bit, slept a bit, and just had a good time!	\N	2013-09-17 00:32:32.899466	2013-09-17 00:32:32.899466	PZw1wsHB	image.jpg	image/jpeg	122174	2013-09-17 00:32:26.322743	\N	
114	I'm getting the hang of this school thing! 	My second day of school and I'm looking good! Bring it daycare! 	\N	2013-09-18 02:23:34.114126	2013-09-18 02:23:34.114126	tp5W3vjj	image.jpg	image/jpeg	2148185	2013-09-18 02:23:30.739617	\N	
115	Snoozing in the stroller after daycare		\N	2013-09-19 01:24:27.258364	2013-09-19 01:24:27.258364	ZCufkC6I	image.jpg	image/jpeg	1839857	2013-09-19 01:24:07.192855	\N	
116	3 months old already!!	Mum & Dad can't believe it's already here! The days have flown by and you've just been such a blessing. You're so happy, healthy and loving, we can't say we love you enough.\r\n\r\nAll our love <3	\N	2013-09-19 13:56:31.841963	2013-09-19 13:57:27.674536	vH3FE-yc	image.jpeg	image/jpeg	1999545	2013-09-19 13:56:27.229246	\N	
117	I survived 3 months with mum and dad! 	3 months old yesterday. Any believe it! 	\N	2013-09-20 12:38:51.023852	2013-09-20 12:38:51.023852	3shm7gMt	image.jpg	image/jpeg	1838076	2013-09-20 12:38:44.763527	\N	
118	Squishy face =)		\N	2013-09-21 13:38:53.794233	2013-09-21 13:38:53.794233	i2gnc-ST	image.jpg	image/jpeg	76370	2013-09-21 13:38:51.552707	\N	
119	Dadhawkin' with Roo		\N	2013-09-21 13:39:22.25035	2013-09-21 13:39:22.25035	aWJO9XO5	image.jpg	image/jpeg	44163	2013-09-21 13:39:20.532368	\N	
120	Kitchen dancing		\N	2013-09-23 22:50:51.050718	2013-09-23 22:50:51.050718	_b24wegu	image.jpg	image/jpeg	1588867	2013-09-23 22:50:41.139795	\N	
121	Calvin Klein, what what?!?	You've got so many cute outfits, we just had to try Calvin Klein out for the day =)	\N	2013-09-25 01:30:43.511823	2013-09-25 01:30:43.511823	gzqHAogu	image.jpg	image/jpeg	117516	2013-09-25 01:30:40.316155	\N	
122	Daddy's favorite girl <3		\N	2013-09-26 18:09:42.031787	2013-09-26 18:09:42.031787	5-iErCEX	image.jpg	image/jpeg	962130	2013-09-26 18:09:39.381864	\N	
109	Babies first mugshot!	Went to get my passport photo taken on Friday, and as they took it, I started pooping!\r\n\r\nNote from Dad:\r\n\r\nOf course you were dressed super cute & so well behaved, but when it came time for you to pose for photos; you poo'd! So funny & cute.	\N	2013-09-15 15:41:14.159931	2013-09-26 23:53:10.969903	OtpJx1Fh	image.jpg	image/jpeg	1968082	2013-09-15 15:41:10.92528	\N	
123	8 hour car ride? No problem for super baby =)	Each and every day you continue to amaze us -- your smiles, noises, gestures, expressions; just everything says love and amazement. We can't wait to see what the future has for you, but we also know we have the best baby in the world!	\N	2013-09-28 02:09:29.091167	2013-09-28 02:09:29.091167	_WbrZ10H	image.jpg	image/jpeg	1208549	2013-09-28 02:09:26.064229	\N	
124	Monkey at the beach! 	First time ever at the beach yesterday. It was a little windy so we didn't stay to long. We Are at Pawleys Island for Lindsay and Shawn's wedding this weekend.	\N	2013-09-28 14:22:11.831643	2013-09-28 14:22:11.831643	OqsPi9q_	image.jpg	image/jpeg	2380657	2013-09-28 14:22:08.736284	\N	
125	Gangsta beach baby	Today was the first time I ever put my feet in ocean water. I wasn't sure about it at first, but then I liked it. 	\N	2013-09-28 15:36:21.152329	2013-09-28 15:36:21.152329	ydA4YUd5	image.jpg	image/jpeg	68581	2013-09-28 15:36:20.351811	\N	
126	Pooped after a fun weekend 	After a fun weekend in SC, I fell asleep on daddies lap at Eggs up diner where mommy and daddy had breakfast before making the long trip home. 	\N	2013-09-29 21:24:05.566917	2013-09-29 21:24:05.566917	EzbkVKZQ	image.jpg	image/jpeg	2429249	2013-09-29 21:23:49.337157	\N	
127	Happy baby on the ride home	Two 8 hour car rides in 3 days; no problem for our Roo. You were so wonderful this weekend; everyone who met you fell in love with you!	\N	2013-09-30 01:51:29.810797	2013-09-30 01:51:29.810797	P0XlUveK	image.jpg	image/jpeg	57465	2013-09-30 01:51:28.695165	\N	
129	Ruby playing in her funzy table		\N	2013-10-02 02:05:49.783034	2013-10-02 02:05:49.783034	c1vibRUm	\N	\N	\N	\N	\N	JvNFRjmu40A
130	Babes in the park	Me and daddy in the park where we take Bean for her walks everyday	\N	2013-10-02 03:12:38.887092	2013-10-02 03:12:38.887092	75wwH096	image.jpg	image/jpeg	2196108	2013-10-02 03:12:32.653291	\N	
131	Chilling in the stroller after a nice day @ daycare	Mommy had to work late, so I came to pick you up. You we're so happy at daycare; so amazing to see how you grow day by day. 	\N	2013-10-03 02:28:36.973929	2013-10-03 02:28:36.973929	tjlGfs4f	image.jpg	image/jpeg	2410840	2013-10-03 02:28:30.607892	\N	
132	Snoozing in Dads arms	You've been super stuffy recently; we went to SC last weekend and it was super dry in the room. So, we've been trying to unstuff you as best we can =)\r\n\r\n	\N	2013-10-04 12:57:15.257555	2013-10-04 12:57:15.257555	ItfL1o6b	image.jpg	image/jpeg	1391042	2013-10-04 12:57:12.56088	\N	
134	Roo gnaws on Mummy's knuckes		\N	2013-10-06 12:50:11.550456	2013-10-06 12:50:11.550456	yyvY8-f0	\N	\N	\N	\N	\N	6ql0wJMv0xM
135	Yawning big time!		\N	2013-10-08 11:44:15.533977	2013-10-08 11:44:15.533977	_tk-7Vwh	image.jpg	image/jpeg	1564337	2013-10-08 11:44:09.833693	\N	
133	Get your busy bee!	You love your chair & your busy bee -- look how active your cute little arms & leggies are =)	\N	2013-10-05 18:26:10.055779	2013-10-09 02:39:43.304437	f_On-hq8	\N	\N	\N	\N	\N	Qkrv5FcNkFA
137	Late night tv watching with my folks =)	Watching the series finale of Dexter, I snoozed in Dad's arms	\N	2013-10-10 21:23:29.705165	2013-10-10 21:23:29.705165	Hqh55S6n	image.jpg	image/jpeg	905494	2013-10-10 21:23:14.354957	\N	
136	Wearin' a cap, sittin' in my rocker		\N	2013-10-09 13:11:15.866927	2013-10-10 21:24:46.598477	07zE_jlN	image.jpg	image/jpeg	122642	2013-10-09 13:11:14.177299	\N	
139	Like my shoes?		\N	2013-10-12 18:05:00.998413	2013-10-12 18:05:00.998413	TDsGtMLm	image.jpg	image/jpeg	108209	2013-10-12 18:05:00.054568	\N	
141	Dad & Roo working the camera for Mum	Not yet 4 months, but you're holding yourself up like a champ!	\N	2013-10-14 20:17:51.539868	2013-10-14 20:17:51.539868	_fxH96AS	image.jpg	image/jpeg	98200	2013-10-14 20:17:47.511488	\N	
559	Styling it up!		\N	2015-05-03 00:52:46.271476	2015-05-03 00:52:46.271476	n4UN_Mjd	image.jpg	image/jpeg	1533231	2015-05-03 00:52:42.165041	\N	
140	Baby at the bar? Is this ok :)	We took Rubes to carpool since the 49ers were playing and we had been cooped up in the house all weekend with colds. I think she liked it :)	\N	2013-10-14 15:42:37.430225	2013-10-14 15:42:37.430225	BVg5NiMa	image.jpg	image/jpeg	2064960	2013-10-14 15:42:33.306878	\N	
247	Momma & Me in the morn'	Mom and I are always so blown away at how happy and cute and moveable your are every morning!	\N	2014-02-05 16:09:26.905822	2014-02-05 16:09:26.905822	8n6DvK-W	image.jpg	image/jpeg	1890000	2014-02-05 16:09:22.08347	\N	
248	Bathtime funtime!		\N	2014-02-07 12:57:08.138771	2014-02-07 12:57:08.138771	Q3Z4AmiS	image.jpg	image/jpeg	986570	2014-02-07 12:57:05.734686	\N	
249	Morning mumma =)		\N	2014-02-07 12:57:39.880318	2014-02-07 12:57:39.880318	nWbLPTJd	image.jpg	image/jpeg	1401101	2014-02-07 12:57:36.998872	\N	
250	Nom nom nom		\N	2014-02-08 13:56:40.49318	2014-02-08 13:56:40.49318	Hop0q3yF	image.jpg	image/jpeg	340473	2014-02-08 13:56:39.461996	\N	
251	Yummy yummy!	After a fun day at daycare, we had a fun dance party at home -- smiles all around!	\N	2014-02-11 03:43:10.436012	2014-02-11 03:43:33.360301	MSnI271W	image.jpg	image/jpeg	2240628	2014-02-11 03:43:02.375995	\N	
252	Snoozing in the stroller		\N	2014-02-11 03:44:18.643494	2014-02-11 03:44:18.643494	X_yDOpDW	image.jpg	image/jpeg	1640300	2014-02-11 03:44:15.322376	\N	
253	Wussup y'all =)		\N	2014-02-12 04:10:03.191646	2014-02-12 04:10:03.191646	z9TElHYw	\N	\N	\N	\N	\N	0g5L3WqUt9k
254	Brekkie at home with momma	I'm getting good at putting those little puffs in my mouth -- only takes a few tries now =)	\N	2014-02-13 13:49:26.622644	2014-02-13 13:49:26.622644	r8ra3Ipk	image.jpg	image/jpeg	2391704	2014-02-13 13:49:18.495151	\N	
255	Check out my fangs! 		\N	2014-02-14 01:01:56.279202	2014-02-14 01:01:56.279202	sQ4VxILw	image.jpg	image/jpeg	71701	2014-02-14 01:01:55.655756	\N	
256	At the office with Mum	Snow day here, so day care is closed, but that means I get to go to work with Mum; yay!	\N	2014-02-14 16:12:33.841198	2014-02-14 16:12:33.841198	QPwrjXIQ	image.jpg	image/jpeg	202635	2014-02-14 16:12:15.210027	\N	
257	Gimme that phone!		\N	2014-02-15 18:25:39.573192	2014-02-15 18:25:39.573192	SMOdbO92	image.jpg	image/jpeg	382060	2014-02-15 18:25:38.602427	\N	
258	Checkin' myself out	I just love looking at myself whenever I can; it brightens my day =)	\N	2014-02-15 18:29:18.78385	2014-02-15 18:29:18.78385	qBa5xGhR	image.jpg	image/jpeg	2147708	2014-02-15 18:29:15.975847	\N	
259	Playing with daddy! 		\N	2014-02-17 01:25:57.03542	2014-02-17 01:25:57.03542	3bFOHpq_	image.jpg	image/jpeg	1504384	2014-02-17 01:25:52.579868	\N	
260	Ballerina in training! 		\N	2014-02-17 01:27:45.862276	2014-02-17 01:27:45.862276	01M0frWj	image.jpg	image/jpeg	131126	2014-02-17 01:27:44.621233	\N	
261	Day off with Gram & Grandpa	Had a blast hanging with Grammy & Grumps today!	\N	2014-02-18 01:29:04.903254	2014-02-18 01:29:04.903254	my9p5ovY	image.jpg	image/jpeg	1906791	2014-02-18 01:28:56.443234	\N	
281	Ablablablablah		\N	2014-03-06 23:52:40.714851	2014-03-06 23:52:40.714851	OI4gFr91	image.jpg	image/jpeg	117191	2014-03-06 23:52:38.648024	\N	
263	Post nap with grumpa on Presidents' Day! 	I spent the day today with grumps and grandma because it was Presidents' Day and mum and dad had to work. I had a good day! 	\N	2014-02-18 03:09:24.13639	2014-02-18 03:09:24.13639	CTs20-Ea	image.jpg	image/jpeg	1882254	2014-02-18 03:09:17.174248	\N	
264	Mum & me eating bread	8 months old already! We can't believe how much you've grown, and how much you grow each day -- we love you so much & are so proud of you!	\N	2014-02-20 00:43:22.086439	2014-02-20 00:43:22.086439	-D7i1Jq4	image.jpg	image/jpeg	2352063	2014-02-20 00:43:18.679825	\N	
282	Sleepy baby; but good food!		\N	2014-03-06 23:53:34.935329	2014-03-06 23:53:34.935329	86cW7999	image.jpg	image/jpeg	2470911	2014-03-06 23:53:30.984466	\N	
266	Mum & me feeling rough this am		\N	2014-02-22 14:24:18.515821	2014-02-22 21:58:58.937517	tf2T_47Z	image.jpg	image/jpeg	2185616	2014-02-22 21:58:55.942434	\N	
267	Snoozing at Grammy & Grumpa's house	After a long day with a play date and running errands, I went to G & G's house and hung out with them & the Schambers, and then I was pooped =)	\N	2014-02-23 14:20:00.011905	2014-02-23 14:20:00.011905	Y3EZsQ8S	photo.JPG	image/jpeg	42030	2014-02-23 14:19:58.491861	\N	
268	Mommy's friend is having twins! 	Mommy's friend Lori found out today that she will be having two new buddies for me to play with. This is the conversation that mommy, aunt Lori and uncle Bill had when aunt Lori found out! 	\N	2014-02-25 01:22:31.545185	2014-02-25 01:25:05.051239	iCtjaoTA	image.jpg	image/jpeg	123476	2014-02-25 01:25:02.587011	\N	
269	I love swinging!		\N	2014-02-25 01:29:04.30069	2014-02-25 01:29:04.30069	hMCLIDjp	image.jpg	image/jpeg	214424	2014-02-25 01:29:02.120568	\N	
270	Snoozing with papa		\N	2014-02-25 01:31:38.993442	2014-02-25 01:31:38.993442	32JZ55FY	image.jpg	image/jpeg	2017316	2014-02-25 01:31:28.843524	\N	
271	Bean & me =)		\N	2014-02-26 23:21:20.442996	2014-02-26 23:21:20.442996	ktdyfPEL	image.jpg	image/jpeg	2076984	2014-02-26 23:21:16.439685	\N	
272	What Grammy and I talk about. 	Cute convo between "Ruby" (actually mommy) and grandma about having been over to visit the past Saturday. 	\N	2014-02-27 00:54:03.444944	2014-02-27 00:54:03.444944	a2P95RfQ	image.jpg	image/jpeg	178421	2014-02-27 00:54:02.079803	\N	
273	Morning dad =)		\N	2014-03-01 13:12:17.016192	2014-03-01 13:12:17.016192	qJ3ImOen	image.jpg	image/jpeg	1682300	2014-03-01 13:12:11.949738	\N	
274	Ruby checking herself out		\N	2014-03-01 13:18:59.917648	2014-03-01 13:18:59.917648	Gcbi-Qev	\N	\N	\N	\N	\N	e73N4VEgbJ0
275	Ruby in her first swing		\N	2014-03-01 13:19:27.961996	2014-03-01 13:19:27.961996	GrgzNjL-	\N	\N	\N	\N	\N	D-EVSPs70N8
276	Not impressed! 		\N	2014-03-01 14:43:46.846326	2014-03-01 14:43:46.846326	BszvIq1-	image.jpg	image/jpeg	1672953	2014-03-01 14:43:44.095426	\N	
277	Snow day! 	Snow day, home with mum and dad again. This is me after a nap. Mom and dad left me in my crib to cry until I fell asleep. Now I'm happy! 	\N	2014-03-03 18:12:54.917488	2014-03-03 18:12:54.917488	tR_PIzbV	image.jpg	image/jpeg	1582983	2014-03-03 18:12:47.875648	\N	
278	Coding		\N	2014-03-04 20:54:54.777292	2014-03-04 20:54:54.777292	n9xrSIc-	image.jpg	image/jpeg	1871424	2014-03-04 20:54:48.736348	\N	
279	Mommys new hat		\N	2014-03-04 20:56:27.481915	2014-03-04 20:56:27.481915	oBjbHOM6	image.jpg	image/jpeg	1763592	2014-03-04 20:56:23.214344	\N	
280	Starting to look a little like daddy...		\N	2014-03-05 03:30:32.600469	2014-03-05 03:30:32.600469	6-kvld3q	image.jpg	image/jpeg	248461	2014-03-05 03:30:31.597364	\N	
283	Little miss glam	Finally a nice day outside after this long winter; Mum & Dad took me & sis for brunch =)	\N	2014-03-08 21:50:54.163894	2014-03-08 21:50:54.163894	Z9l5BtTZ	image.jpg	image/jpeg	1986582	2014-03-08 21:50:51.285397	\N	
284	A little late, but here is her 8 month photo!		\N	2014-03-10 14:47:39.506409	2014-03-10 14:47:39.506409	cY0zBPL7	image.jpg	image/jpeg	1093766	2014-03-10 14:47:37.387337	\N	
285	And one more...		\N	2014-03-10 14:48:06.790339	2014-03-10 14:48:06.790339	B0UHw-G_	image.jpg	image/jpeg	228672	2014-03-10 14:48:05.759243	\N	
286	I'm so damn cute! 		\N	2014-03-10 14:48:45.636108	2014-03-10 14:48:45.636108	yGAosqET	image.jpg	image/jpeg	1674439	2014-03-10 14:48:42.653843	\N	
287	Got my style on! 		\N	2014-03-10 14:49:19.750042	2014-03-10 14:49:19.750042	bYt50gfO	image.jpg	image/jpeg	1789633	2014-03-10 14:49:15.815468	\N	
288	Hey dudes; I can clap now!	Say what!?! Yep, you started clapping for us yesterday, but both our phones we're charging.  We cannot believe you're doing that already -- so much love for you!!!	\N	2014-03-11 22:48:10.022507	2014-03-11 22:49:20.273412	ldVfIDy5	image.jpg	image/jpeg	2278124	2014-03-11 22:49:14.303355	\N	
289	Ruby says I want more!		\N	2014-03-13 00:34:42.303591	2014-03-13 00:34:42.303591	34uMkVWQ	\N	\N	\N	\N	\N	7NdKF8yOWOg
290	Grumpa puts Ruby down for bed! 		\N	2014-03-15 02:22:11.574465	2014-03-15 02:22:11.574465	W0k7hhMu	image.jpg	image/jpeg	1692918	2014-03-15 02:22:08.035809	\N	
291	Dad & me hanging in Eastern Market		\N	2014-03-15 17:59:48.791958	2014-03-15 17:59:48.791958	GET0IbBX	image.jpg	image/jpeg	432674	2014-03-15 17:59:47.549533	\N	
292	Happy girl in DC for the day		\N	2014-03-15 18:00:49.529694	2014-03-15 18:00:49.529694	rZ15j0le	image.jpg	image/jpeg	418166	2014-03-15 18:00:48.055647	\N	
293	Check that cute tooshie!	You're practically standing now -- you love standing at your play station making songs and answering the phone there	\N	2014-03-16 15:10:39.620371	2014-03-16 15:10:39.620371	McxQg3IU	image.jpg	image/jpeg	1601127	2014-03-16 15:10:37.042186	\N	
143	Passed out with Dad		\N	2013-10-16 14:40:39.93325	2013-10-16 14:40:39.93325	P4FOSTgD	image.jpg	image/jpeg	2183324	2013-10-16 14:40:37.497464	\N	
144	Getting ready for day care; yay!		\N	2013-10-17 00:23:31.490833	2013-10-17 00:23:31.490833	liN_NA2r	image.jpg	image/jpeg	2075135	2013-10-17 00:23:26.523132	\N	
145	Fell asleep during our nightly walk	You're so cuddly and huggable at this age, your mum & I just carry you around as much as we can -- we love you monkey <3	\N	2013-10-18 00:25:09.737264	2013-10-18 00:25:09.737264	W4zHwsyP	image.jpg	image/jpeg	2423462	2013-10-18 00:25:05.978664	\N	
146	Grumpy face during bath time		\N	2013-10-18 00:26:33.750285	2013-10-18 00:26:33.750285	o_r3g_ox	image.jpg	image/jpeg	2057975	2013-10-18 00:26:28.724774	\N	
147	Out to lunch with Mum & Aunt Kievs		\N	2013-10-19 12:01:24.98437	2013-10-19 12:01:24.98437	GvMv2NT1	image.jpg	image/jpeg	137909	2013-10-19 12:01:22.754132	\N	
148	Happy 4 Months!!!	Already 4 months old; where has the time gone? You've grown into such an incredible little monkey and every day you start something new or try your voice out in a different way -- Mum & Dad love you so!!	\N	2013-10-19 12:05:12.81941	2013-10-19 12:05:12.81941	jsF8lSUG	image.jpg	image/jpeg	400008	2013-10-19 12:05:09.657387	\N	
149	Check out my skinny jeans! 		\N	2013-10-21 02:20:08.35838	2013-10-21 02:20:08.35838	5_8EzXTq	image.jpg	image/jpeg	1772415	2013-10-21 02:20:01.719491	\N	
150	I'm so cute! 		\N	2013-10-21 02:22:34.884595	2013-10-21 02:23:14.498006	4yexf6D6	image.jpg	image/jpeg	1213760	2013-10-21 02:23:11.516431	\N	
152	Fun weekend with Mum & Dad	I met & hung out with Anna; future bestie!?!	\N	2013-10-21 19:49:32.769815	2013-10-21 19:53:49.667243	h8yR_KIM	image.jpg	image/jpeg	1895207	2013-10-21 19:53:46.606415	\N	
153	Snoozing a bit after my 4 month shots =(	You got two more shots and three vaccinations today; but you were so good -- if that was Dad he would have cried and cried and cried, but not our little angel =)  You're growing up so quickly, it's unbelievable; you can start with solids now -- Mum & Dad can't wait!	\N	2013-10-21 19:57:17.330652	2013-10-21 19:57:17.330652	lbkEXF1q	image.jpg	image/jpeg	1692170	2013-10-21 19:57:14.220051	\N	
155	Chilling before school with my sister! 		\N	2013-10-24 17:04:46.860965	2013-10-24 17:04:46.860965	T3uk6VEG	image.jpg	image/jpeg	1724252	2013-10-24 17:04:44.501117	\N	
154	Had my shots today :( - 4 months old	Got my second round of shots today. I wasn't happy but did a great job anyway. Also had to start on antibiotics for my cold and it looks like I might be getting an ear infection :( 	\N	2013-10-21 23:45:12.883545	2013-10-24 17:39:54.054954	v6D4vTrj	image.jpg	image/jpeg	1673294	2013-10-21 23:46:56.312527	\N	
157	All snuggs'd up with Mum @ lunch		\N	2013-10-25 15:49:48.966225	2013-10-25 15:49:48.966225	J-fgXBJD	image.jpg	image/jpeg	582057	2013-10-25 15:49:46.892009	\N	
158	Hey y'all; I'm cute!		\N	2013-10-25 22:17:04.684048	2013-10-25 22:17:04.684048	F8VCKBGs	image.jpg	image/jpeg	394808	2013-10-25 22:17:03.228568	\N	
172	Happy little monkey, even with a fever	Even with a fever, I don't let it get me down; I'm always a happy little monkey!	\N	2013-11-08 17:59:49.59064	2013-11-08 18:10:19.367159	iWTDOQ8F	image.jpg	image/jpeg	2054124	2013-11-08 17:59:46.226291	\N	OHeM9uTv1v8
159	First try in my jumper	Not quite ready for it yet, but I'm almost there!	\N	2013-10-27 14:02:52.854612	2013-10-27 14:03:34.37377	TAJIGDtd	\N	\N	\N	\N	\N	Cm9agJCqpgI
160	My first Halloween festival with my buddy Sylas	Went to a Halloween festival in Clarendon today. Met Sylas there with his mom and dad. We had fun but I think we are still a little to small to really enjoy these things.	\N	2013-10-28 18:23:34.448394	2013-10-28 18:23:34.448394	8XQQsHVI	image.jpg	image/jpeg	145999	2013-10-28 18:23:33.553957	\N	
161	First real food!!!	You seemed to love it; and you did a great job just rolling with it. We can't believe this day has already come -- so far so fast!\r\n\r\nYou had a bit of a reaction afterwards, so we're not sure if you really loved it though; only time will tell!	\N	2013-10-29 02:42:09.852305	2013-10-29 02:42:09.852305	w0keSovZ	\N	\N	\N	\N	\N	hpBPbI1xTls
163	My first Halloween! 	My first Halloween. We went to a party at some friends condo. 	\N	2013-11-01 01:07:11.160185	2013-11-01 01:07:11.160185	bg5ICwiI	image.jpg	image/jpeg	624892	2013-11-01 01:07:09.099236	\N	
164	Already a fashionista		\N	2013-11-01 03:31:17.965282	2013-11-01 03:31:17.965282	IyfxorHQ	image.jpg	image/jpeg	1154906	2013-11-01 03:31:15.545353	\N	
165	All smiles on my day with Mum		\N	2013-11-01 22:14:39.39725	2013-11-01 22:14:39.39725	MQjf_Kbm	image.jpg	image/jpeg	132188	2013-11-01 22:14:36.924469	\N	
166	Some tummy time		\N	2013-11-02 15:37:20.587597	2013-11-02 15:38:10.856993	6Z_3csND	image.jpg	image/jpeg	2170260	2013-11-02 15:38:07.962679	\N	
167	Bathing with Dad!	Had a great bath with Dad, I was all smiles. I did poo a bit tho; first time for everything!!	\N	2013-11-02 23:08:36.766846	2013-11-02 23:08:36.766846	jVLAy-kA	image.jpg	image/jpeg	2236187	2013-11-02 23:08:34.219443	\N	
168	Chilling in my exer-saucer, oh and I have 2 teeth!	I had a biiiiig weekend; I got my first two teeth!?! At only 4 and a half months, I'm growing up soooo fast, Mom & Dad better watch out <3	\N	2013-11-05 03:51:54.956235	2013-11-05 03:51:54.956235	FRr_fWow	image.jpg	image/jpeg	158883	2013-11-05 03:51:54.196961	\N	
170	Check my fashionable suit =)		\N	2013-11-06 00:50:41.085795	2013-11-06 00:50:41.085795	7i5bPbpQ	image.jpg	image/jpeg	3253373	2013-11-06 00:50:35.594343	\N	
171	Snuggled up with Mum	We had a great walk, and a fun bath -- you are lots of peas, broccoli, and pears. But afterwards, you had a lot of teething pain -- finally some ice chews and Tylenol helped you get to sleep =)	\N	2013-11-07 02:44:04.62293	2013-11-07 02:45:48.749558	Q1bv4hXY	image.jpg	image/jpeg	1962350	2013-11-07 02:45:44.681544	\N	
173	Saturday mornin' tummy time		\N	2013-11-09 13:00:57.903045	2013-11-09 13:00:57.903045	IOIWEp8N	image.jpg	image/jpeg	1951453	2013-11-09 13:00:50.123836	\N	
174	Spent the day with Grammy & Grandpa	And I loved it -- we played and played and played some more. I didn't sleep much, but that's ok, that's what homes for -- I love my playdates at Grammys & Grumpas!	\N	2013-11-12 04:44:34.130328	2013-11-12 04:44:34.130328	iXoATjcq	image.jpg	image/jpeg	2035164	2013-11-12 04:44:26.780113	\N	
175	Kisses for everyone! 	Spent the morning with mummy on Friday last week and have lots of kisses! 	\N	2013-11-13 03:46:52.387509	2013-11-13 03:46:52.387509	G4BbXI_0	image.jpg	image/jpeg	32117	2013-11-13 03:46:51.692432	\N	
176	All snugged up like Ralphie from A Christmas Story		\N	2013-11-13 16:19:24.305351	2013-11-13 16:19:24.305351	-mkl_z1K	image.jpg	image/jpeg	1348989	2013-11-13 16:19:20.482853	\N	
178	Happy happy times in my exersaucer	Each day I get more & more excited, active and smiley when in my exer saucer; I just love it!	\N	2013-11-15 00:40:07.736514	2013-11-15 00:40:07.736514	Stp2LLhc	image.jpg	image/jpeg	2140529	2013-11-15 00:40:04.329123	\N	
179	Angry baby want food!		\N	2013-11-16 14:29:02.228164	2013-11-16 14:29:02.228164	vqdUpUvB	image.jpg	image/jpeg	744679	2013-11-16 14:28:59.527133	\N	
180	Heyaaaaa!	I'm just talking up a storm this morning; just loving my exer saucer!	\N	2013-11-17 14:59:03.569205	2013-11-17 14:59:03.569205	3EOarULa	image.jpg	image/jpeg	1537560	2013-11-17 14:58:56.449669	\N	
181	Hiking with mum and dad	Went on my first hike with mum, dad and Bean. We went to great falls park and hiked for 2 hours. I fell asleep in my carrier but I loved being outdoors! 	\N	2013-11-19 02:50:04.44724	2013-11-19 02:50:04.44724	pGwVlL_N	image.jpg	image/jpeg	50858	2013-11-19 02:50:02.984647	\N	
182	More hiking photos! 		\N	2013-11-19 02:51:15.188318	2013-11-19 02:51:15.188318	RBXSbuc5	image.jpg	image/jpeg	2403419	2013-11-19 02:51:10.796725	\N	
183	Me and my buddy Anna 	It was mums birthday last week Wednesday, so on Friday we all went to Screwtop bar to celebrate. My friend Anna was there! 	\N	2013-11-19 03:01:53.795257	2013-11-19 03:01:53.795257	9PJ6FoEN	image.jpg	image/jpeg	703314	2013-11-19 03:01:50.601823	\N	
184	More celebrations for mums birthday...	On Saturday we went to Rio Grande in Reston to celebrate her birthday with Aunt Liz and Sylas was there. He was not a happy fella :) 	\N	2013-11-19 03:05:24.932576	2013-11-19 03:05:24.932576	LBabXDg-	image.jpg	image/jpeg	1355513	2013-11-19 03:05:19.654939	\N	
185	Me, Mum and Dad		\N	2013-11-19 03:06:48.091251	2013-11-19 03:07:55.289296	KS6eEBcR	image.jpg	image/jpeg	1170001	2013-11-19 03:07:49.156822	\N	
186	First meal in my high-chair	Mum got me a high-chair so I can relax while getting used to eating solid food -- I love it; and I'm getting pretty good at this whole real food thing!	\N	2013-11-20 16:16:00.500467	2013-11-20 16:16:00.500467	0pTP6oLB	image.jpg	image/jpeg	2001912	2013-11-20 16:15:57.521723	\N	
187	So cute in the morning =)		\N	2013-11-20 16:18:00.199138	2013-11-20 16:18:00.199138	bFetFxrg	image.jpg	image/jpeg	1747112	2013-11-20 16:17:56.088567	\N	
188	Being sick can't hold me down!	On antibiotics again for my nagging cough =(\r\n\r\nBut I'm still a happy as can be monkey; Mum & Dad are so lucky!	\N	2013-11-22 15:29:57.014115	2013-11-22 15:29:57.014115	21W00cEs	image.jpg	image/jpeg	117024	2013-11-22 15:29:55.992844	\N	
190	Pooped from a night with Grammy & Grumpa		\N	2013-11-23 18:02:19.065941	2013-11-23 18:02:19.065941	dD4tL79_	image.jpg	image/jpeg	1427742	2013-11-23 18:02:15.972084	\N	
191	Playing in my bouncy chair on Sunday morn'		\N	2013-11-24 13:25:26.023809	2013-11-24 13:25:26.023809	ascb0fSo	\N	\N	\N	\N	\N	DAverTE-cbQ
192	And a bit of tummy time		\N	2013-11-24 13:26:38.904343	2013-11-24 13:26:38.904343	wYDoqkA5	\N	\N	\N	\N	\N	aVrWV7RbuOA
193	Spinach & Rutabaga; my favorite!		\N	2013-11-25 23:31:21.843342	2013-11-25 23:31:21.843342	smgpDoT1	image.jpg	image/jpeg	2199676	2013-11-25 23:31:12.995081	\N	
194	Rubes dancing & playing in her bouncy chair		\N	2013-11-27 22:56:44.022984	2013-11-27 22:56:44.022984	nJK48X2y	\N	\N	\N	\N	\N	PLUVBsJnyho
195	Baby selfie!		\N	2013-11-27 22:58:20.539358	2013-11-27 22:58:20.539358	BaMxU8YA	image.jpg	image/jpeg	364498	2013-11-27 22:58:19.370738	\N	
196	Happy 5 Months all!!!	These past 5 months have been so amazing -- you're such an awesome baby, so happy and full of love <3	\N	2013-11-28 15:47:41.385165	2013-11-28 15:47:41.385165	rkacGG6u	image.jpg	image/jpeg	786846	2013-11-28 15:47:39.325058	\N	
197	Turkey Day with Uncle Chris' glasses	Your first Thanksgiving -- you did great! You just played and smiled and played some more -- not a cry at all; such a happy babe =)	\N	2013-12-01 17:07:14.18983	2013-12-01 17:08:17.357632	-EPStYLG	image.jpg	image/jpeg	1648248	2013-12-01 17:07:08.775623	\N	
198	Eating some tasty mixed carrots	So far you seem to love your veggies! Fruits are a bit iffy, but carrots, spinach, peas & rutabaga seem to strike your fancy these days	\N	2013-12-01 17:11:08.880448	2013-12-01 17:12:09.674165	9YdEPWa9	\N	\N	\N	\N	\N	JvP5IesGXqQ
199	Santas little helper		\N	2013-12-02 18:56:13.872929	2013-12-02 18:56:33.568866	ZH88BUd9	image.jpg	image/jpeg	1834350	2013-12-02 18:56:27.680214	\N	
200	My new bath tub! It's so comfy! 		\N	2013-12-03 13:10:25.049567	2013-12-03 13:10:25.049567	vGSnN6-F	image.jpg	image/jpeg	853970	2013-12-03 13:10:23.440588	\N	
201	Throwback Tuesday: mum, dad and me	Mum and dad in Georgetown doing a photo shoot with me before I made my arrival. 	\N	2013-12-03 13:11:55.417223	2013-12-03 13:12:48.805163	heotedQn	image.jpg	image/jpeg	136715	2013-12-03 13:11:54.641604	\N	
202	Me and mummy		\N	2013-12-03 13:14:32.232804	2013-12-03 13:14:32.232804	37WdqDt6	image.jpg	image/jpeg	117802	2013-12-03 13:14:31.160924	\N	
203	My dress for photos with Santa	My cute outfit for when I take photos with Santa.	\N	2013-12-03 13:17:48.172058	2013-12-03 13:17:48.172058	dlaC13yS	image.jpg	image/jpeg	1865312	2013-12-03 13:17:43.892271	\N	
204	Momma making Roo laugh!		\N	2013-12-05 02:26:47.539167	2013-12-05 02:26:47.539167	54O9kvLZ	\N	\N	\N	\N	\N	iQriNnLiqD0
205	Tummy tummy time =)		\N	2013-12-07 13:24:18.514602	2013-12-07 13:24:18.514602	9so7EfgJ	image.jpg	image/jpeg	1688535	2013-12-07 13:24:10.400043	\N	
206	Prepping for my first photos with Santa!		\N	2013-12-07 22:25:36.62315	2013-12-07 22:25:36.62315	GXaMpi20	image.jpg	image/jpeg	94326	2013-12-07 22:25:34.9398	\N	
207	Snoozing on a snow day with Mun		\N	2013-12-10 20:32:08.511289	2013-12-10 20:32:08.511289	wONWx_Fw	image.jpg	image/jpeg	2412767	2013-12-10 20:32:03.63871	\N	
208	Gangsta baby =)		\N	2013-12-10 20:34:40.298976	2013-12-10 20:34:40.298976	DDLyKNyg	image.jpg	image/jpeg	2575763	2013-12-10 20:34:35.865961	\N	
209	Back home after daycare	Had a brief hiatus from daycare, thanks to a bit of inclement weather, but I had a great day being back!	\N	2013-12-11 23:22:27.907179	2013-12-11 23:22:27.907179	U6ZylYnP	image.jpg	image/jpeg	1926886	2013-12-11 23:22:21.376179	\N	
210	I'm so sleepy after daycare! 	I fell asleep eating my solid food today. 	\N	2013-12-13 00:33:35.576404	2013-12-13 00:33:35.576404	4obLlO2Y	image.jpg	image/jpeg	2158372	2013-12-13 00:33:27.243926	\N	
211	Baby Mohawk perchance?	Had a nice pre-Mohawk this morning; dad thinks I look uber-cool!	\N	2013-12-14 14:42:56.88611	2013-12-14 14:44:00.558599	o8QtPfd2	image.jpg	image/jpeg	2205102	2013-12-14 14:42:53.880366	\N	
213	I'm ready! Take me to the beach! 	Trying on my bathing suits for when I go to South Africa next week for Christmas! 	\N	2013-12-16 00:33:15.288718	2013-12-16 00:33:15.288718	9Ce0pirC	image.jpg	image/jpeg	630594	2013-12-16 00:33:12.652308	\N	
212	Sup dudes!	Golly gosh; each day we look at you and can't believe how far we've all come together! You're such a happy little girl, it's inspiring to be around -- everyone who meets you falls madly in love with you, darting with you Mum & Dad <3	\N	2013-12-15 17:04:19.450709	2013-12-16 02:02:51.811474	-P2P3GBG	image.jpg	image/jpeg	1740314	2013-12-15 17:04:04.589167	\N	
214	6 months old today!!!!		\N	2013-12-19 22:53:38.794671	2013-12-19 22:53:38.794671	KH6cAg6H	image.jpg	image/jpeg	2050281	2013-12-19 22:53:35.708268	\N	
215	Is that all you got?	Sometimes mom & dad are just not that impressive. * yawn *	\N	2013-12-20 15:02:55.196412	2013-12-20 15:02:55.196412	nozp3H1I	image.jpg	image/jpeg	106079	2013-12-20 15:02:51.859025	\N	
216	Finger food time =)	Yesterday was your 6th month checkup , and the doc said you could start on finger foods!  Can't believe it's here already!!	\N	2013-12-21 15:34:45.669315	2013-12-21 15:34:45.669315	Ps2Vu_tl	image.jpg	image/jpeg	93965	2013-12-21 15:34:43.874994	\N	
217	One fedora per crew		\N	2013-12-21 15:35:41.038623	2013-12-21 15:35:41.038623	OqZKoFp0	image.jpg	image/jpeg	1963139	2013-12-21 15:35:32.454502	\N	
218	First Kennedy Center trip		\N	2013-12-22 22:28:15.897956	2013-12-22 22:28:15.897956	bqru55_3	image.jpg	image/jpeg	1717433	2013-12-22 22:28:12.902016	\N	
219	So tasty!	Already eating (or trying to) finger foods!	\N	2013-12-23 17:43:56.584993	2013-12-23 17:43:56.584993	8OwazpEj	image.jpg	image/jpeg	2386147	2013-12-23 17:43:52.762607	\N	
220	Me and my monkey at 6 months! 	All dressed up for Kim's Christmas party on Sunday. Also got to take my 6 month photo. 	\N	2013-12-24 02:21:44.015753	2013-12-24 02:21:44.015753	5n00vRlM	image.jpg	image/jpeg	841270	2013-12-24 02:21:38.609829	\N	
221	6 month check up- before my shots!	At doctor Rhue for my 6 month check up, this is before my shots. After my shots I wasn't so happy :(	\N	2013-12-24 02:25:03.040036	2013-12-24 02:25:03.040036	M77K4sYL	image.jpg	image/jpeg	1568231	2013-12-24 02:24:54.318493	\N	
222	Finally sucking my dummy, a bit		\N	2013-12-24 14:48:38.580823	2013-12-24 14:48:38.580823	rHy6IQvZ	image.jpg	image/jpeg	117135	2013-12-24 14:48:37.158453	\N	
223	My 1st Christmas Day- All the Stats	We spent Christmas Eve at granny and grumpas. It was SO much fun. Grumps wasn't feeling great but we sure hope he is feeling better on Christmas Day! 	\N	2013-12-25 10:34:18.679879	2013-12-25 10:36:46.737268	kdJugmWW	image.jpg	image/jpeg	115348	2013-12-25 10:36:45.802878	\N	
225	Happy Christmas to me!		\N	2013-12-25 18:18:39.493961	2013-12-25 18:18:39.493961	JmQznlGC	image.jpg	image/jpeg	118705	2013-12-25 18:18:38.238317	\N	
226	Opa enjoying a brew	At first, I wasn't quite sure about him, but I quickly fell deeply in love with my Opa	\N	2014-01-17 16:13:09.479583	2014-01-17 16:13:09.479583	oMqH4Bq7	image.jpg	image/jpeg	984873	2014-01-17 16:13:07.468037	\N	
227	On my way to South Africa!!!		\N	2014-01-17 16:14:37.929833	2014-01-17 16:14:37.929833	-5JiV1Kc	image.jpg	image/jpeg	1720918	2014-01-17 16:14:32.412378	\N	
228	Sup dudes, gangsta baby 	Wearing my cousins hat, what do you think?!?	\N	2014-01-17 16:15:28.44544	2014-01-17 16:15:28.44544	765-nFVr	image.jpg	image/jpeg	2379957	2014-01-17 16:15:25.415471	\N	
229	Passing out while holding my own bottle	How I've really grown here in sunny South Africa!	\N	2014-01-17 16:16:53.461815	2014-01-17 16:16:53.461815	9lg0sbvH	image.jpg	image/jpeg	2287051	2014-01-17 16:16:49.241053	\N	
230	First swim lesson with my buddy Sylas	I loved the water in SA and I love it here in the States too!	\N	2014-01-19 15:43:11.502298	2014-01-19 15:43:11.502298	5dEhwWHD	image.jpg	image/jpeg	113925	2014-01-19 15:43:10.89238	\N	
231	Passed out with my baba		\N	2014-01-19 15:43:51.444187	2014-01-19 15:43:51.444187	u6jJAsOY	image.jpg	image/jpeg	2058942	2014-01-19 15:43:49.329468	\N	
232	First Christmas Morning =)		\N	2014-01-20 13:50:55.691131	2014-01-20 13:50:55.691131	lviGtGBG	\N	\N	\N	\N	\N	JxJwRLlMLzA
233	Playing in my jumper		\N	2014-01-20 13:51:46.931667	2014-01-20 13:51:46.931667	briJCFrt	\N	\N	\N	\N	\N	3n0gJxfYX_U
234	Check that cutie out!	Just after you turned 7 months you finally turned over -- in your crib so we didn't see it, but we saw the evidence!!	\N	2014-01-20 14:31:01.394664	2014-01-20 14:31:01.394664	bHkaUnmk	image.jpg	image/jpeg	2140260	2014-01-20 14:30:53.118776	\N	
235	Swimming with Nana	I loooooove the water, and I looooooove my Nana =)	\N	2014-01-22 13:44:07.753176	2014-01-22 13:44:07.753176	pR2Ul9w1	image.jpg	image/jpeg	108768	2014-01-22 13:44:06.720594	\N	
236	Mmm, tasty sand	Though it pissed you off bc you couldn't pick it up, you loved playing in the sand!	\N	2014-01-22 13:44:58.780204	2014-01-22 13:44:58.780204	uYcVRpY_	image.jpg	image/jpeg	144064	2014-01-22 13:44:57.761653	\N	
237	Is this hat too small?		\N	2014-01-25 16:21:44.338795	2014-01-25 16:21:44.338795	b5iBr3tg	image.jpg	image/jpeg	382433	2014-01-25 16:21:42.941871	\N	
294	Check out my cute new bathing suits!		\N	2014-03-17 23:41:59.694298	2014-03-17 23:41:59.694298	c4tgNnHA	image.jpg	image/jpeg	2190693	2014-03-17 23:41:56.487863	\N	
238	All snuggled up with Mom for our walk	The coldest winter in 20 years this year; of course. You were so healthy & happy in SA, we were so sad to bring you back to this; but as usual you took it in stride <3	\N	2014-01-26 20:25:30.30802	2014-01-26 20:26:08.322303	ovLyFh6X	image.jpg	image/jpeg	2642889	2014-01-26 20:25:27.425011	\N	
239	Really trying to drink by myself from a big girl cup! 	With daddy in NY for 2 days, mummy is letting me do pretty much whatever I want, including drinking from a regular cup. 	\N	2014-01-29 00:08:28.187633	2014-01-29 00:08:28.187633	RBbnwpVT	image.jpg	image/jpeg	546037	2014-01-29 00:08:19.040875	\N	
240	Junpy jumpy jumpy!		\N	2014-01-30 03:05:22.421325	2014-01-30 03:05:22.421325	tTlG1rdH	\N	\N	\N	\N	\N	OGD9r_lLIgs
241	I just love looking at myself!		\N	2014-01-30 03:06:05.246789	2014-01-30 03:06:05.246789	RqZEkudf	\N	\N	\N	\N	\N	wvnmQFkZxv0
295	Drinking from my sippy cup		\N	2014-03-17 23:59:47.735444	2014-03-17 23:59:47.735444	0VwZYh6K	\N	\N	\N	\N	\N	cM8a7dTsHuQ
242	Fell asleep at dinner; so cute	Had your first real fish & carrots tonight; a bit of a fuss, but you loved 'em!	\N	2014-01-31 00:18:59.556192	2014-01-31 00:35:14.736871	b4gyplL-	image.jpg	image/jpeg	2477427	2014-01-31 00:22:43.799636	\N	C8Cq-aSAM24
243	Happy jumpy!		\N	2014-01-31 03:21:33.875076	2014-01-31 03:21:33.875076	ZfXkLPBP	image.jpg	image/jpeg	2167970	2014-01-31 03:21:22.178219	\N	
244	Zoo time!	Went to the zoo and met Amelia today. I loved the little monkeys! 	\N	2014-02-01 21:29:30.906809	2014-02-01 21:29:30.906809	WEEBxFyT	image.jpg	image/jpeg	310992	2014-02-01 21:29:30.032826	\N	
245	Hanging with Anna on Superbowl Sunday		\N	2014-02-03 17:07:16.732168	2014-02-03 17:07:16.732168	g6YuYTHR	image.jpg	image/jpeg	1279206	2014-02-03 17:07:13.36745	\N	
296	Me & Grumpa swinging =)		\N	2014-03-21 22:06:01.993543	2014-03-21 22:06:01.993543	rdiEIUWF	\N	\N	\N	\N	\N	AArBfDF-JCQ
297	Visited Grammy at work today		\N	2014-03-21 22:06:44.543774	2014-03-21 22:06:44.543774	JePLDPuy	image.jpg	image/jpeg	1562264	2014-03-21 22:06:38.018618	\N	
298	What up Dad?		\N	2014-03-26 01:58:27.80867	2014-03-26 01:58:27.80867	MIntTwMY	image.jpg	image/jpeg	2025491	2014-03-26 01:58:23.835178	\N	
299	Roo getting more used to her tummy =)	You started sleeping on your tummy recently; yay! Isn't it comfy too? You still don't love being on your tummy during the day, but when it counts, you're coming around =)	\N	2014-03-26 01:59:21.204398	2014-03-26 11:13:42.867522	4GM1v5AE	\N	\N	\N	\N	\N	zDxi4NniCw
300	Proof!	Passed out in the morning before school on my tumtum =)	\N	2014-03-26 11:27:19.604015	2014-03-26 11:27:19.604015	TcEo1F--	image.jpg	image/jpeg	1713114	2014-03-26 11:27:15.93428	\N	
301	Morning mom!		\N	2014-03-29 01:35:59.21605	2014-03-29 01:35:59.21605	HGy3hD7-	image.jpg	image/jpeg	1936725	2014-03-29 01:35:54.379893	\N	
302	So pretty! 	Home all day with mum and dad on a snow days means mum gets to play dress up! 	\N	2014-03-29 12:06:20.47502	2014-03-29 12:06:20.47502	7gta2HTR	image.jpg	image/jpeg	1595190	2014-03-29 12:06:14.285826	\N	
303	Finally! Starting to not mind being on my stomach! 	After months of  mum and dad trying to get me to roll over, I am finally doing it all on my own! 	\N	2014-03-29 12:08:21.708255	2014-03-29 12:08:21.708255	Qf85u0-x	image.jpg	image/jpeg	1973594	2014-03-29 12:08:19.102985	\N	
305	Being goofy! 	Being goofy in the tub! 	\N	2014-03-29 12:10:53.82302	2014-03-29 12:10:53.82302	NDRTFDS5	image.jpg	image/jpeg	1314969	2014-03-29 12:10:42.698176	\N	
306	Baby loves disco! 	Today I went to the Filmore in silver spring with mum, dad, Mayte, Scott, Nico and Amelia. It was so much fun! 	\N	2014-03-29 20:02:31.808873	2014-03-29 20:02:31.808873	isr2fJOt	image.jpg	image/jpeg	986919	2014-03-29 20:02:29.62834	\N	
307	More Baby loves disco		\N	2014-03-29 20:04:49.253083	2014-03-29 20:04:49.253083	ufbs-qFz	image.jpg	image/jpeg	175952	2014-03-29 20:04:48.492737	\N	
309	Baby loves disco 	Afterwards we had lunch at Mayte and Scott's and I played with Amelia 	\N	2014-03-29 20:06:19.082938	2014-03-29 20:06:19.082938	FCMevkQ-	image.jpg	image/jpeg	1910158	2014-03-29 20:06:16.517828	\N	
310	Just hanging in my stroller	Had a nice walk with mum & dad after school today -- finally nice water outside after the longest winter ever!	\N	2014-04-01 11:08:40.144774	2014-04-01 11:08:40.144774	hnkhs-bv	image.jpg	image/jpeg	2114615	2014-04-01 11:08:37.033484	\N	
311	Sk8tr Grl		\N	2014-04-01 22:17:23.138919	2014-04-01 22:17:46.122456	qcK3bimL	image.jpg	image/jpeg	1513217	2014-04-01 22:17:19.698346	\N	
312	I'm 9 months old! 		\N	2014-04-02 22:20:32.675166	2014-04-02 22:20:32.675166	ejlyENkL	image.jpg	image/jpeg	220524	2014-04-02 22:20:30.93918	\N	
313	Trying to crawlllll		\N	2014-04-03 22:48:46.571897	2014-04-03 22:48:46.571897	Yjjs5wB2	\N	\N	\N	\N	\N	6CjFaQdN1gk
314	Happy baby in the morning!		\N	2014-04-04 18:57:33.439867	2014-04-04 18:57:33.439867	Np1Iq9EI	image.jpg	image/jpeg	91633	2014-04-04 18:57:32.312792	\N	
315	What's this crankasor!		\N	2014-04-05 17:03:45.648315	2014-04-05 17:03:45.648315	uZTrvelr	image.jpg	image/jpeg	335872	2014-04-05 17:03:43.535855	\N	
316	Say wha???		\N	2014-04-09 03:24:35.429086	2014-04-09 03:24:35.429086	2zP9ZZk4	image.jpg	image/jpeg	2069016	2014-04-09 03:24:32.223786	\N	
317	Sweet shades	Looking good after we asked Aunt Lindsay & Uncle Shawn to be your godparents!	\N	2014-04-09 03:25:31.478269	2014-04-09 03:25:31.478269	RnvI0gqj	image.jpg	image/jpeg	191738	2014-04-09 03:25:30.700331	\N	
318	Love my art cards! 		\N	2014-04-10 01:26:02.589345	2014-04-10 01:26:02.589345	3LpdXPWE	image.jpg	image/jpeg	186211	2014-04-10 01:26:01.976097	\N	
319	Swinging my face off!		\N	2014-04-11 01:48:21.386498	2014-04-11 01:48:21.386498	1mx53XsR	\N	\N	\N	\N	\N	rF-QNGeAa4k
320	Got my South African birth certificate today!!!	Now we can apply for my passport & citizenship =)	\N	2014-04-12 11:43:22.203202	2014-04-12 11:43:22.203202	nqFq-nh-	image.jpg	image/jpeg	2756236	2014-04-12 11:43:19.411183	\N	
321	Mmm, tasty crib		\N	2014-04-12 14:57:48.561638	2014-04-12 14:57:48.561638	Z3wLdqII	image.jpg	image/jpeg	89862	2014-04-12 14:57:47.140519	\N	
322	Being a ham!		\N	2014-04-13 14:11:38.497837	2014-04-13 14:11:38.497837	bd-iinRH	image.jpg	image/jpeg	1244622	2014-04-13 14:11:32.093165	\N	
323	Pooped from all the partying! 	Went to Nico's 4th birthday today and had a blast. But i got pretty pooped and had to take a nap! 	\N	2014-04-13 14:16:26.922961	2014-04-13 14:16:26.922961	zlW5y4dW	image.jpg	image/jpeg	1784049	2014-04-13 14:16:21.776592	\N	
324	Super cranky today, but finally asleep! 	I'm not feeling great today, got a bit of a cold and teething. Have dad a run for his money during feeding and bathing. But finally asleep now! 	\N	2014-04-15 23:13:23.539292	2014-04-15 23:13:23.539292	FxFJlV7V	image.jpg	image/jpeg	1664256	2014-04-15 23:13:14.720249	\N	
325	Feeling a bit cranks methinks =(		\N	2014-04-15 23:18:41.689864	2014-04-16 01:46:07.661411	676wZW8h	image.jpg	image/jpeg	2365312	2014-04-15 23:18:31.826217	\N	
326	Look at my cute dress	I'm ready to walk -- showing off my duds at Nico's birthday party. 	\N	2014-04-16 02:20:06.049937	2014-04-16 02:20:06.049937	tyc-lQOp	image.jpg	image/jpeg	2058628	2014-04-16 02:20:02.94822	\N	
327	Aunt Lindsay and Uncle Shawn said yes to being godparents! 	Last week Sunday, April 6th we went to brunch with A Lindsay and U Shawn. I had a special surprise for them. Mom and dad had made them a nice photo book to ask if they would be my god parents. Hey said yes! Yay! 	\N	2014-04-16 02:20:29.906101	2014-04-16 02:20:29.906101	d2TqdyOr	image.jpg	image/jpeg	167262	2014-04-16 02:20:28.37969	\N	
328	Playing my cardboard box; super fun!		\N	2014-04-18 22:08:52.266603	2014-04-18 22:08:52.266603	9S7hA8Gm	image.jpg	image/jpeg	1384095	2014-04-18 22:08:49.660908	\N	
329	Already driving; look out!	Mum takes me to the park every day and I play on the swings, in the sand, and on the cars -- but the cars are my fav!	\N	2014-04-19 17:36:00.58795	2014-04-19 17:36:00.58795	5Szi6gLW	image.jpg	image/jpeg	175051	2014-04-19 17:35:59.787859	\N	
330	10 months old!!!	Mum and dad can't believe how fast time has gone. You are the most adorable, sweet little babe we could ever imagine -- all our love!	\N	2014-04-21 23:27:56.947967	2014-04-21 23:27:56.947967	cIjR7xFS	image.jpg	image/jpeg	110095	2014-04-21 23:27:55.963255	\N	
331	Want that Easter basket from gram & grumps!		\N	2014-04-21 23:29:01.256587	2014-04-21 23:29:01.256587	oXCo8FQ5	image.jpg	image/jpeg	1904615	2014-04-21 23:28:56.649504	\N	
332	Yummy Easter cookie =)		\N	2014-04-21 23:34:33.709631	2014-04-21 23:34:33.709631	g9L37U3_	image.jpg	image/jpeg	1905481	2014-04-21 23:34:29.856492	\N	
333	Grammy and grumpa got my spot on the deck all ready! 	Sleeping over at Grammy and grumps on Saturday. They have my spot all ready on the deck for my sleepover! 	\N	2014-04-23 16:27:25.439994	2014-04-23 16:27:25.439994	yuWhAS7P	image.jpg	image/jpeg	2286422	2014-04-23 16:27:21.28285	\N	
335	And so it begins! I'm standing...	Mum and dad came into my room this morning to find me standing up in my crib... So it begins :)	\N	2014-04-25 01:53:59.025468	2014-04-25 01:53:59.025468	wt5b0VWU	image.jpg	image/jpeg	1005708	2014-04-25 01:53:56.997328	\N	
336	Easter- this post is late! 	Easter basket that I got from feetjie and Oom (godmom Lindsay and godad Shawn). They had eggs with goldfish in them- my favorites! 	\N	2014-04-25 01:57:11.425502	2014-04-25 01:57:11.425502	f0dbF_Ah	image.jpg	image/jpeg	673403	2014-04-25 01:57:09.542051	\N	
337	Yummy; sisters food!		\N	2014-04-25 02:08:03.992008	2014-04-25 02:08:03.992008	p4h23tCS	\N	\N	\N	\N	\N	76z8AdbUDfg
338	At the doctors on a Saturday morning :(	Awe, I was playing a game called monkey in a trap with mommy this morning, and I dislocated my elbow :(. So had to go to the doctor so they could pop it back in. I'm all better now but mommy cried and cried. 	\N	2014-04-26 14:45:39.709897	2014-04-26 14:45:39.709897	ucC0xs3A	image.jpg	image/jpeg	77614	2014-04-26 14:45:37.326009	\N	
339	Found a spring; what fun!!		\N	2014-04-29 01:44:57.122218	2014-04-29 01:44:57.122218	gEdsEHSe	\N	\N	\N	\N	\N	2HRYxXXRQE
340	Another round barkeep		\N	2014-05-07 01:29:30.877469	2014-05-07 01:29:44.646737	mKi9ILQz	image.jpg	image/jpeg	1996808	2014-05-07 01:29:27.031549	\N	
341	Already driving		\N	2014-05-07 01:30:25.539202	2014-05-07 01:30:25.539202	lc-sHYic	\N	\N	\N	\N	\N	j0v8zltIfxk
342	Yummy sand!!		\N	2014-05-07 01:31:00.676829	2014-05-07 01:31:00.676829	UWCVQVT6	image.jpg	image/jpeg	1958278	2014-05-07 01:30:56.79536	\N	
343	Bean & Ruby playing on the beach		\N	2014-05-07 01:31:59.781773	2014-05-07 01:31:59.781773	ej4VKa8Z	\N	\N	\N	\N	\N	WHMtPf99Oa0
344	Not feeling great :(	Had a fever tonight and feeling very cranky.	\N	2014-05-07 01:57:38.329139	2014-05-07 01:57:38.329139	Fbjti7d_	image.jpg	image/jpeg	1402961	2014-05-07 01:57:32.453004	\N	
345	Check out my sweet costume	Almost 11 months old, you're crawling up a storm and getting into everything =)	\N	2014-05-10 15:42:02.975192	2014-05-10 15:42:02.975192	ytbWPiHs	image.jpg	image/jpeg	1906970	2014-05-10 15:42:00.332205	\N	
346	Another Booboo on Dads watch		\N	2014-05-10 15:44:07.135183	2014-05-10 15:44:07.135183	axtTQ0rQ	\N	\N	\N	\N	\N	imtWGPjEGK4
348	Climbing mount Mommy!		\N	2014-05-14 23:00:25.736382	2014-05-14 23:00:25.736382	SdK6rgBH	image.jpg	image/jpeg	1546413	2014-05-14 23:00:19.684396	\N	
347	Happy 5 year anniversary to mum and daddy!	For their 5 year anniversary, Dad planned something really special for mum. A fun filled scavenger hunt. The day began around noon with feetjie dropping off mums first clue. Then they followed the clues until they had high tea (something mum has always wanted to do) in Alexandria. It ended at the first place mum and dad lived together with an awesome party and renewing their vows in front of friends and family. What a great day! 	\N	2014-05-12 03:03:38.224245	2014-05-16 16:07:18.155958	UdLwl0mE	image.jpg	image/jpeg	224701	2014-05-12 03:03:37.158274	\N	
349	Happy 11th months to me!	I didn't sleep too much today; so in running low on gas, but I'm a treat as always; lucky mum & dad!	\N	2014-05-19 22:48:05.918166	2014-05-19 22:48:05.918166	2OOqZb6O	image.jpg	image/jpeg	3234662	2014-05-19 22:48:02.009467	\N	
350	Lounging with Dad		\N	2014-05-20 00:52:46.206246	2014-05-20 00:52:46.206246	N0VXwFqD	image.jpg	image/jpeg	2491173	2014-05-20 00:52:40.368292	\N	
351	Ruby just doing what she does best	The only time you seem to have an off switch is when you're snoozing =)	\N	2014-05-20 00:58:38.692203	2014-05-20 00:58:38.692203	YMy0_NST	\N	\N	\N	\N	\N	QLdArcQczDs
353	Brekkie at the beach		\N	2014-05-24 14:32:15.571059	2014-05-24 14:32:15.571059	VfotPVg1	image.jpg	image/jpeg	1802560	2014-05-24 14:32:12.471034	\N	
354	Dancing at the bar with Mummy		\N	2014-05-24 14:34:14.033262	2014-05-24 14:34:14.033262	qBEWp0Hx	image.jpg	image/jpeg	2052663	2014-05-24 14:34:09.418389	\N	
355	Fun in Myrtle Beach		\N	2014-05-26 17:59:29.645269	2014-05-26 17:59:29.645269	41DcuHs9	image.jpg	image/jpeg	237705	2014-05-26 17:59:28.494266	\N	
358	Myrtle Beach collage	Spent memorial weekend in Myrtle Beach with some friends. It was so much fun! 	\N	2014-05-26 18:09:25.719857	2014-05-26 18:09:25.719857	9OknWBaY	image.jpg	image/jpeg	296026	2014-05-26 18:09:24.461153	\N	
359	More Myrtle Beach 		\N	2014-05-26 18:14:38.317532	2014-05-26 18:14:38.317532	GWqcRW_Q	image.jpg	image/jpeg	250876	2014-05-26 18:14:37.357412	\N	
360	Ruby & Anna playing on Memorial Day		\N	2014-05-28 00:09:49.475985	2014-05-28 00:09:49.475985	DsuPlbOA	\N	\N	\N	\N	\N	Qr540mPt3I8
361	Tasty dinner on vacation in Myrtle Beach		\N	2014-05-28 03:00:35.202981	2014-05-28 03:00:35.202981	WaECzkB7	\N	\N	\N	\N	\N	XNJ66OTr0Es
362	Already striking a pose!	Sassier & sassier each day =)\r\n\r\nJust like mum & dad tho!	\N	2014-05-30 23:07:52.981954	2014-05-30 23:07:52.981954	F2UUPgUp	image.jpg	image/jpeg	2040334	2014-05-30 23:07:47.495603	\N	
363	Sweet shorts!		\N	2014-06-07 20:39:36.341722	2014-06-09 21:59:14.232985	plgrfGvk	image.jpg	image/jpeg	1990801	2014-06-09 21:59:09.55537	\N	
364	Mm, not bad. 	You eat like such a big girl now (& I mean that as a compliment) -- it's so funny to just sit and watch you chew -- almost 1 year old; where does the time go?!?	\N	2014-06-10 22:55:51.265916	2014-06-10 22:55:51.265916	XhjKMjBX	image.jpg	image/jpeg	1833538	2014-06-10 22:55:39.066592	\N	
365	Looking good girl; dinner selfie	You're feeding yourself like a champ, you love to swim, you're going to be 1 in less than a week; slow down!!!	\N	2014-06-14 22:45:51.707273	2014-06-14 22:45:51.707273	OwWOKw7q	image.jpg	image/jpeg	396441	2014-06-14 22:45:48.977013	\N	
366	Happy Fathers Day =)	Mum made this great photo compilation of me -- love you two!	\N	2014-06-15 14:46:41.078321	2014-06-15 14:46:41.078321	dsY3ZsKu	image.jpg	image/jpeg	305957	2014-06-15 14:46:39.871227	\N	
367	1 YEAR OLD!?!	We cannot, cannot, cannot believe it's already here! How did we all survive; we may never know. But we know how amazing, stunningly beautiful, funny, and awesome you truly are. All our love monks; happy happy birthday!	\N	2014-06-19 15:38:10.348732	2014-06-19 15:38:10.348732	pOxM2HQ0	image.jpg	image/jpeg	166853	2014-06-19 15:38:09.251671	\N	
458	Day at the farm -- hugging Elmo		\N	2014-10-28 00:37:20.114776	2014-10-28 00:37:20.114776	o8N-YG0Z	image.jpg	image/jpeg	3666966	2014-10-28 00:37:14.472228	\N	
459	Halloween shenanigans!	Had a lot of fun "trick or treating" with Iris this Halloween. 	\N	2014-11-02 03:03:42.51498	2014-11-02 03:03:42.51498	xHcHJFmb	image.jpg	image/jpeg	1568085	2014-11-02 03:03:39.733994	\N	
460	Fun in the park with dad	Went to the park today. It was very cold but I still had fun! 	\N	2014-11-02 03:04:49.344576	2014-11-02 03:04:49.344576	qLpJyUla	image.jpg	image/jpeg	2718604	2014-11-02 03:04:46.905807	\N	
368	Happy first birthday my monkey! 	This year has been amazing, challenging, hard, wonderful, and exciting and I wouldn't change it for the world! You are the most amazing baby and I love you with all my heart! 	\N	2014-06-20 00:44:17.921625	2014-06-20 00:46:23.433198	r5_sISA8	image.jpg	image/jpeg	188568	2014-06-20 00:46:20.766228	\N	
369	Oooh, what's that?		\N	2014-06-20 17:55:34.249608	2014-06-20 17:55:34.249608	qDJvPZB1	image.jpg	image/jpeg	105679	2014-06-20 17:55:33.484271	\N	
370	Summer = fun play dates! 	My buddy Scarlet came to swim and play! 	\N	2014-06-21 14:02:28.6867	2014-06-21 14:02:28.6867	TYghaky8	image.jpg	image/jpeg	1199662	2014-06-21 14:02:26.792793	\N	
371	More play date with Scarlet		\N	2014-06-21 14:07:44.212836	2014-06-21 14:07:44.212836	yqpbv5Tm	image.jpg	image/jpeg	291002	2014-06-21 14:07:43.112106	\N	
373	Had my checkup this afternoon, this is me before my 4 aweful shots!		\N	2014-06-24 01:35:52.980573	2014-06-24 01:35:52.980573	QGUmDgO1	image.jpg	image/jpeg	1827478	2014-06-24 01:35:50.292345	\N	
374	Happy birthday; our little angel!		\N	2014-06-24 23:40:03.011258	2014-06-24 23:40:25.969465	iL3V3MvQ	\N	\N	\N	\N	\N	z0p9uRetzE
375	And more birthday celebrations =)		\N	2014-06-24 23:45:00.23464	2014-06-24 23:45:00.23464	Xh2QciuL	\N	\N	\N	\N	\N	3Cu264YhIS4
376	Playing with mum while dads in NY		\N	2014-06-30 02:13:13.906524	2014-06-30 02:13:13.906524	ZoQI2LfM	image.jpg	image/jpeg	2134463	2014-06-30 02:13:05.543241	\N	
377	Pooped! 		\N	2014-06-30 02:13:49.426256	2014-06-30 02:13:49.426256	eIjGSG8F	image.jpg	image/jpeg	1816788	2014-06-30 02:13:43.129087	\N	
378	So grown up 		\N	2014-07-02 17:23:07.24763	2014-07-02 17:23:07.24763	pyNO95hA	image.jpg	image/jpeg	1942582	2014-07-02 17:23:03.322808	\N	
379	My first steps!?!?!		\N	2014-07-03 16:01:50.341079	2014-07-03 16:02:46.507655	9t6zukz4	\N	\N	\N	\N	\N	h898C9Ql8YI
380	Finally start digging my glasses =)		\N	2014-07-09 02:17:09.905537	2014-07-09 02:17:09.905537	vU9qimy1	image.jpg	image/jpeg	1806214	2014-07-09 02:17:05.666965	\N	
381	Anna & Roo celebrating July 4th		\N	2014-07-09 02:18:24.495621	2014-07-09 02:18:24.495621	WntU_Sky	\N	\N	\N	\N	\N	DcjlRLH87DQ
382	Another lovely selfie		\N	2014-07-09 02:19:45.403403	2014-07-09 02:19:45.403403	isHYeLiX	image.jpg	image/jpeg	335636	2014-07-09 02:19:44.071746	\N	
383	First dentist visit	Already time for the dentist; what?!? My, my, my how time flies these days. 	\N	2014-07-10 18:54:54.618972	2014-07-10 18:55:18.643321	pM7ASDoN	image.jpg	image/jpeg	91270	2014-07-10 18:54:53.594771	\N	
384	Pooped after a baby shower	I've got a sinus infection, and I haven't been sleeping well, it's a rough patch for me now -- but I still put a smile on my face!	\N	2014-07-13 23:16:17.963155	2014-07-13 23:16:17.963155	pcLg_KMU	image.jpg	image/jpeg	1527217	2014-07-13 23:16:15.546205	\N	
385	Yes, I can fly! 	Shopping with mum for Logan and Devlyns baby shower. 	\N	2014-07-15 00:09:21.097115	2014-07-15 00:09:21.097115	HYJ5D_S2	image.jpg	image/jpeg	1015707	2014-07-15 00:09:16.881936	\N	
386	So tired and sick :(	Ear infection, sinus infection and a really hot day makes for one tired baby. 	\N	2014-07-15 00:10:28.902167	2014-07-15 00:10:28.902167	NAwpZOBy	image.jpg	image/jpeg	1320552	2014-07-15 00:10:24.916105	\N	
387	Love my new chair! 	I'm a big kid now :). Love my new chair that mum bought. Also love standing on it to get on the real couch! 	\N	2014-07-16 00:52:43.777794	2014-07-16 00:52:43.777794	O2ZW3WmL	image.jpg	image/jpeg	1777686	2014-07-16 00:52:40.259313	\N	
388	Love my selfies!		\N	2014-07-19 20:53:54.693155	2014-07-19 20:53:54.693155	A3oLLJN1	image.jpg	image/jpeg	315352	2014-07-19 20:53:52.687433	\N	
389	Nope, don't want to walk =)		\N	2014-07-19 20:56:52.582085	2014-07-19 20:56:52.582085	SvhA5n2r	\N	\N	\N	\N	\N	uYwH3PgFsqs
390	Finally, waking on camera		\N	2014-07-20 23:32:00.858119	2014-07-20 23:32:00.858119	LVSnIDca	\N	\N	\N	\N	\N	HmJn66jTPCM
391	Skater babe!	Feeling brave on my skateboard. O and also, mom made my sweet jorts!	\N	2014-07-25 00:40:27.235789	2014-07-25 00:40:27.235789	6naPX-O9	image.jpg	image/jpeg	1571060	2014-07-25 00:40:22.972075	\N	
392	Not happy when Dad sets limits on me =(		\N	2014-07-25 13:06:04.005302	2014-07-25 13:06:04.005302	BuRxTe1M	\N	\N	\N	\N	\N	c3NLiC1YG0w
393	Cruising around the winery		\N	2014-07-28 00:40:27.572165	2014-07-28 00:40:27.572165	sPca9Ipk	image.jpg	image/jpeg	2967420	2014-07-28 00:40:22.771329	\N	
394	Froyo with Grammy & Grumps		\N	2014-07-28 00:41:10.551749	2014-07-28 00:41:10.551749	cdugkcV_	image.jpg	image/jpeg	404721	2014-07-28 00:41:07.205219	\N	
395	Heya papa!!		\N	2014-07-28 00:41:43.217831	2014-07-28 00:41:43.217831	mWGYjF5h	image.jpg	image/jpeg	1846969	2014-07-28 00:41:39.523492	\N	
396	Queen of the playpen @ Gymboree		\N	2014-07-28 00:43:01.117923	2014-07-28 00:43:01.117923	2IMlhfjY	image.jpg	image/jpeg	1823802	2014-07-28 00:42:56.489464	\N	
397	Ruby taking Bean for a walk!?!		\N	2014-07-31 23:15:49.455706	2014-07-31 23:15:49.455706	_XpIr-92	\N	\N	\N	\N	\N	dcGGS2R8vCI
398	Beach baby! 	Spent a couple of days in Ocean city with Kim and the girls. Went to the boardwalk and the beach. 	\N	2014-08-02 23:47:44.773371	2014-08-02 23:47:44.773371	9SYQcoKs	image.jpg	image/jpeg	1240961	2014-08-02 23:47:41.161222	\N	
399	Hee ha baby...	Loved riding the rides on the boardwalk. Especially the carousel.	\N	2014-08-02 23:48:56.648851	2014-08-02 23:48:56.648851	OSzrG__9	image.jpg	image/jpeg	1464043	2014-08-02 23:48:53.627095	\N	
400	Fun summer days in Ocean City	Fun days spent in ocean city over the summer.	\N	2014-08-02 23:55:15.105207	2014-08-02 23:55:15.105207	GwcIGnKb	image.jpg	image/jpeg	436385	2014-08-02 23:55:13.860586	\N	
401	Sup bro. 	Out to dinner with mum & dad for daddy's birthday!	\N	2014-08-08 01:06:19.624759	2014-08-08 01:06:19.624759	3Ygv1EBq	image.jpg	image/jpeg	1585997	2014-08-08 01:06:16.439118	\N	
402	Just eating some corn		\N	2014-08-08 01:06:44.932975	2014-08-08 01:06:59.169903	serFddgq	\N	\N	\N	\N	\N	96DMpb8IDWk
403	Sometimes walking hurts!	I was walking around at daddy's work and fell in the pavement. Busted up my nose a bit :(	\N	2014-08-17 20:53:10.400726	2014-08-17 20:53:10.400726	2RRvuP8n	image.jpg	image/jpeg	648704	2014-08-17 20:53:07.00041	\N	
404	Summer fun!		\N	2014-08-17 21:02:20.572192	2014-08-17 21:02:20.572192	tm8VaOQV	image.jpg	image/jpeg	852270	2014-08-17 21:02:16.574439	\N	
405	Laughing & watching		\N	2014-08-18 00:15:40.792037	2014-08-18 00:15:40.792037	-AzeylNB	\N	\N	\N	\N	\N	RFjHSkoX8-k
406	Bean & Roo playing		\N	2014-08-18 00:20:22.017158	2014-08-18 00:20:22.017158	NeJYEYXh	\N	\N	\N	\N	\N	3mEFgwmwL24
407	Eating & watching a video		\N	2014-08-22 22:10:39.454055	2014-08-22 22:11:07.306854	rrum6nFL	\N	\N	\N	\N	\N	gCRAfsmbb_E
408	Riding Henry =)		\N	2014-08-22 22:13:35.261055	2014-08-22 22:13:35.261055	21HmSmSC	image.jpg	image/jpeg	1903373	2014-08-22 22:13:32.622301	\N	
409	Summer fun!	Fun at the fountains with mom today. Got to enjoy the last couple of weeks of summer.	\N	2014-08-28 19:41:59.615295	2014-08-28 19:41:59.615295	HLATgxCR	image.jpg	image/jpeg	1275784	2014-08-28 19:41:57.039079	\N	
411	Already loves purses! 	Loves the purse my aunty Annetjie in South Africa got me. Got my cell phone and a bean bag in it. 	\N	2014-08-29 22:45:13.866597	2014-08-30 00:48:11.635829	z75ZXf8p	\N	\N	\N	\N	\N	RrIEHeBGqpM
412	Out for a strole with my sis	Taking Bean for a walk, you know, one of the things I'm good at! 	\N	2014-08-29 22:45:28.448064	2014-08-30 00:46:38.470187	Fnf_6Tzj	\N	\N	\N	\N	\N	sQwPaaz7KbQ
410	Raspberry noises are the best! 		\N	2014-08-29 22:44:57.666917	2014-08-30 00:48:46.090859	92QMhd2m	\N	\N	\N	\N	\N	lIfbVVp032A
413	All dressed up & nowhere to go! 	I got my purse, my tutu and my headband. Where are we off to?	\N	2014-08-30 00:44:51.011663	2014-08-30 00:49:47.014625	FtFvja57	image.jpg	image/jpeg	312963	2014-08-30 00:44:49.926107	\N	
414	What can I make with an orange?		\N	2014-09-01 22:53:53.146224	2014-09-01 22:53:53.146224	G-AovxMj	image.jpg	image/jpeg	1473633	2014-09-01 22:53:50.450091	\N	
415	Labor Day at the National Harbor	Spent a fun day at the National Harbor with mum & dad. Went on the Ferris wheel, had a tasty lunch and then played the afternoon away at the children's museum.	\N	2014-09-01 22:59:23.717619	2014-09-01 22:59:23.717619	bSAWWIFQ	image.jpg	image/jpeg	647153	2014-09-01 22:59:22.692093	\N	
416	Love my monkey! 		\N	2014-09-01 23:00:49.046818	2014-09-01 23:00:49.046818	7xjqvc4-	image.jpg	image/jpeg	1996830	2014-09-01 23:00:46.053887	\N	
417	Ruby playing/crawling around with Grammy & Grumps		\N	2014-09-02 20:49:13.887429	2014-09-02 20:49:13.887429	UB5hnYgR	\N	\N	\N	\N	\N	ZUBfDPlm1VY
418	Fun at the spray park without spray!	Went to the park today. It was really hot and unfortunately the spray park closed on Labor Day. But I still had fun trying to pick up all the "planets" :)	\N	2014-09-05 03:11:35.362217	2014-09-05 03:11:35.362217	-zbsKB8X	image.jpg	image/jpeg	742322	2014-09-05 03:11:33.960397	\N	
419	Loving my summer play funtime!		\N	2014-09-05 03:23:40.738073	2014-09-05 03:23:40.738073	0r_8pUJ3	\N	\N	\N	\N	\N	pzcylKy1ghc
420	Sunday funday @ the National Zoo 	Spent a couple of hours at the zoo with mum and dad on Sunday. It was so much fun, I even got to touch a cows bum! 	\N	2014-09-08 22:47:04.674082	2014-09-08 22:47:04.674082	WwIngJ8f	image.jpg	image/jpeg	490000	2014-09-08 22:47:02.421242	\N	
561	Climbing those steps like a pro!		\N	2015-05-17 23:32:20.028724	2015-05-17 23:32:20.028724	kUV0kNJP	\N	\N	\N	\N	\N	CQ9WMZE94qo
422	Yay! Getting ready for Disney World! 	Got our magic bands today for our Disney trip on October 1st. Can't wait to meet my aunt and my cousins. 	\N	2014-09-08 22:48:35.143121	2014-09-08 22:48:35.143121	JhT1hF9A	image.jpg	image/jpeg	1124035	2014-09-08 22:48:31.475746	\N	
423	Elephants, elephants everywhere =)		\N	2014-09-09 00:26:50.265965	2014-09-09 00:26:50.265965	dIzka1ap	image.jpg	image/jpeg	1556780	2014-09-09 00:26:46.140082	\N	
424	Look at the little horsies!!!		\N	2014-09-09 00:27:36.793764	2014-09-09 00:27:36.793764	7NWTRhNn	image.jpg	image/jpeg	2214846	2014-09-09 00:27:32.182213	\N	
425	At my first show ever!	Dad and I went to Snallygaster to see his & mums favroties band !!! -- I loved it!!	\N	2014-09-15 00:45:34.643456	2014-09-15 00:45:34.643456	TuruDblJ	image.jpg	image/jpeg	1962950	2014-09-15 00:45:31.432033	\N	
426	Fun day apple picking! 	Spent a fun day picking apples with mum and dad. 	\N	2014-09-15 00:50:00.132488	2014-09-15 00:50:00.132488	DpcjJR3K	image.jpg	image/jpeg	403581	2014-09-15 00:49:59.300568	\N	
427	Out at a farm for my first time =)	Busy weekend -- we all went to Hartland Farm and I saw goats, chickens; played on a bouncy mat, played in the sand, went on a hay ride and picked apples; what a great day!!	\N	2014-09-15 00:51:46.832738	2014-09-15 00:51:46.832738	c6ZAaceU	image.jpg	image/jpeg	3270283	2014-09-15 00:51:43.591351	\N	
428	Bouncing my face off =)		\N	2014-09-15 01:15:17.581226	2014-09-15 01:15:17.581226	pUOJt1T6	\N	\N	\N	\N	\N	vROoNJYIcEY
429	Great pic of me & Dad!	From my first concert =)	\N	2014-09-15 15:20:58.162948	2014-09-15 15:20:58.162948	2WwqvkXP	roo_i2.jpg	image/jpeg	1244108	2014-09-15 15:20:56.675632	\N	
430	Shopping with mum & dad is so much fun!	You love sitting and standing in the cart playing with all the things we're going to buy. You even tried eating mushrooms still in the pack!	\N	2014-09-20 19:10:57.930006	2014-09-20 19:10:57.930006	jwYMifS0	image.jpg	image/jpeg	2126579	2014-09-20 19:10:54.99304	\N	
431	Driving my first tractor!	Went to Cox farm with mum, dad, Aunt Max, Uncle Wayne, cousin Zane & Cousin Reuben -- I was a bit tired, but I love tractors and I love chocolate!	\N	2014-09-29 01:00:39.019166	2014-09-29 01:00:39.019166	PisbDoxr	image.jpg	image/jpeg	2014941	2014-09-29 01:00:35.247947	\N	
432	My first trip to Disney World!	My first trip to DW was so much fun! We went to Animal Kingdom, Magic Kingdom and downtown Disney. We stayed at the All Star Movie Resort and had fun swimming and playing. We went from Oct 1- Oct 4, 2014. 	\N	2014-10-06 12:19:47.190009	2014-10-06 12:19:47.190009	yqYW-AAB	image.jpg	image/jpeg	959889	2014-10-06 12:19:44.201737	\N	
433	Arriving with the whole family 	Arrived at Disney all excited with my couzies!	\N	2014-10-06 12:46:40.609197	2014-10-06 12:46:40.609197	XroukB_o	image.jpg	image/jpeg	1655339	2014-10-06 12:46:34.658132	\N	
434	Downtown Disney	Went to downtown Disney and tried on some Mini ears.	\N	2014-10-06 12:47:46.589267	2014-10-06 12:47:46.589267	I4H8EWja	image.jpg	image/jpeg	560204	2014-10-06 12:47:44.036913	\N	
435	Animal kingdom fun		\N	2014-10-06 12:48:31.710399	2014-10-06 12:48:31.710399	HFItqfuK	image.jpg	image/jpeg	612676	2014-10-06 12:48:29.738666	\N	
436	Disney All Star Resort	I loved the big doggies at the hotel. 	\N	2014-10-06 12:49:31.451233	2014-10-06 12:49:31.451233	F4f1hFaz	image.jpg	image/jpeg	558031	2014-10-06 12:49:29.088322	\N	
437	Magic Kingdom	Had a blast at the magic kingdom. I went on a couple of rides like "it's a small world", "Winnie the pooh", Peter Pan" and "pirates of the Caribbean".	\N	2014-10-06 12:51:24.086835	2014-10-06 12:51:24.086835	Y26mW6Wp	image.jpg	image/jpeg	648945	2014-10-06 12:51:21.100253	\N	
438	The magic continues...	Carousel ride with the whole family.	\N	2014-10-06 12:52:19.856956	2014-10-06 12:52:19.856956	ltZ-ePdZ	image.jpg	image/jpeg	707154	2014-10-06 12:52:17.500408	\N	
439	Can dad do it?	Dad tried to pull the sword from the stone, but it was a little hard. So he got all my cousins to participate. 	\N	2014-10-06 12:53:34.765146	2014-10-06 12:53:34.765146	gyQZViL8	image.jpg	image/jpeg	836622	2014-10-06 12:53:32.726294	\N	
441	Toy story fun		\N	2014-10-06 12:54:16.978384	2014-10-06 12:54:16.978384	0DHdnOqM	image.jpg	image/jpeg	679432	2014-10-06 12:54:14.993785	\N	
442	Downtown Disney 	We went to DTD on theist day so I could buy a new dolly with the money aunt Lori and Bill got me, but first we played on the grass a bit.	\N	2014-10-06 12:56:12.777275	2014-10-06 12:56:12.777275	QbM16hXR	image.jpg	image/jpeg	772675	2014-10-06 12:56:11.033076	\N	
443	My new dolly - Elsa!	I bought a new doll and her name is Elsa from Frozen. I drag her around everywhere I go. 	\N	2014-10-06 12:57:12.824427	2014-10-06 12:57:12.824427	RtkjdngJ	image.jpg	image/jpeg	543253	2014-10-06 12:57:10.570272	\N	
444	Heading home	Everyone is all worn out. But what a fun vacation! 	\N	2014-10-06 12:57:26.578243	2014-10-06 12:57:56.400754	rZ8s5apd	image.jpg	image/jpeg	567364	2014-10-06 12:57:54.247375	\N	
445	Natural History Museum	Went to the Natural History Museum today with my aunt, uncle and 2 cousins Zane and Rueben. Had lots of fun in the discovery room. 	\N	2014-10-11 03:42:35.461551	2014-10-11 03:42:35.461551	ERE507qa	image.jpg	image/jpeg	1934704	2014-10-11 03:42:32.963354	\N	
446	Cousins exploring		\N	2014-10-11 03:43:11.927889	2014-10-11 03:43:11.927889	wdWj6Ap1	image.jpg	image/jpeg	1645007	2014-10-11 03:43:09.008951	\N	
447	Cousins playing		\N	2014-10-11 03:43:39.14676	2014-10-11 03:43:39.14676	oGCQv49a	image.jpg	image/jpeg	1671646	2014-10-11 03:43:35.956689	\N	
448	Heading to New York with the fam!	Heading to NY for the weekend. My cousins all wanted to ride in the car with us. I was very excited and very tired! 	\N	2014-10-11 18:38:02.37574	2014-10-11 18:38:02.37574	zGb70WDH	image.jpg	image/jpeg	255875	2014-10-11 18:38:01.340265	\N	
449	Funzies in the Big Apple	Had a ton of fun in New York with my cousins. We went to time square, saw the Statue of Liberty, visited FOA Schwartz, the biggest you store and had dinner in Chinatown where I enjoyed tasty spring rolls and dim sum. 	\N	2014-10-15 00:08:03.217356	2014-10-15 00:08:03.217356	ctwJEuw9	image.jpg	image/jpeg	581756	2014-10-15 00:08:01.358083	\N	
450	I love momma!		\N	2014-10-15 00:59:52.800252	2014-10-15 00:59:52.800252	lmBYysiV	\N	\N	\N	\N	\N	39kvzC_iPQY
451	Sad day- goodbye family :(	Had a really fun time with my family from Australia. It was sad saying goodbye but I hope to see them again soon! 	\N	2014-10-15 01:09:24.513339	2014-10-15 01:09:24.513339	QK6U89F4	image.jpg	image/jpeg	1869211	2014-10-15 01:09:21.817196	\N	
452	Heading to the doctor!	Went to the doctor today. Unfortunately I have a sinus infection and I also have Hand, Foot and Mouth disease. It's just a virus and I can't do anything about it, but I have big blisters on my face :(. But at least I look cute! 	\N	2014-10-17 00:08:04.690747	2014-10-17 00:08:04.690747	qPGtOJZX	image.jpg	image/jpeg	1933121	2014-10-17 00:08:00.212755	\N	
453	Get that pumpkin!!		\N	2014-10-19 00:08:04.662233	2014-10-19 00:08:04.662233	fx0e0XZT	\N	\N	\N	\N	\N	PvBgGtguhD0
454	Little Miss Style!	Walking around with my sweet sunnies on.	\N	2014-10-20 02:29:28.786985	2014-10-20 02:29:28.786985	MXeeOk3p	image.jpg	image/jpeg	1729610	2014-10-20 02:29:19.96741	\N	
455	Baby programmin'		\N	2014-10-22 23:43:19.33471	2014-10-22 23:43:19.33471	wbqPkmnK	\N	\N	\N	\N	\N	B_uaz8kmgtY
456	Winky winky		\N	2014-10-22 23:44:17.36589	2014-10-22 23:44:17.36589	ZW19Nh1x	\N	\N	\N	\N	\N	zZPkkPRPauk
457	Kissy kissy with mum & dad!	Had a great photo shoot with mum, dad & my sister last weekend. I look soooo cute!	\N	2014-10-28 00:36:34.005088	2014-10-28 00:36:34.005088	tm_535mq	image.jpg	image/jpeg	134819	2014-10-28 00:36:33.099275	\N	
461	Bye cool shoes =)	You've outgrown another pair of shoes little one; we gave these to daddy's co-worker today. Time keeps rolling, and so do you -- we love you so much!	\N	2014-11-06 21:53:49.131117	2014-11-06 21:53:49.131117	GNBNuvTc	image.jpg	image/jpeg	1843214	2014-11-06 21:53:46.43916	\N	
462	Such a glam face =)	No words can describe how adorbs you are little one!\r\n\r\nxoxo\r\nMum & Dad	\N	2014-11-06 23:18:29.104534	2014-11-06 23:18:29.104534	7YV8-BPm	image.jpg	image/jpeg	415063	2014-11-06 23:18:24.853968	\N	
463	Playing at Grammy & Grumps!		\N	2014-11-09 18:40:08.616509	2014-11-09 18:40:08.616509	0AMK55b8	\N	\N	\N	\N	\N	5M0WH8QaT2w
464	Sup l'il babe =)		\N	2014-11-09 18:41:17.423942	2014-11-09 18:41:17.423942	jm7id-6a	image.jpg	image/jpeg	379542	2014-11-09 18:41:15.949512	\N	
465	Car seat selfie!	With tasty treats in my hand; the car seat ain't soooo bad. But once they run out, lookout...\r\n\r\n=)	\N	2014-11-09 19:46:13.897424	2014-11-09 19:46:13.897424	1o021zTG	image.jpg	image/jpeg	373736	2014-11-09 19:46:12.412473	\N	
466	Ruby's got rhythm		\N	2014-11-13 14:09:30.777842	2014-11-13 14:09:30.777842	xffzkZwG	\N	\N	\N	\N	\N	XibCX0cWmvk
467	Getting ready for the holidays =)	That jacket Grammy & Great Aunt Sharon gave you finally fits this year!	\N	2014-11-15 22:19:08.99127	2014-11-15 22:22:47.016242	h7B5EWbb	image.jpg	image/jpeg	1922954	2014-11-15 22:22:43.773799	\N	
468	Sweet bed head!		\N	2014-11-15 22:23:30.870862	2014-11-15 22:23:30.870862	v9jb_okS	image.jpg	image/jpeg	2052847	2014-11-15 22:23:25.707976	\N	
469	Sittin' in a bowl =)		\N	2014-11-15 22:24:53.165462	2014-11-15 22:24:53.165462	w7zlEF2x	image.jpg	image/jpeg	2093809	2014-11-15 22:24:50.339474	\N	
470	Hanging with the Sylas for lunch	Went to lunch with Liz and Sylas for Mommys birthday. 	\N	2014-11-15 22:26:54.62531	2014-11-15 22:26:54.62531	BwzS2KgD	image.jpg	image/jpeg	2312346	2014-11-15 22:26:51.761727	\N	
568	Foods the name and messy is the game!		\N	2015-05-18 02:09:22.412403	2015-05-18 02:09:22.412403	wLNEEP4a	image.jpg	image/jpeg	1183117	2015-05-18 02:09:20.41926	\N	
472	Disney memories! 	I miss Disney and all the fam.	\N	2014-11-15 22:27:45.502864	2014-11-15 22:27:45.502864	zRr4Fc5w	image.jpg	image/jpeg	374317	2014-11-15 22:27:44.514824	\N	
473	All we need is love...	Mum wanted to take a photo with me, dad and bean. Just a happy family photo..... 	\N	2014-11-16 03:25:43.370429	2014-11-16 03:26:40.609579	mQ11TU8V	image.jpg	image/jpeg	356016	2014-11-16 03:26:39.718907	\N	
474	Sweet set of chords!	Looks a lot like Grumpa here =)	\N	2014-11-17 13:32:25.055951	2014-11-17 13:33:34.363682	CiJMFbW2	image.jpg	image/jpeg	2860967	2014-11-17 13:32:21.667367	\N	
475	Playing in my pillow fort on Sunday		\N	2014-11-17 13:33:08.135996	2014-11-17 13:33:57.235005	vWxxBD_4	image.jpg	image/jpeg	1535108	2014-11-17 13:33:05.178179	\N	
476	I support Movember =)		\N	2014-11-17 20:00:42.314181	2014-11-17 20:00:42.314181	2ei39aXY	image.jpg	image/jpeg	319237	2014-11-17 20:00:39.702076	\N	
477	So sleepy with mumma	Been running around with momma trying to get her French visa ready	\N	2014-11-21 17:32:38.600912	2014-11-21 17:33:30.444424	l1Bev9rz	image.jpg	image/jpeg	1894711	2014-11-21 17:32:35.573597	\N	
478	Happy even tho I'm sick	As usual, you're a trooper even when you're not feeling great. The day before Turkey Day and we had to go to the doctors; but everything seemed fine and it might be just a bad day =)	\N	2014-11-26 20:56:35.928318	2014-11-26 20:56:35.928318	3lQCXUdt	IMG_3227.JPG	image/jpeg	118335	2014-11-26 20:56:34.678305	\N	
479	Dad was out of town, but I gave mom a present!	Oops, poopin' with a beet red face =)	\N	2014-11-26 21:01:19.936469	2014-11-26 21:01:19.936469	Yp9jfjiN	IMG_3229.JPG	image/jpeg	558472	2014-11-26 21:01:15.039177	\N	
480	Heya gang =)		\N	2014-11-26 21:01:54.738466	2014-11-26 21:01:54.738466	IT65pkkC	IMG_3224.JPG	image/jpeg	108030	2014-11-26 21:01:51.838531	\N	
481	Happy worst Thanksgiving! 	It's been 2 days since I've eaten anything, I had 102 degree fever and have thrown up several times. This is not been the best thanksgiving :(. At least mom and dad have each other and mimosas. 	\N	2014-11-27 23:41:04.277042	2014-11-27 23:41:04.277042	iX3CJqsA	image.jpg	image/jpeg	1519530	2014-11-27 23:41:00.513437	\N	
482	Snoozing on the ride home	I don't like my car seat much; but when I pass out in it, I pass out good!	\N	2014-11-30 23:31:50.493453	2014-11-30 23:31:50.493453	kopvc-yU	image.jpg	image/jpeg	382192	2014-11-30 23:31:49.27926	\N	
483	Playing in the moving box; the best toy ever!	Mum, dad, sis and I are moving to LA in January! I like these boxes tho =)	\N	2014-11-30 23:33:42.202564	2014-11-30 23:33:42.202564	wXe6ZPML	image.jpg	image/jpeg	1965032	2014-11-30 23:33:39.376094	\N	
484	Happy in my shopping cart		\N	2014-11-30 23:34:29.99124	2014-11-30 23:34:29.99124	syc9FFPV	image.jpg	image/jpeg	2014061	2014-11-30 23:34:27.244604	\N	
485	I locked grammy & grumps out on their deck!		\N	2014-12-01 14:08:39.708402	2014-12-01 14:08:39.708402	Km9XXtJi	\N	\N	\N	\N	\N	7_7d20g4bEQ
486	Peek-abo with a li'l box		\N	2014-12-01 14:09:15.112342	2014-12-01 14:09:15.112342	hGLph8dt	\N	\N	\N	\N	\N	XrPTLGVNcb8
487	Merry Christmas Santa!	Went to get my photos taken with Santa today. I was not so sure about him. Logan and Devlyn also got their photos taken, then we had lunch and mom was going to buy me Legos for Christmas, but I got crabby and threw a tantrum so we had to rush out the mall :). 	\N	2014-12-05 04:09:56.892918	2014-12-05 14:53:49.752994	SMNrsP_X	image.jpg	image/jpeg	364818	2014-12-05 04:09:55.931073	\N	
488	Roo as an Elf		\N	2014-12-05 18:39:37.09936	2014-12-05 18:39:37.09936	udtWN8FP	\N	\N	\N	\N	\N	Jx076askjMs
489	Sweet hair girl!	Loving mamas little hair extensions =)	\N	2014-12-09 00:59:38.171913	2014-12-09 00:59:38.171913	EiaxS-8Y	image.jpg	image/jpeg	129760	2014-12-09 00:59:37.337654	\N	
490	Our little climber	Started climing everything recently; no holding you back!	\N	2014-12-09 01:02:19.924412	2014-12-09 01:02:19.924412	6V36aeb1	image.jpg	image/jpeg	1421408	2014-12-09 01:02:16.531071	\N	
491	Ruby grooving with dad		\N	2014-12-17 00:27:26.812712	2014-12-17 00:27:26.812712	yzZ4rMbe	\N	\N	\N	\N	\N	Xu6-gKvgtYI
492	Just hanging in my crib		\N	2014-12-17 00:27:58.853351	2014-12-17 00:27:58.853351	gz23IKQP	\N	\N	\N	\N	\N	LcNDcXbPqlk
493	Aunt Claire & Uncle Steve got me a sweet welcome to Cali gift bag!	Gonna be a beach babe & surfer girl!	\N	2014-12-17 00:32:04.786205	2014-12-17 00:32:04.786205	ogFjyLLS	image.jpg	image/jpeg	2336675	2014-12-17 00:31:59.698606	\N	
495	Mum & I checking out the big Xmas tree		\N	2014-12-21 02:43:40.287503	2014-12-21 02:43:40.287503	S142_ciB	image.jpg	image/jpeg	2016112	2014-12-21 02:43:36.983188	\N	
496	Typee typee typee		\N	2014-12-21 02:44:21.424373	2014-12-21 02:44:21.424373	8Bhz-FJo	image.jpg	image/jpeg	340089	2014-12-21 02:44:20.21685	\N	
497	18 month check up! 	Had my 18 month check up. In all happy and healthy! So the doctor says :)	\N	2014-12-22 21:05:05.17887	2014-12-22 21:05:05.17887	89XGGusy	image.jpg	image/jpeg	1263248	2014-12-22 21:05:01.866465	\N	
498	Baby in a bag	Daddy takes me out In his man bag! 	\N	2014-12-22 21:09:50.770376	2014-12-22 21:09:50.770376	JyWbDTbT	image.jpg	image/jpeg	2063723	2014-12-22 21:09:48.215765	\N	
499	Gaylord for Christmas with Amelia	We went to the Gaylord hotel for Christmas festivities and to spend some time with my buddy Amelia and her brother Nico.	\N	2014-12-22 23:26:17.449858	2014-12-22 23:26:17.449858	4c9dN_ev	image.jpg	image/jpeg	803431	2014-12-22 23:26:14.597711	\N	
500	Gradma and Grumps wore me out! 	I went to to mall with Grammy and grumpa so mom and dad could run some errands. I had so much fun that I fell asleep in my stroller. 	\N	2014-12-22 23:28:42.876268	2014-12-22 23:28:42.876268	JxpUX5vT	image.jpg	image/jpeg	1863043	2014-12-22 23:28:39.58131	\N	
501	Christmas at the Wiliamses...	So, a lot has happened since my last post, first we spent Christmas morning at the Williams family house, then we had a second Christmas at Grammy and grumpa's. The. We traveled to South Africa to visit family there. And then we came back to the States and moved straight to LA, California . So it's been a little crazy and I need to get you all caught up. So let the games begin :).	\N	2015-02-06 07:03:09.193204	2015-02-06 07:03:09.193204	ROQKDB5k	image.jpg	image/jpeg	721836	2015-02-06 07:03:07.444014	\N	
546	Happy Easter to me!	New Easter tradition: eat anything you want all weekend!\r\n\r\nAlso; Ruby gets one big prezzie on Saturday, and her basket of goodies on Sunday. 	\N	2015-04-05 18:56:01.738566	2015-04-05 19:03:04.73546	NX_PzNfG	\N	\N	\N	\N	\N	BnY5QWSpvvI
502	Christmas with Grammy and Grumpa	We spent a couple of days and Grammy and grumpa's before heading to South Africa. I got lots of cool presents for the trip to keep me distracted. 	\N	2015-02-06 07:08:27.883256	2015-02-06 07:09:21.161949	c0A02BVN	image.jpg	image/jpeg	647651	2015-02-06 07:09:19.12716	\N	
503	South Africa, here we come!	We traveled to South Africa on Dec 30th. We had a layover in Paris where we all just slept. Then ha d an interesting travel change where we flew to Cape Town instead of Johannesburg. Mom and dad were NOT happy! 	\N	2015-02-06 07:32:27.376786	2015-02-06 07:32:27.376786	-IkhBmmv	image.jpg	image/jpeg	512486	2015-02-06 07:32:26.118879	\N	
504	Once there, fun was to be had	Once we got to SA though. It was all fun and games!	\N	2015-02-06 07:33:14.637572	2015-02-06 07:33:34.280123	0jlzC0Mz	image.jpg	image/jpeg	738617	2015-02-06 07:33:13.091701	\N	
505	More fun times..	I got to have my first real ice cream and chocolate waffle. I played with my cousins and loved the beach! 	\N	2015-02-06 07:34:27.000172	2015-02-06 07:34:27.000172	7FCekRQ3	image.jpg	image/jpeg	561637	2015-02-06 07:34:24.736939	\N	
506	The big wedding	I got to go to moms cousins wedding. It was lots of fun but I got tired quickly and oupa and nana took me home to mom and dad could keep partying. 	\N	2015-02-06 07:35:37.899256	2015-02-06 07:35:37.899256	9TZF-aJf	image.jpg	image/jpeg	601372	2015-02-06 07:35:35.865891	\N	
507	Sad, sad days...	Once we had to leave, we were all very sad. We had a bit of a rough trip back with lots of delays and unplanned events. But we all held it together and came out on the other side just fine! 	\N	2015-02-06 07:37:00.780196	2015-02-06 07:37:00.780196	nSAiseIK	image.jpg	image/jpeg	573633	2015-02-06 07:36:58.791532	\N	
508	And then we moved to California	After our trip to South Africa, we moved to Los Angeles, CA. When we got there, I met my new buddy Lucas and loved him!  	\N	2015-02-08 05:10:06.299464	2015-02-08 05:10:06.299464	dVjHQEZY	image.jpg	image/jpeg	1811991	2015-02-08 05:10:03.929531	\N	
509	Selfie on the plane with Dad		\N	2015-02-16 17:12:20.932151	2015-02-16 17:12:20.932151	If04xyhg	IMG_3333.jpg	image/jpeg	459403	2015-02-16 17:12:19.830173	\N	
510	Yummy food at our new flat!	Loving spending time with Opa & Nana and everyone here in sunny South Africa =)	\N	2015-02-16 17:13:34.32998	2015-02-16 17:13:34.32998	c3hdhfER	IMG_3495.JPG	image/jpeg	56084	2015-02-16 17:13:33.248273	\N	
511	At cousin Jon's wedding with Opa & Nana		\N	2015-02-16 17:14:09.12985	2015-02-16 17:14:09.12985	QGFtk7Aa	IMG_3500.JPG	image/jpeg	83691	2015-02-16 17:14:08.106165	\N	
512	Checking some bunnies out at Flag Farm		\N	2015-02-16 17:14:43.363724	2015-02-16 17:14:43.363724	qnqjbwQE	IMG_3516.jpg	image/jpeg	2406411	2015-02-16 17:14:40.096295	\N	
513	My first pony ride!		\N	2015-02-16 17:19:01.794192	2015-02-16 17:19:01.794192	e3d7qK3Z	IMG_3540.JPG	image/jpeg	2428979	2015-02-16 17:18:58.500569	\N	
514	Chocolate cake!		\N	2015-02-16 17:20:59.038112	2015-02-16 17:20:59.038112	MQZtPXAz	IMG_3556.JPG	image/jpeg	94770	2015-02-16 17:20:57.93156	\N	
515	Saying goodbye to Nana & Opa =(		\N	2015-02-16 17:22:02.185231	2015-02-16 17:22:02.185231	1qbUU0jx	IMG_3562.jpg	image/jpeg	2267047	2015-02-16 17:21:58.108851	\N	
516	On the plane ride home (finally)		\N	2015-02-16 17:22:39.662768	2015-02-16 17:22:39.662768	pJX-xml6	IMG_3349.jpg	image/jpeg	1924928	2015-02-16 17:22:33.790514	\N	
517	First ballet lesson with mum	OMG -- don't I look so adorbs in my outfit =)\r\n\r\nThanks mum!	\N	2015-02-16 22:36:41.341767	2015-02-16 22:36:55.179822	xx2GFVMK	IMG_3421.JPG	image/jpeg	101384	2015-02-16 22:36:53.930598	\N	
518	California living 	I love living in LA. I love the beach and especially playing in the water! 	\N	2015-02-22 02:43:36.19798	2015-02-22 02:43:36.19798	IaJXMPNf	image.jpg	image/jpeg	2413141	2015-02-22 02:43:32.359886	\N	
519	Swimming lessons..	I'm taking swimming lessons every Saturday so I can swim like a fish without help from mom and dad! 	\N	2015-02-22 02:44:33.20679	2015-02-22 02:44:33.20679	ssfwQpIs	image.jpg	image/jpeg	2147511	2015-02-22 02:44:28.914475	\N	
520	Being a goof!	I am learning how to smile for the camera, every time mum says smile, I scrunch up my nose and close my eyes :)	\N	2015-02-22 02:45:39.419312	2015-02-22 02:45:39.419312	dyCPAGQ3	image.jpg	image/jpeg	332759	2015-02-22 02:45:37.598887	\N	
521	Love all my baby dolls...	I love cuddling with all my babies! 	\N	2015-02-22 02:47:32.074964	2015-02-22 02:47:32.074964	PnMO0Nsd	image.jpg	image/jpeg	1824458	2015-02-22 02:47:26.495465	\N	
522	Potty training begins...	How quickly the time has flown -- I peed twice and poo'd once on the loo today!	\N	2015-02-23 03:00:01.550359	2015-02-23 03:00:01.550359	fD_a8MQ1	image.jpg	image/jpeg	1750322	2015-02-23 02:59:58.316803	\N	
523	Smiling at myself =)		\N	2015-02-23 03:00:39.037713	2015-02-23 03:00:39.037713	TyeP3QzL	image.jpg	image/jpeg	441973	2015-02-23 03:00:37.590994	\N	
524	Me & Dad working it		\N	2015-02-23 22:01:14.071175	2015-02-23 22:01:14.071175	J83Xnamt	me-roo-new.jpg	image/jpeg	99318	2015-02-23 22:01:13.199006	\N	
525	Biking in Venice beach	Went for a bike ride today with mum and dad. It was a little chilly (65), but we had so much fun! 	\N	2015-03-01 03:58:53.620713	2015-03-01 03:58:53.620713	8HwCpsGx	image.jpg	image/jpeg	583255	2015-03-01 03:58:48.715365	\N	
526	Snuggling with mummy	The longest I've been held in about 8 months	\N	2015-03-02 02:02:51.020623	2015-03-02 02:03:09.477522	8KniKemv	image.jpg	image/jpeg	2253879	2015-03-02 02:03:06.526711	\N	
527	Rock and Roll flea market	Went to the rock and roll flea market today with Mum, dad, Steve, Clare and Lucas. 	\N	2015-03-02 03:04:38.384071	2015-03-02 03:04:38.384071	8ZYBdaUX	image.jpg	image/jpeg	572024	2015-03-02 03:04:37.049328	\N	
528	So tired.... 		\N	2015-03-02 03:06:16.134572	2015-03-02 03:06:16.134572	YacWLqHa	image.jpg	image/jpeg	1804992	2015-03-02 03:06:13.016545	\N	
529	Computing with Dad		\N	2015-03-02 03:10:46.551687	2015-03-02 03:10:46.551687	MEVTr8lm	\N	\N	\N	\N	\N	1xAV6JI0nHo
531	Love to cuddle with mum		\N	2015-03-02 03:12:05.09439	2015-03-02 03:12:05.09439	OXtgNe6B	\N	\N	\N	\N	\N	Z-if-5XpSwc
530	Laughing at the babies		\N	2015-03-02 03:11:21.675192	2015-03-02 03:13:04.881352	Uzhw_j-X	\N	\N	\N	\N	\N	E7paDwGVhSU
532	My first lolly	Mom let me get my first tootsie roll today. It was delishes!!!	\N	2015-03-21 02:39:17.156907	2015-03-21 02:39:17.156907	jwkIhbKg	image.jpg	image/jpeg	323422	2015-03-21 02:39:16.430933	\N	
534	Looking out over the ocean		\N	2015-03-24 00:55:39.235969	2015-03-24 00:55:39.235969	_eeNJGHS	image.jpg	image/jpeg	2261542	2015-03-24 00:55:34.720104	\N	
535	Lunch with the fam & Uncle Chris!		\N	2015-03-24 00:56:25.244183	2015-03-24 00:56:25.244183	xF3ji8kj	image.jpg	image/jpeg	2107587	2015-03-24 00:56:19.950591	\N	
536	My sweet new wetsuit! 		\N	2015-03-30 01:55:53.452127	2015-03-30 01:55:53.452127	NkUnoNkW	image.jpg	image/jpeg	898977	2015-03-30 01:55:51.864525	\N	
537	Bike riding with the folks..	Went for a nice bike ride with mum and dad today. We even took bean in a basket on moms bike. 	\N	2015-03-30 01:56:57.855064	2015-03-30 01:57:22.163803	0wVtKTHU	image.jpg	image/jpeg	2539279	2015-03-30 01:56:54.768253	\N	
533	Walking with mum		\N	2015-03-24 00:55:03.777995	2015-03-30 01:57:41.978333	2zLhVNmw	image.jpg	image/jpeg	2954313	2015-03-24 00:54:59.962268	\N	
538	Bouncy bouncy!!		\N	2015-03-30 01:58:06.077758	2015-03-30 01:58:06.077758	68qqcVRc	\N	\N	\N	\N	\N	bPYQ3e8EHuc
539	Skateboarding with dad		\N	2015-03-30 01:58:29.547494	2015-03-30 01:58:29.547494	3AMkkqR1	image.jpg	image/jpeg	1662144	2015-03-30 01:58:26.584928	\N	
540	Hi guys =)		\N	2015-03-30 01:59:38.902729	2015-03-30 01:59:38.902729	W80O1Wqn	\N	\N	\N	\N	\N	ttp://youtu.be/RcgnRgZFt9Y
541	Best Easter present ever!		\N	2015-04-04 22:34:38.969686	2015-04-04 22:34:38.969686	2jflSYf5	image.jpg	image/jpeg	1789375	2015-04-04 22:34:33.709648	\N	
542	Brekkie pose	Meh; this is ok, parental units. 	\N	2015-04-04 22:35:31.826187	2015-04-04 22:35:31.826187	v5i1YO34	image.jpg	image/jpeg	1794276	2015-04-04 22:35:23.057023	\N	
543	My first scooter!		\N	2015-04-05 02:36:27.645385	2015-04-05 02:36:27.645385	o1Gmj3PC	\N	\N	\N	\N	\N	eNAWKdqv2Zs
544	Get that birdie!		\N	2015-04-05 02:37:12.883196	2015-04-05 02:37:12.883196	IUCoa0Ze	\N	\N	\N	\N	\N	lQ8WiGpCDJQ
545	Yeah Easter bunny- u better make it good!	Apparently my Easter bunny did good! 	\N	2015-04-05 03:35:31.560359	2015-04-05 03:35:31.560359	VEZSMZsr	image.jpg	image/jpeg	1688725	2015-04-05 03:35:26.03519	\N	
562	Chilling on the porch	Just eating some tasty raisins in my comfy chair	\N	2015-05-17 23:33:15.651121	2015-05-17 23:33:15.651121	fpkafBQJ	image.jpg	image/jpeg	2194020	2015-05-17 23:33:10.94668	\N	
547	Easter scooting around	Got a new scooter for Easter. After enjoying the treats from my Easter basket (thanks feetjie) I got to go out and ride my new scooter.	\N	2015-04-05 19:03:01.584331	2015-04-05 19:03:34.326671	iYhB559H	image.jpg	image/jpeg	2919197	2015-04-05 19:03:31.090221	\N	
548	Nature walk with mum & dad	At the El Dorado nature center -- so much fun; I held my first bug!	\N	2015-04-19 00:59:49.383357	2015-04-19 00:59:49.383357	OeepduBX	image.jpg	image/jpeg	508394	2015-04-19 00:59:47.94746	\N	
549	Amazing smile!		\N	2015-04-19 02:18:05.076899	2015-04-19 02:18:05.076899	_hFUJu-w	image.jpg	image/jpeg	2820768	2015-04-19 02:18:02.183692	\N	
550	Trying my damndest to laugh!		\N	2015-04-19 02:18:56.843707	2015-04-19 02:19:28.057371	0L7ekbZ_	\N	\N	\N	\N	\N	DwFEJoeppdM
551	Fun day with mom and dad		\N	2015-04-29 04:27:53.046544	2015-04-29 04:27:53.046544	Ku_U9qsT	image.jpg	image/jpeg	436895	2015-04-29 04:27:51.968274	\N	
552	Roo-nananigans! 	Just me being me! Jumping on the bed with mum, dance party! 	\N	2015-04-29 04:29:38.440941	2015-04-29 04:29:38.440941	M6YQpxEL	image.jpg	image/jpeg	459181	2015-04-29 04:29:37.29417	\N	
553	Beach living!		\N	2015-04-29 04:41:01.753595	2015-04-29 04:41:01.753595	6BgARI15	image.jpg	image/jpeg	412625	2015-04-29 04:41:00.462388	\N	
554	A hike a day keeps ... You know how it goes!	Went hiking 2 weeks ago and had tons of fun. We even saw a snake! 	\N	2015-04-29 04:42:23.031389	2015-04-29 04:42:23.031389	X_sVlx2r	image.jpg	image/jpeg	639422	2015-04-29 04:42:21.659083	\N	
555	Roo-nanigans part II		\N	2015-04-29 04:43:24.305206	2015-04-29 04:43:24.305206	6ZOT12Ww	image.jpg	image/jpeg	450880	2015-04-29 04:43:23.122298	\N	
556	More Roo-nanigans...	Sitting in the draw unpacking all my diapers is probably the most fun I have on weekends! 	\N	2015-04-29 04:44:55.228228	2015-04-29 04:44:55.228228	5kv46PwC	image.jpg	image/jpeg	507724	2015-04-29 04:44:53.66438	\N	
557	My first earth day nature box	At daycare on earth day, we made a nature box and then went on a nature walk and collected stuff to put in our boxes. 	\N	2015-04-29 04:47:24.944816	2015-04-29 04:47:24.944816	iX-OdKDE	image.jpg	image/jpeg	430447	2015-04-29 04:47:23.310636	\N	
558	Hamming it up!		\N	2015-04-29 05:12:42.236862	2015-04-29 05:12:42.236862	yvX0YbFS	image.jpg	image/jpeg	1784325	2015-04-29 05:12:39.875771	\N	
563	Playing in the makeup drawar	When mummy's out of town; I play in her makeup drawar =)	\N	2015-05-17 23:35:28.969861	2015-05-17 23:35:28.969861	WYU85Tjo	image.jpg	image/jpeg	1476020	2015-05-17 23:35:23.589306	\N	
564	Jumpy jumpy!		\N	2015-05-17 23:36:14.258778	2015-05-17 23:36:14.258778	kbm5mYTH	\N	\N	\N	\N	\N	bqNmyUTIN0Y
565	Out to lunch for mummy's day!	Mummy just got Barack in town & we went for tasty brunch in Culver City	\N	2015-05-17 23:38:54.439068	2015-05-17 23:38:54.439068	9SaiwWWX	image.jpg	image/jpeg	2016708	2015-05-17 23:38:51.85016	\N	
566	So fashionable	Wearing an old pair of mummy's glasses with 1 lens missing =)	\N	2015-05-17 23:39:51.563622	2015-05-17 23:39:51.563622	qINkd_59	image.jpg	image/jpeg	1924338	2015-05-17 23:39:48.237387	\N	
567	Wearing mummy's coat		\N	2015-05-17 23:41:48.945527	2015-05-17 23:41:48.945527	AzyrLsrv	image.jpg	image/jpeg	2131619	2015-05-17 23:41:39.996708	\N	
569	Rubys first pañata!	At Lucas & Marcus' first birthday party	\N	2015-05-18 02:11:14.217251	2015-05-18 02:11:14.217251	jCOY-acD	\N	\N	\N	\N	\N	SQKEm2blzWA
570	Loungin' on the patio		\N	2015-05-18 02:12:37.927709	2015-05-18 02:12:37.927709	EbsL7cME	\N	\N	\N	\N	\N	KGx11B3HLt4
571	I look good in mummy's clothes!		\N	2015-05-18 02:13:21.921537	2015-05-18 02:13:21.921537	Ltwi5i48	\N	\N	\N	\N	\N	WRWhUmWJAHU
572	Friday night party time! 	I fell today at daycare and scraped up my nose, but still feeling pretty good! 	\N	2015-05-23 02:21:12.542916	2015-05-23 02:21:12.542916	vo5vYpv4	image.jpg	image/jpeg	585222	2015-05-23 02:21:10.214153	\N	
573	Say cheese!!!	When mummy says smile.... This is what happens to my face :)	\N	2015-05-23 02:22:04.767947	2015-05-23 02:22:04.767947	rzm9xiOP	image.jpg	image/jpeg	1370857	2015-05-23 02:22:00.393322	\N	
574	Hanging with the kiddos		\N	2015-06-26 16:51:27.882486	2015-06-26 16:51:27.882486	wqjVo1O_	image.jpg	image/jpeg	2136802	2015-06-26 16:51:18.950699	\N	
576	Chilling at the grocery store		\N	2015-06-26 16:52:56.269562	2015-06-26 16:52:56.269562	f7nygT8y	image.jpg	image/jpeg	1688288	2015-06-26 16:52:48.174084	\N	
577	Jumpy jumpy!		\N	2015-06-26 17:28:08.620102	2015-06-26 17:28:08.620102	5a7ET1PG	\N	\N	\N	\N	\N	mE1WbxELX9I
578	Riding someone's scooter		\N	2015-06-26 17:29:25.555486	2015-06-26 17:29:25.555486	dGacvUD1	\N	\N	\N	\N	\N	9ed6k1fcKdo
579	Happy birthday babe. You are 2!!!	Mum made some tasty cupcakes, then we opened some prezies from Grammy and grumps, Feetjie and Oom and Lori and the twins. 	\N	2015-06-27 02:42:44.462759	2015-06-27 02:42:44.462759	IWer9IoB	image.jpg	image/jpeg	616546	2015-06-27 02:42:42.430949	\N	
580	Mid-air jump!!		\N	2015-06-28 21:48:11.282371	2015-06-28 21:48:11.282371	Pc6bUYnK	image.jpg	image/jpeg	1383301	2015-06-28 21:48:02.885032	\N	
581	4th July in our new house! 	We moved into our new house and had a great 4th July party with some new friends. Mum and dad made tasty food and snacks and we had delishes apple sauce Popsicles! 	\N	2015-07-05 20:08:37.985358	2015-07-05 20:08:37.985358	PM9l_UMc	image.jpg	image/jpeg	772026	2015-07-05 20:08:35.295361	\N	
582	My cool new room 	Mum made my new room pretty cool! 	\N	2015-07-05 20:09:42.461583	2015-07-05 20:10:43.315948	BUM8vAaz	image.jpg	image/jpeg	1215969	2015-07-05 20:10:38.666327	\N	
583	Post 2 year check up- lolly time! 	Went for my 2 year check up today and all looks well. I got a tasty lolly for being so good! 	\N	2015-07-08 21:32:48.09222	2015-07-08 21:32:48.09222	bgtALvlM	image.jpg	image/jpeg	307181	2015-07-08 21:32:46.993145	\N	
584	Anna time	Playing with my babysitter-Anna is one of my favorite things! On Monday she took me to a place called "The magic forest" in Venice and I loved it! I came home sleeping in my stroller.	\N	2015-07-15 02:55:26.932726	2015-07-15 02:55:26.932726	67G5yKRe	image.jpg	image/jpeg	631412	2015-07-15 02:55:19.507604	\N	
585	❤️ My "Akkedis"	I love the Akkedis bubble blower that Feetjie & Oom sent me for my 2 year birthday. I can blow the bubbles by myself. 	\N	2015-07-15 02:56:48.948346	2015-07-15 02:56:48.948346	BQLDTJg5	image.jpg	image/jpeg	481367	2015-07-15 02:56:45.867292	\N	
586	Potty training done right 👍🏿👍🏿👍🏿	It's fine if I just lightly smack my doll (Nia) with a stick and tell her to go potty right? Isn't that how you do it? Also, one requirement is wearing an awesome 60 headband and be naked. Check!	\N	2015-07-15 02:58:33.71575	2015-07-15 02:58:33.71575	xqCCrWg4	image.jpg	image/jpeg	997878	2015-07-15 02:58:30.281221	\N	
587	OMG: love.		\N	2015-08-01 15:47:45.853301	2015-08-01 15:47:45.853301	2t3C6K2Y	me-roo.jpg	image/jpeg	102352	2015-08-01 15:47:44.563351	\N	
588	Summer	Fun summer eating Popsicles outside.	\N	2015-08-10 01:40:04.179887	2015-08-10 01:40:04.179887	KY4yafp-	image.jpg	image/jpeg	582920	2015-08-10 01:40:02.92007	\N	
589	Heading to DC	Heading to DC on July 17th for a week of visiting with Grammy and Grumps, heading to the lake at Sharon's and mom and dad going to aunt Courtney's wedding.	\N	2015-08-29 15:19:02.321592	2015-08-29 15:19:02.321592	Iq3dPqun	image.jpg	image/jpeg	401226	2015-08-29 15:18:59.753498	\N	
590	Lake fun! 	Lake fun, aunt Court getting ready for the wedding.	\N	2015-08-29 15:19:59.360665	2015-08-29 15:19:59.360665	c7-YVMCW	image.jpg	image/jpeg	520817	2015-08-29 15:19:57.766514	\N	
591	More lake and wedding	Mom and dad partying it up while I hung out with Grammy and Grumps	\N	2015-08-29 15:21:14.806869	2015-08-29 15:21:14.806869	QPu-ZJZp	image.jpg	image/jpeg	578006	2015-08-29 15:21:12.970574	\N	
592	My new school- play date to meet everyone 	Went to me new preschool last week- young minds to meet my teachers and some friends. I loved the trikes! I start on Sept 8th	\N	2015-08-29 15:22:39.755212	2015-08-29 15:22:39.755212	Futu6cqm	image.jpg	image/jpeg	458265	2015-08-29 15:22:38.384608	\N	
593	Love my Unkel chis...	My uncle Chris feeding me chicken wings while I lounge in my red neck outdoor hot tub! 	\N	2015-08-29 15:24:01.791341	2015-08-29 15:24:01.791341	lHbDDoOA	image.jpg	image/jpeg	462635	2015-08-29 15:24:00.145339	\N	
594	Awe allergies.... :(	Had to get allergy tested. Nothing seems bad but then had to get blood taken to check my immune system and its low, so now I need X-rays and to meet a new doctor.	\N	2015-08-29 15:25:28.441982	2015-08-29 15:25:28.441982	NY-JqypT	image.jpg	image/jpeg	266170	2015-08-29 15:25:25.355493	\N	
595	Won't keep me down- enjoying summer still	Home with mum and dad for two weeks while I transition to the new preschool. Mum is taking me out ALLOT since apparently I am driving her crazy. But I like it! :)	\N	2015-08-29 15:26:57.846128	2015-08-29 15:26:57.846128	XdbtGLOh	image.jpg	image/jpeg	582653	2015-08-29 15:26:56.23786	\N	
596	Strolling in Babies R Us	Good news! School starts on Wednesday! Mum, dad and I made it -- everyone's alive, tho it was touch and go for a bit =)	\N	2015-09-05 21:14:23.674119	2015-09-05 21:15:45.764595	aZFkJ2xx	image.jpg	image/jpeg	2280358	2015-09-05 21:14:19.836151	\N	
597	First day of Preschool!!!!	After a loooong 2 1/2 weeks home with mum and dad I started at my new preschool today! I loved it; the teachers are so cool and my new buddies seem fun too =)	\N	2015-09-10 04:56:34.69126	2015-09-10 04:56:34.69126	nn-opqjI	image.jpg	image/jpeg	2270457	2015-09-10 04:56:29.806545	\N	
598	Last day of summer fun- Labor Day paddle boarding	Spent the day at the beach paddle boarding with mum and dad. Had so much fun! 	\N	2015-09-10 15:33:43.908551	2015-09-10 15:33:43.908551	3AP4oaMC	image.jpg	image/jpeg	879448	2015-09-10 15:33:41.551169	\N	
599	Preschool!!! 	Started my 1st day of preschool at Young Minds in LA today. I loved it, and had so much fun! 	\N	2015-09-10 15:35:30.330436	2015-09-10 15:35:30.330436	YpNCw-9m	image.jpg	image/jpeg	788206	2015-09-10 15:35:27.134458	\N	
600	Day at the long beach aquarium 	Spent he day at the aquarium with mum and dad. I really loved be jelly fish! 	\N	2015-10-23 05:02:22.81484	2015-10-23 05:02:22.81484	9d1f0zuu	image.jpg	image/jpeg	489401	2015-10-23 05:02:20.656536	\N	
601	It's football season baby! 	Sent these photos to grumpa! Not sure he was so happy :)	\N	2015-10-23 05:03:28.290579	2015-10-23 05:03:28.290579	TxbVzz9h	image.jpg	image/jpeg	674243	2015-10-23 05:03:25.289052	\N	
603	Just being me...	Just some goofy photos of me being me!	\N	2015-10-23 05:04:47.408743	2015-10-23 05:04:47.408743	pIwZSpl2	image.jpg	image/jpeg	450434	2015-10-23 05:04:43.384171	\N	
604	Mum goes to Hong Kong	Mum went to HK with my aunt Maxie mouse and my cousin Rueben. She had a great time! 	\N	2015-10-23 05:06:20.814885	2015-10-23 05:06:20.814885	lSoeVRuP	image.jpg	image/jpeg	293937	2015-10-23 05:06:18.892605	\N	
605	More HK...		\N	2015-10-23 05:06:59.82303	2015-10-23 05:06:59.82303	LZijoby4	image.jpg	image/jpeg	327339	2015-10-23 05:06:58.388009	\N	
606	Hong Kong..		\N	2015-10-23 05:08:02.944958	2015-10-23 05:08:02.944958	LdT5q14P	image.jpg	image/jpeg	617047	2015-10-23 05:07:58.226785	\N	
607	Mum and Big Buddha		\N	2015-10-23 05:10:17.79169	2015-10-23 05:10:17.79169	2HvtbCUx	image.jpg	image/jpeg	186523	2015-10-23 05:10:15.771712	\N	
608	Day at the natural history museum	We went to the natural history museum in downtown LA. I really liked seeing the animals and my favorite was the dinosaurs. 	\N	2015-10-23 05:11:53.675655	2015-10-23 05:11:53.675655	Q6Aewqsu	image.jpg	image/jpeg	984563	2015-10-23 05:11:50.466233	\N	
609	Tea party for 4...		\N	2015-10-23 05:12:30.015883	2015-10-23 05:12:30.015883	tSCKsqeq	image.jpg	image/jpeg	1185270	2015-10-23 05:12:25.958185	\N	
610	Buddies! 	Me and my buddy Lucas! 	\N	2015-10-23 05:13:11.671744	2015-10-23 05:13:11.671744	zizxbZ0G	image.jpg	image/jpeg	950690	2015-10-23 05:13:06.539743	\N	
611	Toys! 	We went shopping for dad and I found all these toys on the floor. I had SO much fun playing. 	\N	2015-10-23 05:14:37.955557	2015-10-23 05:14:37.955557	VGdFOEA6	image.jpg	image/jpeg	2138198	2015-10-23 05:14:31.024655	\N	
612	Happy Halloween at Young Minds	We had a fall festival and dress up at you minds. Mum made tasty spider crackers as treat and I had so much fun! 	\N	2015-11-01 15:15:48.132825	2015-11-01 15:15:48.132825	Mq7wt5iB	image.jpg	image/jpeg	645278	2015-11-01 15:15:45.942186	\N	
613	Young Minds Halloween party 	I played all day at school dressed like a bunny in a tutu and had some tasty snacks, including 3 cupcakes! 	\N	2015-11-01 15:20:29.470992	2015-11-01 15:20:29.470992	jzte1Qer	image.jpg	image/jpeg	695637	2015-11-01 15:20:28.139566	\N	
614	Getting ready for real Halloween! 	I'm getting ready for real Halloween! Got to get clean so I can go trick or treating tomorrow! 	\N	2015-11-01 15:21:38.109321	2015-11-01 15:21:38.109321	L2DcglLe	image.jpg	image/jpeg	536420	2015-11-01 15:21:35.524735	\N	
615	Halloween 2015! 	We went trick or treating in the Venice canals with Isabelle and Miles. I had so much fun and got so much candy! My favorites were the kit kats! I got to stay up past my bed time and hand out candy once we got home! 	\N	2015-11-01 15:23:10.385658	2015-11-01 15:23:10.385658	_Skvt4AK	image.jpg	image/jpeg	965563	2015-11-01 15:23:09.237397	\N	
\.


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jeffdoan
--

SELECT pg_catalog.setval('posts_id_seq', 618, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: jeffdoan
--

COPY schema_migrations (version) FROM stdin;
20160130190936
20160130191338
20160130191501
20130518202053
20130518202511
20130518202835
20130519004423
20130521192849
20160130220029
\.


--
-- Name: posts_pkey; Type: CONSTRAINT; Schema: public; Owner: jeffdoan
--

ALTER TABLE ONLY posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: jeffdoan
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


--
-- Name: public; Type: ACL; Schema: -; Owner: jeffdoan
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM jeffdoan;
GRANT ALL ON SCHEMA public TO jeffdoan;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

