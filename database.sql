--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_group (id, name) FROM stdin;
1	Moderators
2	Editors
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_group_id_seq', 2, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	wagtailcore	page
2	wagtailimages	image
3	home	homepage
4	wagtailadmin	admin
5	wagtaildocs	document
6	admin	logentry
7	auth	permission
8	auth	group
9	contenttypes	contenttype
10	sessions	session
11	taggit	tag
12	taggit	taggeditem
13	home	course
14	home	professor
15	home	adjunctprofessor
16	home	academicprograms
17	home	aboutpage
18	home	presidentpage
19	home	chairmanpage
20	home	missionpage
21	home	faithpage
22	home	staffpage
23	home	academicpage
24	home	academicprogrampage
25	home	admissionpage
26	home	formfield
27	home	contactpage
28	home	facultypage
29	wagtailcore	site
30	wagtailcore	pagerevision
31	wagtailcore	grouppagepermission
32	wagtailcore	pageviewrestriction
33	wagtailsearch	query
34	wagtailsearch	querydailyhits
35	wagtailsearch	editorspick
36	wagtailimages	filter
37	wagtailimages	rendition
38	wagtailusers	userprofile
39	wagtailembeds	embed
40	wagtailredirects	redirect
41	wagtailforms	formsubmission
42	easy_thumbnails	source
43	easy_thumbnails	thumbnail
44	easy_thumbnails	thumbnaildimensions
45	profiles	profile
46	customuser	user
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add image	2	add_image
2	Can change image	2	change_image
3	Can delete image	2	delete_image
4	Can access Wagtail admin	4	access_admin
5	Can add document	5	add_document
6	Can change document	5	change_document
7	Can delete document	5	delete_document
8	Can add log entry	6	add_logentry
9	Can change log entry	6	change_logentry
10	Can delete log entry	6	delete_logentry
11	Can add permission	7	add_permission
12	Can change permission	7	change_permission
13	Can delete permission	7	delete_permission
14	Can add group	8	add_group
15	Can change group	8	change_group
16	Can delete group	8	delete_group
17	Can add content type	9	add_contenttype
18	Can change content type	9	change_contenttype
19	Can delete content type	9	delete_contenttype
20	Can add session	10	add_session
21	Can change session	10	change_session
22	Can delete session	10	delete_session
23	Can add Tag	11	add_tag
24	Can change Tag	11	change_tag
25	Can delete Tag	11	delete_tag
26	Can add Tagged Item	12	add_taggeditem
27	Can change Tagged Item	12	change_taggeditem
28	Can delete Tagged Item	12	delete_taggeditem
29	Can add course	13	add_course
30	Can change course	13	change_course
31	Can delete course	13	delete_course
32	Can add professor	14	add_professor
33	Can change professor	14	change_professor
34	Can delete professor	14	delete_professor
35	Can add adjunct professor	15	add_adjunctprofessor
36	Can change adjunct professor	15	change_adjunctprofessor
37	Can delete adjunct professor	15	delete_adjunctprofessor
38	Can add academic programs	16	add_academicprograms
39	Can change academic programs	16	change_academicprograms
40	Can delete academic programs	16	delete_academicprograms
41	Can add home page	3	add_homepage
42	Can change home page	3	change_homepage
43	Can delete home page	3	delete_homepage
44	Can add about page	17	add_aboutpage
45	Can change about page	17	change_aboutpage
46	Can delete about page	17	delete_aboutpage
47	Can add president page	18	add_presidentpage
48	Can change president page	18	change_presidentpage
49	Can delete president page	18	delete_presidentpage
50	Can add chairman page	19	add_chairmanpage
51	Can change chairman page	19	change_chairmanpage
52	Can delete chairman page	19	delete_chairmanpage
53	Can add mission page	20	add_missionpage
54	Can change mission page	20	change_missionpage
55	Can delete mission page	20	delete_missionpage
56	Can add faith page	21	add_faithpage
57	Can change faith page	21	change_faithpage
58	Can delete faith page	21	delete_faithpage
59	Can add staff page	22	add_staffpage
60	Can change staff page	22	change_staffpage
61	Can delete staff page	22	delete_staffpage
62	Can add academic page	23	add_academicpage
63	Can change academic page	23	change_academicpage
64	Can delete academic page	23	delete_academicpage
65	Can add academic program page	24	add_academicprogrampage
66	Can change academic program page	24	change_academicprogrampage
67	Can delete academic program page	24	delete_academicprogrampage
68	Can add admission page	25	add_admissionpage
69	Can change admission page	25	change_admissionpage
70	Can delete admission page	25	delete_admissionpage
71	Can add form field	26	add_formfield
72	Can change form field	26	change_formfield
73	Can delete form field	26	delete_formfield
74	Can add contact page	27	add_contactpage
75	Can change contact page	27	change_contactpage
76	Can delete contact page	27	delete_contactpage
77	Can add faculty page	28	add_facultypage
78	Can change faculty page	28	change_facultypage
79	Can delete faculty page	28	delete_facultypage
80	Can add Site	29	add_site
81	Can change Site	29	change_site
82	Can delete Site	29	delete_site
83	Can add page	1	add_page
84	Can change page	1	change_page
85	Can delete page	1	delete_page
86	Can add Page Revision	30	add_pagerevision
87	Can change Page Revision	30	change_pagerevision
88	Can delete Page Revision	30	delete_pagerevision
89	Can add Group Page Permission	31	add_grouppagepermission
90	Can change Group Page Permission	31	change_grouppagepermission
91	Can delete Group Page Permission	31	delete_grouppagepermission
92	Can add Page View Restriction	32	add_pageviewrestriction
93	Can change Page View Restriction	32	change_pageviewrestriction
94	Can delete Page View Restriction	32	delete_pageviewrestriction
95	Can add query	33	add_query
96	Can change query	33	change_query
97	Can delete query	33	delete_query
98	Can add Query Daily Hits	34	add_querydailyhits
99	Can change Query Daily Hits	34	change_querydailyhits
100	Can delete Query Daily Hits	34	delete_querydailyhits
101	Can add Editor's Pick	35	add_editorspick
102	Can change Editor's Pick	35	change_editorspick
103	Can delete Editor's Pick	35	delete_editorspick
104	Can add filter	36	add_filter
105	Can change filter	36	change_filter
106	Can delete filter	36	delete_filter
107	Can add rendition	37	add_rendition
108	Can change rendition	37	change_rendition
109	Can delete rendition	37	delete_rendition
110	Can add User Profile	38	add_userprofile
111	Can change User Profile	38	change_userprofile
112	Can delete User Profile	38	delete_userprofile
113	Can add Embed	39	add_embed
114	Can change Embed	39	change_embed
115	Can delete Embed	39	delete_embed
116	Can add Redirect	40	add_redirect
117	Can change Redirect	40	change_redirect
118	Can delete Redirect	40	delete_redirect
119	Can add Form Submission	41	add_formsubmission
120	Can change Form Submission	41	change_formsubmission
121	Can delete Form Submission	41	delete_formsubmission
122	Can add source	42	add_source
123	Can change source	42	change_source
124	Can delete source	42	delete_source
125	Can add thumbnail	43	add_thumbnail
126	Can change thumbnail	43	change_thumbnail
127	Can delete thumbnail	43	delete_thumbnail
128	Can add thumbnail dimensions	44	add_thumbnaildimensions
129	Can change thumbnail dimensions	44	change_thumbnaildimensions
130	Can delete thumbnail dimensions	44	delete_thumbnaildimensions
131	Can add profile	45	add_profile
132	Can change profile	45	change_profile
133	Can delete profile	45	delete_profile
134	Can add user	46	add_user
135	Can change user	46	change_user
136	Can delete user	46	delete_user
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	2	1
5	2	2
6	2	3
7	1	4
8	2	4
9	1	5
10	1	6
11	1	7
12	2	5
13	2	6
14	2	7
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 14, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('auth_permission_id_seq', 136, true);


--
-- Data for Name: customuser_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY customuser_user (id, password, last_login, is_superuser, email, is_staff, is_active, date_joined, last_name, first_name) FROM stdin;
1	pbkdf2_sha256$20000$luSWC5bi3pMR$CT2rupYonNZn7N81Xk+i8NB2oGzBdblpr7GCkZW+CS0=	2015-08-10 19:49:45.910943-07	t	taedori@outlook.com	t	t	2015-08-10 19:49:39.078792-07		
\.


--
-- Data for Name: customuser_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY customuser_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: customuser_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('customuser_user_groups_id_seq', 1, false);


--
-- Name: customuser_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('customuser_user_id_seq', 1, true);


--
-- Data for Name: customuser_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY customuser_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: customuser_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('customuser_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_content_type_id_seq', 46, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-08-10 19:48:23.738797-07
2	contenttypes	0002_remove_content_type_name	2015-08-10 19:48:23.764318-07
3	auth	0001_initial	2015-08-10 19:48:23.868094-07
4	auth	0002_alter_permission_name_max_length	2015-08-10 19:48:23.88786-07
5	auth	0003_alter_user_email_max_length	2015-08-10 19:48:23.910115-07
6	auth	0004_alter_user_username_opts	2015-08-10 19:48:23.932762-07
7	auth	0005_alter_user_last_login_null	2015-08-10 19:48:23.953274-07
8	auth	0006_require_contenttypes_0002	2015-08-10 19:48:23.958652-07
9	customuser	0001_initial	2015-08-10 19:48:24.072718-07
10	admin	0001_initial	2015-08-10 19:48:24.137522-07
11	easy_thumbnails	0001_initial	2015-08-10 19:48:24.293928-07
12	easy_thumbnails	0002_thumbnaildimensions	2015-08-10 19:48:24.340768-07
13	taggit	0001_initial	2015-08-10 19:48:24.446637-07
14	wagtailimages	0001_initial	2015-08-10 19:48:24.621587-07
15	wagtailcore	0001_initial	2015-08-10 19:48:25.357307-07
16	wagtailcore	0002_initial_data	2015-08-10 19:48:25.362919-07
17	wagtailcore	0003_add_uniqueness_constraint_on_group_page_permission	2015-08-10 19:48:25.368311-07
18	wagtailcore	0004_page_locked	2015-08-10 19:48:25.373651-07
19	wagtailcore	0005_add_page_lock_permission_to_moderators	2015-08-10 19:48:25.379374-07
20	wagtailcore	0006_add_lock_page_permission	2015-08-10 19:48:25.388325-07
21	wagtailcore	0007_page_latest_revision_created_at	2015-08-10 19:48:25.393302-07
22	wagtailcore	0008_populate_latest_revision_created_at	2015-08-10 19:48:25.398758-07
23	wagtailcore	0009_remove_auto_now_add_from_pagerevision_created_at	2015-08-10 19:48:25.404206-07
24	wagtailcore	0010_change_page_owner_to_null_on_delete	2015-08-10 19:48:25.409541-07
25	wagtailcore	0011_page_first_published_at	2015-08-10 19:48:25.414891-07
26	wagtailcore	0012_extend_page_slug_field	2015-08-10 19:48:25.420485-07
27	wagtailcore	0013_update_golive_expire_help_text	2015-08-10 19:48:25.432307-07
28	wagtailcore	0014_add_verbose_name	2015-08-10 19:48:25.437996-07
29	wagtailcore	0015_add_more_verbose_names	2015-08-10 19:48:25.443476-07
30	wagtailcore	0016_change_page_url_path_to_text_field	2015-08-10 19:48:25.448592-07
31	wagtailimages	0002_initial_data	2015-08-10 19:48:25.49375-07
32	wagtailimages	0003_fix_focal_point_fields	2015-08-10 19:48:25.634864-07
33	wagtailimages	0004_make_focal_point_key_not_nullable	2015-08-10 19:48:25.693849-07
34	wagtailimages	0005_make_filter_spec_unique	2015-08-10 19:48:25.758467-07
35	wagtailimages	0006_add_verbose_names	2015-08-10 19:48:25.943464-07
36	home	0001_initial	2015-08-10 19:48:26.008292-07
37	home	0002_create_homepage	2015-08-10 19:48:26.051952-07
38	home	0003_auto_20150810_1948	2015-08-10 19:48:27.992108-07
39	profiles	0001_initial	2015-08-10 19:48:28.086119-07
40	sessions	0001_initial	2015-08-10 19:48:28.153955-07
41	wagtailadmin	0001_create_admin_access_permissions	2015-08-10 19:48:28.18473-07
42	wagtaildocs	0001_initial	2015-08-10 19:48:28.29807-07
43	wagtaildocs	0002_initial_data	2015-08-10 19:48:28.34336-07
44	wagtaildocs	0003_add_verbose_names	2015-08-10 19:48:28.592747-07
45	wagtailembeds	0001_initial	2015-08-10 19:48:28.650006-07
46	wagtailembeds	0002_add_verbose_names	2015-08-10 19:48:28.673632-07
47	wagtailforms	0001_initial	2015-08-10 19:48:28.789559-07
48	wagtailforms	0002_add_verbose_names	2015-08-10 19:48:28.947761-07
49	wagtailredirects	0001_initial	2015-08-10 19:48:29.255066-07
50	wagtailredirects	0002_add_verbose_names	2015-08-10 19:48:29.455324-07
51	wagtailsearch	0001_initial	2015-08-10 19:48:29.779364-07
52	wagtailsearch	0002_add_verbose_names	2015-08-10 19:48:30.139083-07
53	wagtailusers	0001_initial	2015-08-10 19:48:30.259871-07
54	wagtailusers	0002_add_verbose_name_on_userprofile	2015-08-10 19:48:30.514165-07
55	wagtailusers	0003_add_verbose_names	2015-08-10 19:48:30.607201-07
56	wagtailcore	0001_squashed_0016_change_page_url_path_to_text_field	2015-08-10 19:48:30.615771-07
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('django_migrations_id_seq', 56, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
9lszwua5921xuc0u0dagzy3j8lucbril	M2MyMmQ0MjAyZjUwYjZjYzQxYzU0YzI3ZWZiZTdlZGM1MTg2ODU5Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjBlNWRiMTI2MTFjOWU1MWEzODBjODYzNjAyY2NjYjI3NTUwZGNhYSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2015-08-24 19:49:45.918854-07
\.


--
-- Data for Name: easy_thumbnails_source; Type: TABLE DATA; Schema: public; Owner: -
--

COPY easy_thumbnails_source (id, storage_hash, name, modified) FROM stdin;
\.


--
-- Name: easy_thumbnails_source_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('easy_thumbnails_source_id_seq', 1, false);


--
-- Data for Name: easy_thumbnails_thumbnail; Type: TABLE DATA; Schema: public; Owner: -
--

COPY easy_thumbnails_thumbnail (id, storage_hash, name, modified, source_id) FROM stdin;
\.


--
-- Name: easy_thumbnails_thumbnail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('easy_thumbnails_thumbnail_id_seq', 1, false);


--
-- Data for Name: easy_thumbnails_thumbnaildimensions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY easy_thumbnails_thumbnaildimensions (id, thumbnail_id, width, height) FROM stdin;
\.


--
-- Name: easy_thumbnails_thumbnaildimensions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('easy_thumbnails_thumbnaildimensions_id_seq', 1, false);


--
-- Data for Name: wagtailcore_page; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailcore_page (id, path, depth, numchild, title, slug, live, has_unpublished_changes, url_path, seo_title, show_in_menus, search_description, go_live_at, expire_at, expired, content_type_id, owner_id, locked, latest_revision_created_at, first_published_at) FROM stdin;
1	0001	1	1	Root	root	t	f	/		f		\N	\N	f	1	\N	f	\N	\N
3	00010001	2	1	Homepage	home	t	f	/home/		t		\N	\N	f	3	\N	f	2015-08-10 19:50:50.92363-07	2015-08-10 19:50:51.003812-07
6	0001000100010002	4	0	Chairman’s Welcome	chairmans	t	f	/home/about/chairmans/		t		\N	\N	f	19	1	f	2015-08-10 21:20:27.613886-07	2015-08-10 21:20:14.350278-07
5	0001000100010001	4	0	President's Welcome	presidents	t	f	/home/about/presidents/		t		\N	\N	f	18	1	f	2015-08-10 21:20:42.501159-07	2015-08-10 21:18:20.471712-07
7	0001000100010003	4	0	Statement of Mission	mission	t	f	/home/about/mission/		t		\N	\N	f	20	1	f	2015-08-11 09:00:23.64559-07	2015-08-11 09:00:10.618434-07
4	000100010001	3	4	About	about	t	f	/home/about/		t		\N	\N	f	17	1	f	2015-08-10 20:54:25.952564-07	2015-08-10 19:53:09.329053-07
8	0001000100010004	4	0	Statement of Faith	faith	t	f	/home/about/faith/		t		\N	\N	f	21	1	f	2015-08-11 09:15:21.010913-07	2015-08-11 09:07:08.402612-07
\.


--
-- Data for Name: wagtailimages_image; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailimages_image (id, title, file, width, height, created_at, focal_point_x, focal_point_y, focal_point_width, focal_point_height, uploaded_by_user_id) FROM stdin;
1	about-tyndale-image	original_images/William-Tyndale_620_osLvvgM.jpg	749	300	2015-08-10 19:52:48.863491-07	\N	\N	\N	\N	1
2	frank	original_images/Frank_nvPgmuJ.png	342	480	2015-08-10 21:18:03.215028-07	\N	\N	\N	\N	1
3	daniel	original_images/Daniel-342x480_SesDSvc.png	342	478	2015-08-10 21:19:53.507672-07	\N	\N	\N	\N	1
4	mission-image	original_images/mission-banner2_hK0JCxj.png	751	297	2015-08-11 08:59:57.097732-07	\N	\N	\N	\N	1
5	faith-image	original_images/faith-banner2_eCC4SEQ.png	751	302	2015-08-11 09:06:59.354533-07	\N	\N	\N	\N	1
\.


--
-- Data for Name: home_aboutpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_aboutpage (page_ptr_id, subsection_title, subsection_subtitle, body, main_image_id) FROM stdin;
4	About	About William Tyndale and YALA Mission	<p>  <strong>William Tyndale</strong> (/ˈtɪndəl/;[1] sometimes spelled Tynsdale, Tindall, Tindill, Tyndall; c. 1494–1536) was an English scholar who became a leading figure in Protestant reform in the years leading up to his execution. He is well known for his translation of the Bible into English. He was influenced by the work of Desiderius Erasmus, who made the Greek New Testament available in Europe, and by Martin Luther.[2] While a number of partial translations had been made from the seventh century onward, the spread of Wycliffe's Bible resulted in a death sentence for any unlicensed possession of Scripture in English—even though translations in all other major European languages had been accomplished and made available.[3][4] Tyndale's translation was the first English Bible to draw directly from Hebrew and Greek texts, the first English one to take advantage of the printing press, and first of the new English Bibles of the Reformation. It was taken to be a direct challenge to the hegemony of both the Roman Catholic Church and the laws of England to maintain the church's position. In 1530, Tyndale also wrote The Practyse of Prelates, opposing Henry VIII's divorce from Catherine of Aragon on the grounds that it contravened Scripture.Reuchlin's Hebrew grammar was published in 1506. Tyndale worked in an age in which Greek was available to the European scholarly community for the first time in centuries. Erasmus compiled and edited Greek Scriptures into the Textus Receptus—ironically, to improve upon the Latin Vulgate—following the Renaissance-fueling Fall of Constantinople in 1453 and the dispersion of Greek-speaking intellectuals and texts into a Europe which previously had access to none. When a copy of The Obedience of a Christian Man fell into the hands of Henry VIII, the king found the rationale to break the Church in England from the Roman Catholic Church in 1534.[5][6][page needed]In 1535, Tyndale was arrested and jailed in the castle of Vilvoorde (Filford) outside Brussels for over a year. In 1536 he was convicted of heresy and executed by strangulation, after which his body was burnt at the stake. His dying prayer that the King of England's eyes would be opened seemed to find its fulfillment just two years later with Henry's authorization of The Great Bible for the Church of England—which was largely Tyndale's own work. Hence, the Tyndale Bible, as it was known, continued to play a key role in spreading Reformation ideas across the English-speaking world and, eventually, to the British Empire.In 1611, the 54 scholars who produced the King James Bible drew significantly from Tyndale, as well as from translations that descended from his. One estimate suggests the New Testament in the King James Version is 83% Tyndale's and the Old Testament 76%.[7] With his translation of the Bible the first to be printed in English, and a model for subsequent English translations, in 2002, Tyndale was placed at number 26 in the BBC's poll of the 100 Greatest Britons.[8][9]<br/><br/>-from Wikipedia<br/></p>	1
\.


--
-- Data for Name: home_academicpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_academicpage (page_ptr_id, subsection_title, subsection_subtitle, body, main_image_id) FROM stdin;
\.


--
-- Data for Name: home_academicprogrampage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_academicprogrampage (page_ptr_id, subsection_title, subsection_subtitle) FROM stdin;
\.


--
-- Data for Name: home_academicprograms; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_academicprograms (id, program_name, program_description) FROM stdin;
\.


--
-- Name: home_academicprograms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('home_academicprograms_id_seq', 1, false);


--
-- Data for Name: home_adjunctprofessor; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_adjunctprofessor (id, professor_name, professor_spec, professor_course, professor_image_id) FROM stdin;
\.


--
-- Name: home_adjunctprofessor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('home_adjunctprofessor_id_seq', 1, false);


--
-- Data for Name: home_admissionpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_admissionpage (page_ptr_id, subsection_title, subsection_subtitle, body, main_image_id) FROM stdin;
\.


--
-- Data for Name: home_chairmanpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_chairmanpage (page_ptr_id, subsection_title, subsection_subtitle, chairman_name, chairman_title, body, chairman_image_id) FROM stdin;
6	Chairman’s Welcome	Welcome message from TIU's Chairman	Daniel C. Ji, D.R.E., Th.D.	Chairman	<p>Dear Friends,<br/>    Tyndale International University was established based upon Reformed Calvinism and faith based on conservative teaching. We are commissioned to foster and produce faithful and truthful leaders in our societies and churches. In this diversified generation, we can't speak enough of how crucial and significant education is.<br/>    Education is a tool/instrument that helps us to realize, develop, and improve our individual talents that God has bestowed upon us. And the ultimate goal for the education is to become somebody who is needed and important. Additionally, we all have a privilege and right to be educated.<br/>    Tyndale International University exists for that particular purpose and aim. This is an education that advances and moves forward from Christian mind to conservative Reformed Calvinism grounded on theology and faith derived from the Scriptures. I, this nation, and this generation will labor and toil as the lighthouse that shines the light in this world and as the salt that protects the world from deteriorating and decaying.<br/>    Tyndale International University will eagerly assist and contribute to those who passionately longing for education but are unable to pursue their goals due to their jobs and/or environmental situations they are in. We plan to have night classes and other ways/methods to help them accomplish their dreams.<br/>    ''Do your best to present yourself to God as one approved, a worker who has no need to be ashamed, rightly handling  the word of truth.'' (2 Tim. 2:15).<br/><br/>Sincerely,<br/></p>	3
\.


--
-- Data for Name: home_contactpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_contactpage (page_ptr_id, to_address, from_address, subject, contact_header, contact_subheader, thank_you_text) FROM stdin;
\.


--
-- Data for Name: home_course; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_course (id, course_name) FROM stdin;
\.


--
-- Name: home_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('home_course_id_seq', 1, false);


--
-- Data for Name: home_facultypage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_facultypage (page_ptr_id, subsection_title, subsection_subtitle, tab_title_1, tab_title_2) FROM stdin;
\.


--
-- Data for Name: home_faithpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_faithpage (page_ptr_id, subsection_title, subsection_subtitle, body, main_image_id) FROM stdin;
8	Statement of Faith	Statement of Faith	<p>At Tyndale International University, we make a solemn declaration of faith on the basis of the Scriptures as follows:<br/><br/>    The Bible is the inerrant and divinely inspired word of God. There is one God, eternally existing and manifesting Himself to us in three Persons; the Father, the Son and the Holy Spirit.  God, by His Word and for His glory, freely created the world in six days from nothing and created man, male and female, in His own image, to have fellowship with Him. The existence of the creation is not explainable apart from the roles of God as the sovereign Creator and Sustainer of the entire natural realm. Concepts such as theistic or threshold evolution do not adequately explain the wonder of God’s creation.<br/>    Tempted by Satan, the whole human race fell in the fall of the first Adam. All men, until they accept the Lord Jesus as their personal Savior, are lost, darkened in their understanding, alienated from the life of God through the ignorance that is in them, hardened in heart, are are morally and spiritually dead through their trespasses and sins.  They cannot see, nor enter the kingdom of God until they are born again of the Holy Spirit.  The only Mediator between God and humankind is Jesus Christ our Lord, the eternal Son of God. Jesus Christ revealed His divine love and upheld divine justice through His death on the cross, in our place, revealing our guilt and reconciling us to God. All have sinned through Adam, but the gift of God is eternal life through Jesus Christ our Lord. Christ redeemed us from sin through His death on the cross. On the third day He rose bodily from the grave, victorious over death and power over darkness. He ascended to heaven where, at God's right hand, He intercedes for His people and rules as Lord overall.<br/>    The true Church is composed of all such persons who through saving faith in Jesus Christ have been regenerated by the Holy Spirit and are united together in the body of Christ. The Holy Spirit is a Person, and is possessed of all the distinctively divine attributes. He is God.  God's redemptive purpose will be consummated by the return of Christ to raise the dead, to judge all people according to the deeds done in the body and to establish His glorious kingdom. All those who receive Jesus Christ as their Savior and their Lord, and who confess Him as such, become children of God and receive eternal life, and become heirs of God. At death their spirits depart to be with Christ in conscious blessedness, and at the Second Coming of Christ their bodies shall be raised and transformed into glorious bodies. They shall live and reign with Him forever.<br/>    The wicked shall be separated from God's presence. All those who persistently reject Jesus Christ in the present life shall be raised from the dead and throughout eternity exist in the state of conscious, endless torment and anguish in hell. Satan, an evil being of cunningness, shall ultimately be cast into the lake of fire and brimstone and shall be tormented day and night forever.  We believe in Westminster Confession of Faith and Heidelberg Catechismas being faithful and truthful to the teachings of the Bible, and as best representing the conventional Reformed faith.<br/>    We denunciate liberalism and humanism, however, we believe that the faith rooted and centered on conservative faith that is derived from Calvinism’s reformed faith and faith centered on the Bible will revive today’s churches and will lead believers to their spiritual growth.<br/></p>	5
\.


--
-- Data for Name: home_formfield; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_formfield (id, sort_order, label, field_type, required, choices, default_value, help_text, page_id) FROM stdin;
\.


--
-- Name: home_formfield_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('home_formfield_id_seq', 1, false);


--
-- Data for Name: home_homepage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_homepage (page_ptr_id, main_header, main_subheader, slider1_header1, slider1_header2, slider1_subheader1, slider2_header1, slider2_subheader1) FROM stdin;
3	our mission	Preparing students to serve Christ and his church through biblical, experiential, and practical ministry	Welcome to	Tyndale international university	The reformed theology based seminary	DO YOUR BEST TO PRESENT YOURSELF TO GOD AS ONE APPROVED, A WORKER WHO HAS NO NEED TO BE ASHAMED, RIGHTLY HANDLING THE WORD OF TRUTH	2 Timothy 2 : 15
\.


--
-- Data for Name: home_missionpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_missionpage (page_ptr_id, subsection_title, subsection_subtitle, body, main_image_id) FROM stdin;
7	Statement of Mission	Statement of Mission	<p>Tyndale International University seeks to provide each student with the opportunity to mature in his experiential understanding of the substance of Christ's character and image while developing his cognitive and effective potential. It is to be a University where understanding and knowledge are generated and disseminated together with essential principles of their practical application in a contemporary world for lifelong ministry and the development of a foundation for lifelong learning and training.    Tyndale International University seeks to impart to each student a high level of competency in his ability to study and present the Word of God to others. It is our goal to produce individuals who are able to bring enlightened solutions to the problems, which are faced by both a church and the secular world.<br/><br/>    [Purpose and Objectives]<br/>1. Ministers with a Christian worldview point who are willing and capable of effective communication.<br/>2. Ministers who can demonstrate a solid background of Biblical knowledge and Christian theological background.<br/>3. Ministers who understand the nature of human life and its spiritual needs.<br/>4. Ministers who can develop and implement ministries to families and other groups within the church setting.<br/>5. Reliable family ministers, with expertise in marriage and family matters, which have concrete faith in God.<br/>6. Professional ministers who can efficiently cope with life crises within a church and/or ministry setting.   <br/><br/>     *Tyndale International University admits students from other countries; however, visa services are not provided and the University does not vouch for student status, or associated charges.<br/>     Tyndale International University is also unique in that it seeks to allow a broad range of theological spectrums within a reformed tradition. Students are free to choose elective courses that are in keeping with their personal viewpoint and expression.<br/></p>	4
\.


--
-- Data for Name: home_presidentpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_presidentpage (page_ptr_id, subsection_title, subsection_subtitle, president_name, president_title, body, president_image_id) FROM stdin;
5	President's Welcome	Welcome message from TIU's President	Frank J. Smith, Ph.D., D.D.	President	<p>Dear Student:<br/>    As President of Tyndale International University, I greet you in the name of the Lord Jesus Christ. He is King of kings and Lord of lords, and in Him are found all the treasures of God. The Apostle Paul reminds us He must have the preeminence, and by Him all things consist. These truths have profound implications for education, since we know from the book of Proverbs that the fear of the Lord is the beginning of both knowledge and wisdom.<br/>    At Tyndale International University, we seek to bring all thoughts captive to the Lordship of Christ. This educational approach is what is referred to as a Christian world-and-life view. Not every institution that identifies itself as Christian understands this perspective. What you will discover at Tyndale International University therefore is rare--an institution of higher learning that starts with the wisdom of God as recorded in His Word, the Bible, and which builds on that infallible foundation.<br/>    We are far from perfect, of course, in our understanding and in our application of that knowledge. Nevertheless, we are sincere in our endeavor. And we invite you to join us in this great enterprise.<br/><br/>Sincerely,<br/></p>	2
\.


--
-- Data for Name: home_professor; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_professor (id, professor_name, professor_spec, course_id, professor_image_id) FROM stdin;
\.


--
-- Name: home_professor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('home_professor_id_seq', 1, false);


--
-- Data for Name: home_staffpage; Type: TABLE DATA; Schema: public; Owner: -
--

COPY home_staffpage (page_ptr_id, subsection_title, subsection_subtitle, first_column_header, first_column_name, first_column_position, first_column_spec, second_column_header, second_column_name, second_column_position, second_column_spec, third_column_header, third_column_name, third_column_position, fourth_column_header, fourth_column_name, fourth_column_position, fifth_column_header, fifth_column_name, fifth_column_position, fifth_column_image_id, first_column_image_id, fourth_column_image_id, second_column_image_id, third_column_image_id) FROM stdin;
\.


--
-- Data for Name: profiles_profile; Type: TABLE DATA; Schema: public; Owner: -
--

COPY profiles_profile (user_id, slug, picture, bio, email_verified) FROM stdin;
1	5e63dee9-2795-467d-a10a-476171a3275e		\N	f
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: -
--

COPY taggit_tag (id, name, slug) FROM stdin;
\.


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('taggit_tag_id_seq', 1, false);


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: -
--

COPY taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
\.


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('taggit_taggeditem_id_seq', 1, false);


--
-- Data for Name: wagtailcore_grouppagepermission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailcore_grouppagepermission (id, permission_type, group_id, page_id) FROM stdin;
1	add	1	1
2	edit	1	1
3	publish	1	1
4	add	2	1
5	edit	2	1
6	lock	1	1
\.


--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailcore_grouppagepermission_id_seq', 6, true);


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailcore_page_id_seq', 8, true);


--
-- Data for Name: wagtailcore_pagerevision; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailcore_pagerevision (id, submitted_for_moderation, created_at, content_json, approved_go_live_at, page_id, user_id) FROM stdin;
1	f	2015-08-10 19:50:50.92363-07	{"first_published_at": null, "slider1_subheader1": "The reformed theology based seminary", "slider2_subheader1": "2 Timothy 2 : 15", "locked": false, "search_description": "", "title": "Homepage", "go_live_at": null, "main_header": "our mission", "seo_title": "", "url_path": "/home/", "numchild": 0, "slider1_header2": "Tyndale international university", "owner": null, "pk": 3, "content_type": 3, "show_in_menus": true, "depth": 2, "has_unpublished_changes": false, "live": true, "main_subheader": "Preparing students to serve Christ and his church through biblical, experiential, and practical ministry", "expired": false, "expire_at": null, "slider2_header1": "DO YOUR BEST TO PRESENT YOURSELF TO GOD AS ONE APPROVED, A WORKER WHO HAS NO NEED TO BE ASHAMED, RIGHTLY HANDLING THE WORD OF TRUTH", "slider1_header1": "Welcome to", "path": "00010001", "slug": "home", "latest_revision_created_at": null}	\N	3	1
2	f	2015-08-10 19:53:09.255121-07	{"first_published_at": null, "body": "<p>\\u00a0\\u00a0<strong>William Tyndale</strong>\\u00a0(/\\u02c8t\\u026and\\u0259l/;[1]\\u00a0sometimes spelled\\u00a0Tynsdale,\\u00a0Tindall,\\u00a0Tindill,\\u00a0Tyndall; c. 1494\\u20131536) was an English scholar who became a leading figure in Protestant reform in the years leading up to his execution. He is well known for his translation of the\\u00a0Bible\\u00a0into\\u00a0English. He was influenced by the work of\\u00a0Desiderius Erasmus, who made the\\u00a0Greek\\u00a0New Testament\\u00a0available in Europe, and by\\u00a0Martin Luther.[2]\\u00a0While a\\u00a0number of partial translations\\u00a0had been made from the seventh century onward, the spread of\\u00a0Wycliffe's Bible\\u00a0resulted in a death sentence for any unlicensed possession of Scripture in English\\u2014even though translations in all other major European languages had been accomplished and made available.[3][4]\\u00a0Tyndale's translation was the first English Bible to draw directly from\\u00a0Hebrew\\u00a0and\\u00a0Greek\\u00a0texts, the first English one to take advantage of the\\u00a0printing press, and first of the new English Bibles of the Reformation. It was taken to be a direct challenge to the hegemony of both the Roman Catholic Church and the laws of\\u00a0England\\u00a0to maintain the church's position. In 1530, Tyndale also wrote\\u00a0The Practyse of Prelates, opposing\\u00a0Henry VIII's divorce from\\u00a0Catherine of Aragon\\u00a0on the grounds that it contravened Scripture.Reuchlin's Hebrew grammar was published in 1506. Tyndale worked in an age in which Greek was available to the European scholarly community for the first time in centuries. Erasmus compiled and edited Greek Scriptures into the\\u00a0Textus Receptus\\u2014ironically, to improve upon the Latin\\u00a0Vulgate\\u2014following the\\u00a0Renaissance-fueling\\u00a0Fall of Constantinople\\u00a0in 1453 and the dispersion of Greek-speaking intellectuals and texts into a Europe which previously had access to none. When a copy of\\u00a0The Obedience of a Christian Man\\u00a0fell into the hands of\\u00a0Henry VIII, the king found the rationale to\\u00a0break the Church in England from the Roman Catholic Church\\u00a0in 1534.[5][6][page\\u00a0needed]In 1535, Tyndale was arrested and jailed in the castle of\\u00a0Vilvoorde\\u00a0(Filford) outside\\u00a0Brussels\\u00a0for over a year. In 1536 he was convicted of\\u00a0heresy\\u00a0and executed by strangulation, after which his body was burnt at the stake. His dying prayer that the King of England's eyes would be opened seemed to find its fulfillment just two years later with Henry's authorization of\\u00a0The Great Bible\\u00a0for the Church of England\\u2014which was largely Tyndale's own work. Hence, the\\u00a0Tyndale Bible, as it was known, continued to play a key role in spreading\\u00a0Reformation\\u00a0ideas across the English-speaking world and, eventually, to the\\u00a0British Empire.In 1611, the 54 scholars who produced the\\u00a0King James Bible\\u00a0drew significantly from Tyndale, as well as from translations that descended from his. One estimate suggests the\\u00a0New Testament\\u00a0in the King James Version is 83% Tyndale's and the\\u00a0Old Testament\\u00a076%.[7]\\u00a0With his translation of the Bible the first to be printed in English, and a model for subsequent English translations, in 2002, Tyndale was placed at number 26 in the BBC's poll of the\\u00a0100 Greatest Britons.[8][9]<br/><br/>-from Wikipedia<br/></p>", "locked": false, "search_description": "", "title": "About", "go_live_at": null, "subsection_title": "About", "seo_title": "", "url_path": "/home/about/", "numchild": 0, "owner": 1, "pk": 4, "content_type": 17, "show_in_menus": false, "depth": 3, "has_unpublished_changes": false, "live": true, "main_image": 1, "expired": false, "expire_at": null, "path": "000100010001", "subsection_subtitle": "About William Tyndale and YALA Mission", "slug": "about", "latest_revision_created_at": null}	\N	4	1
3	f	2015-08-10 20:54:25.952564-07	{"depth": 3, "seo_title": "", "owner": 1, "title": "About", "body": "<p>\\u00a0\\u00a0<strong>William Tyndale</strong>\\u00a0(/\\u02c8t\\u026and\\u0259l/;[1]\\u00a0sometimes spelled\\u00a0Tynsdale,\\u00a0Tindall,\\u00a0Tindill,\\u00a0Tyndall; c. 1494\\u20131536) was an English scholar who became a leading figure in Protestant reform in the years leading up to his execution. He is well known for his translation of the\\u00a0Bible\\u00a0into\\u00a0English. He was influenced by the work of\\u00a0Desiderius Erasmus, who made the\\u00a0Greek\\u00a0New Testament\\u00a0available in Europe, and by\\u00a0Martin Luther.[2]\\u00a0While a\\u00a0number of partial translations\\u00a0had been made from the seventh century onward, the spread of\\u00a0Wycliffe's Bible\\u00a0resulted in a death sentence for any unlicensed possession of Scripture in English\\u2014even though translations in all other major European languages had been accomplished and made available.[3][4]\\u00a0Tyndale's translation was the first English Bible to draw directly from\\u00a0Hebrew\\u00a0and\\u00a0Greek\\u00a0texts, the first English one to take advantage of the\\u00a0printing press, and first of the new English Bibles of the Reformation. It was taken to be a direct challenge to the hegemony of both the Roman Catholic Church and the laws of\\u00a0England\\u00a0to maintain the church's position. In 1530, Tyndale also wrote\\u00a0The Practyse of Prelates, opposing\\u00a0Henry VIII's divorce from\\u00a0Catherine of Aragon\\u00a0on the grounds that it contravened Scripture.Reuchlin's Hebrew grammar was published in 1506. Tyndale worked in an age in which Greek was available to the European scholarly community for the first time in centuries. Erasmus compiled and edited Greek Scriptures into the\\u00a0Textus Receptus\\u2014ironically, to improve upon the Latin\\u00a0Vulgate\\u2014following the\\u00a0Renaissance-fueling\\u00a0Fall of Constantinople\\u00a0in 1453 and the dispersion of Greek-speaking intellectuals and texts into a Europe which previously had access to none. When a copy of\\u00a0The Obedience of a Christian Man\\u00a0fell into the hands of\\u00a0Henry VIII, the king found the rationale to\\u00a0break the Church in England from the Roman Catholic Church\\u00a0in 1534.[5][6][page\\u00a0needed]In 1535, Tyndale was arrested and jailed in the castle of\\u00a0Vilvoorde\\u00a0(Filford) outside\\u00a0Brussels\\u00a0for over a year. In 1536 he was convicted of\\u00a0heresy\\u00a0and executed by strangulation, after which his body was burnt at the stake. His dying prayer that the King of England's eyes would be opened seemed to find its fulfillment just two years later with Henry's authorization of\\u00a0The Great Bible\\u00a0for the Church of England\\u2014which was largely Tyndale's own work. Hence, the\\u00a0Tyndale Bible, as it was known, continued to play a key role in spreading\\u00a0Reformation\\u00a0ideas across the English-speaking world and, eventually, to the\\u00a0British Empire.In 1611, the 54 scholars who produced the\\u00a0King James Bible\\u00a0drew significantly from Tyndale, as well as from translations that descended from his. One estimate suggests the\\u00a0New Testament\\u00a0in the King James Version is 83% Tyndale's and the\\u00a0Old Testament\\u00a076%.[7]\\u00a0With his translation of the Bible the first to be printed in English, and a model for subsequent English translations, in 2002, Tyndale was placed at number 26 in the BBC's poll of the\\u00a0100 Greatest Britons.[8][9]<br/><br/>-from Wikipedia<br/></p>", "url_path": "/home/about/", "has_unpublished_changes": false, "subsection_title": "About", "go_live_at": null, "slug": "about", "expired": false, "first_published_at": "2015-08-11T02:53:09.329Z", "expire_at": null, "live": true, "path": "000100010001", "content_type": 17, "pk": 4, "main_image": 1, "show_in_menus": true, "search_description": "", "subsection_subtitle": "About William Tyndale and YALA Mission", "numchild": 0, "latest_revision_created_at": "2015-08-11T02:53:09.255Z", "locked": false}	\N	4	1
5	f	2015-08-10 21:18:49.94397-07	{"depth": 4, "seo_title": "", "president_image": 2, "owner": 1, "president_title": "President", "title": "President", "body": "<p>Dear Student:<br/>\\u00a0\\u00a0\\u00a0 As President of Tyndale International University, I greet you in the name of the Lord Jesus Christ. He is King of kings and Lord of lords, and in Him are found all the treasures of God. The Apostle Paul reminds us He must have the preeminence, and by Him all things consist. These truths have profound implications for education, since we know from the book of Proverbs that the fear of the Lord is the beginning of both knowledge and wisdom.<br/>\\u00a0\\u00a0\\u00a0 At Tyndale International University, we seek to bring all thoughts captive to the Lordship of Christ. This educational approach is what is referred to as a Christian world-and-life view. Not every institution that identifies itself as Christian understands this perspective. What you will discover at Tyndale International University therefore is rare--an institution of higher learning that starts with the wisdom of God as recorded in His Word, the Bible, and which builds on that infallible foundation.<br/>\\u00a0\\u00a0\\u00a0 We are far from perfect, of course, in our understanding and in our application of that knowledge. Nevertheless, we are sincere in our endeavor. And we invite you to join us in this great enterprise.<br/><br/>Sincerely,<br/></p>", "url_path": "/home/about/president/", "has_unpublished_changes": false, "subsection_title": "President", "go_live_at": null, "slug": "president", "expired": false, "first_published_at": "2015-08-11T04:18:20.471Z", "expire_at": null, "live": true, "path": "0001000100010001", "content_type": 18, "pk": 5, "show_in_menus": true, "president_name": "Frank J. Smith, Ph.D., D.D.", "search_description": "", "subsection_subtitle": "Welcome message from TIU's Chairman", "numchild": 0, "latest_revision_created_at": "2015-08-11T04:18:20.410Z", "locked": false}	\N	5	1
4	f	2015-08-10 21:18:20.410974-07	{"depth": 4, "seo_title": "", "president_image": 2, "owner": 1, "president_title": "President", "title": "President", "body": "<p>Dear Student:<br/>\\u00a0\\u00a0\\u00a0 As President of Tyndale International University, I greet you in the name of the Lord Jesus Christ. He is King of kings and Lord of lords, and in Him are found all the treasures of God. The Apostle Paul reminds us He must have the preeminence, and by Him all things consist. These truths have profound implications for education, since we know from the book of Proverbs that the fear of the Lord is the beginning of both knowledge and wisdom.<br/>\\u00a0\\u00a0\\u00a0 At Tyndale International University, we seek to bring all thoughts captive to the Lordship of Christ. This educational approach is what is referred to as a Christian world-and-life view. Not every institution that identifies itself as Christian understands this perspective. What you will discover at Tyndale International University therefore is rare--an institution of higher learning that starts with the wisdom of God as recorded in His Word, the Bible, and which builds on that infallible foundation.<br/>\\u00a0\\u00a0\\u00a0 We are far from perfect, of course, in our understanding and in our application of that knowledge. Nevertheless, we are sincere in our endeavor. And we invite you to join us in this great enterprise.<br/><br/>Sincerely,<br/></p>", "url_path": "/home/about/president/", "has_unpublished_changes": false, "subsection_title": "President", "go_live_at": null, "slug": "president", "expired": false, "first_published_at": null, "expire_at": null, "live": true, "path": "0001000100010001", "content_type": 18, "pk": 5, "show_in_menus": false, "president_name": "Frank J. Smith, Ph.D., D.D.", "search_description": "", "subsection_subtitle": "Welcome message from TIU's Chairman", "numchild": 0, "latest_revision_created_at": null, "locked": false}	\N	5	1
6	f	2015-08-10 21:19:22.336234-07	{"depth": 4, "seo_title": "", "president_image": 2, "owner": 1, "president_title": "President", "title": "President's Welcome", "body": "<p>Dear Student:<br/>\\u00a0\\u00a0\\u00a0 As President of Tyndale International University, I greet you in the name of the Lord Jesus Christ. He is King of kings and Lord of lords, and in Him are found all the treasures of God. The Apostle Paul reminds us He must have the preeminence, and by Him all things consist. These truths have profound implications for education, since we know from the book of Proverbs that the fear of the Lord is the beginning of both knowledge and wisdom.<br/>\\u00a0\\u00a0\\u00a0 At Tyndale International University, we seek to bring all thoughts captive to the Lordship of Christ. This educational approach is what is referred to as a Christian world-and-life view. Not every institution that identifies itself as Christian understands this perspective. What you will discover at Tyndale International University therefore is rare--an institution of higher learning that starts with the wisdom of God as recorded in His Word, the Bible, and which builds on that infallible foundation.<br/>\\u00a0\\u00a0\\u00a0 We are far from perfect, of course, in our understanding and in our application of that knowledge. Nevertheless, we are sincere in our endeavor. And we invite you to join us in this great enterprise.<br/><br/>Sincerely,<br/></p>", "url_path": "/home/about/president/", "has_unpublished_changes": false, "subsection_title": "President's Welcome", "go_live_at": null, "slug": "presidents-welcome", "expired": false, "first_published_at": "2015-08-11T04:18:20.471Z", "expire_at": null, "live": true, "path": "0001000100010001", "content_type": 18, "pk": 5, "show_in_menus": true, "president_name": "Frank J. Smith, Ph.D., D.D.", "search_description": "", "subsection_subtitle": "Welcome message from TIU's Chairman", "numchild": 0, "latest_revision_created_at": "2015-08-11T04:18:49.943Z", "locked": false}	\N	5	1
7	f	2015-08-10 21:20:14.290907-07	{"depth": 4, "seo_title": "", "owner": 1, "title": "Chairman\\u2019s Welcome", "body": "<p>Dear Friends,<br/>\\u00a0\\u00a0\\u00a0 Tyndale International University was established based upon Reformed Calvinism and faith based on conservative teaching. We are commissioned to foster and produce faithful and truthful leaders in our societies and churches. In this diversified generation, we can't speak enough of how crucial and significant education is.<br/>\\u00a0\\u00a0\\u00a0 Education is a tool/instrument that helps us to realize, develop, and improve our individual talents that God has bestowed upon us. And the ultimate goal for the education is to become somebody who is needed and important. Additionally, we all have a privilege and right to be educated.<br/>\\u00a0\\u00a0\\u00a0 Tyndale International University exists for that particular purpose and aim. This is an education that advances and moves forward from Christian mind to conservative Reformed Calvinism grounded on theology and faith derived from the Scriptures. I, this nation, and this generation will labor and toil as the lighthouse that shines the light in this world and as the salt that protects the world from deteriorating and decaying.<br/>\\u00a0\\u00a0\\u00a0 Tyndale International University will eagerly assist and contribute to those who passionately longing for education but are unable to pursue their goals due to their jobs and/or environmental situations they are in. We plan to have night classes and other ways/methods to help them accomplish their dreams.<br/>\\u00a0\\u00a0\\u00a0 ''Do your best to present yourself to God as one approved, a worker who has no need to be ashamed, rightly handling\\u00a0 the word of truth.'' (2 Tim. 2:15).<br/><br/>Sincerely,<br/></p>", "url_path": "/home/about/chairmans-welcome/", "has_unpublished_changes": false, "subsection_title": "Chairman\\u2019s Welcome", "go_live_at": null, "slug": "chairmans-welcome", "expired": false, "first_published_at": null, "expire_at": null, "live": true, "path": "0001000100010002", "chairman_name": "Daniel C. Ji, D.R.E., Th.D.", "content_type": 19, "pk": 6, "chairman_title": "Chairman", "show_in_menus": false, "search_description": "", "subsection_subtitle": "Welcome message from TIU's Chairman", "chairman_image": 3, "numchild": 0, "latest_revision_created_at": null, "locked": false}	\N	6	1
8	f	2015-08-10 21:20:27.613886-07	{"depth": 4, "seo_title": "", "owner": 1, "title": "Chairman\\u2019s Welcome", "body": "<p>Dear Friends,<br/>\\u00a0\\u00a0\\u00a0 Tyndale International University was established based upon Reformed Calvinism and faith based on conservative teaching. We are commissioned to foster and produce faithful and truthful leaders in our societies and churches. In this diversified generation, we can't speak enough of how crucial and significant education is.<br/>\\u00a0\\u00a0\\u00a0 Education is a tool/instrument that helps us to realize, develop, and improve our individual talents that God has bestowed upon us. And the ultimate goal for the education is to become somebody who is needed and important. Additionally, we all have a privilege and right to be educated.<br/>\\u00a0\\u00a0\\u00a0 Tyndale International University exists for that particular purpose and aim. This is an education that advances and moves forward from Christian mind to conservative Reformed Calvinism grounded on theology and faith derived from the Scriptures. I, this nation, and this generation will labor and toil as the lighthouse that shines the light in this world and as the salt that protects the world from deteriorating and decaying.<br/>\\u00a0\\u00a0\\u00a0 Tyndale International University will eagerly assist and contribute to those who passionately longing for education but are unable to pursue their goals due to their jobs and/or environmental situations they are in. We plan to have night classes and other ways/methods to help them accomplish their dreams.<br/>\\u00a0\\u00a0\\u00a0 ''Do your best to present yourself to God as one approved, a worker who has no need to be ashamed, rightly handling\\u00a0 the word of truth.'' (2 Tim. 2:15).<br/><br/>Sincerely,<br/></p>", "url_path": "/home/about/chairmans-welcome/", "has_unpublished_changes": false, "subsection_title": "Chairman\\u2019s Welcome", "go_live_at": null, "slug": "chairmans", "expired": false, "first_published_at": "2015-08-11T04:20:14.350Z", "expire_at": null, "live": true, "path": "0001000100010002", "chairman_name": "Daniel C. Ji, D.R.E., Th.D.", "content_type": 19, "pk": 6, "chairman_title": "Chairman", "show_in_menus": true, "search_description": "", "subsection_subtitle": "Welcome message from TIU's Chairman", "chairman_image": 3, "numchild": 0, "latest_revision_created_at": "2015-08-11T04:20:14.290Z", "locked": false}	\N	6	1
9	f	2015-08-10 21:20:42.501159-07	{"depth": 4, "seo_title": "", "president_image": 2, "owner": 1, "president_title": "President", "title": "President's Welcome", "body": "<p>Dear Student:<br/>\\u00a0\\u00a0\\u00a0 As President of Tyndale International University, I greet you in the name of the Lord Jesus Christ. He is King of kings and Lord of lords, and in Him are found all the treasures of God. The Apostle Paul reminds us He must have the preeminence, and by Him all things consist. These truths have profound implications for education, since we know from the book of Proverbs that the fear of the Lord is the beginning of both knowledge and wisdom.<br/>\\u00a0\\u00a0\\u00a0 At Tyndale International University, we seek to bring all thoughts captive to the Lordship of Christ. This educational approach is what is referred to as a Christian world-and-life view. Not every institution that identifies itself as Christian understands this perspective. What you will discover at Tyndale International University therefore is rare--an institution of higher learning that starts with the wisdom of God as recorded in His Word, the Bible, and which builds on that infallible foundation.<br/>\\u00a0\\u00a0\\u00a0 We are far from perfect, of course, in our understanding and in our application of that knowledge. Nevertheless, we are sincere in our endeavor. And we invite you to join us in this great enterprise.<br/><br/>Sincerely,<br/></p>", "url_path": "/home/about/presidents-welcome/", "has_unpublished_changes": false, "subsection_title": "President's Welcome", "go_live_at": null, "slug": "presidents", "expired": false, "first_published_at": "2015-08-11T04:18:20.471Z", "expire_at": null, "live": true, "path": "0001000100010001", "content_type": 18, "pk": 5, "show_in_menus": true, "president_name": "Frank J. Smith, Ph.D., D.D.", "search_description": "", "subsection_subtitle": "Welcome message from TIU's President", "numchild": 0, "latest_revision_created_at": "2015-08-11T04:19:22.336Z", "locked": false}	\N	5	1
11	f	2015-08-11 09:00:23.64559-07	{"content_type": 20, "search_description": "", "path": "0001000100010003", "main_image": 4, "owner": 1, "subsection_title": "Statement of Mission", "seo_title": "", "expire_at": null, "go_live_at": null, "first_published_at": "2015-08-11T16:00:10.618Z", "latest_revision_created_at": "2015-08-11T16:00:10.545Z", "title": "Statement of Mission", "expired": false, "subsection_subtitle": "Statement of Mission", "has_unpublished_changes": false, "body": "<p>Tyndale International University\\u00a0seeks to provide each student with the opportunity to mature in his experiential understanding of the substance of Christ's character and image while developing his cognitive and effective potential. It is to be a University where understanding and knowledge are generated and disseminated together with essential principles of their practical application in a contemporary world for lifelong ministry and the development of a foundation for lifelong learning and training.\\u00a0\\u00a0\\u00a0 Tyndale International University seeks to impart to each student a high level of competency in his ability to study and present the Word of God to others. It is our goal to produce individuals who are able to bring enlightened solutions to the problems, which are faced by both a church and the secular world.<br/><br/>\\u00a0\\u00a0\\u00a0\\u00a0[Purpose and Objectives]<br/>1. Ministers with a Christian worldview point who are willing and capable of effective communication.<br/>2. Ministers who can demonstrate a solid background of Biblical knowledge and Christian theological background.<br/>3. Ministers who understand the nature of human life and its spiritual needs.<br/>4. Ministers who can develop and implement ministries to families and other groups within the church setting.<br/>5. Reliable family ministers, with expertise in marriage and family matters, which have concrete faith in God.<br/>6. Professional ministers who can efficiently cope with life crises within a church and/or ministry setting.\\u00a0\\u00a0\\u00a0<br/><br/>\\u00a0\\u00a0\\u00a0\\u00a0 *Tyndale International University admits students from other countries; however, visa services are not provided and the University does not vouch for student status, or associated charges.<br/>\\u00a0\\u00a0\\u00a0\\u00a0 Tyndale International University is also unique in that it seeks to allow a broad range of theological spectrums within a reformed tradition. Students are free to choose elective courses that are in keeping with their personal viewpoint and expression.<br/></p>", "slug": "mission", "show_in_menus": true, "depth": 4, "live": true, "numchild": 0, "locked": false, "url_path": "/home/about/statement-mission/", "pk": 7}	\N	7	1
10	f	2015-08-11 09:00:10.545584-07	{"content_type": 20, "search_description": "", "path": "0001000100010003", "main_image": 4, "owner": 1, "subsection_title": "Statement of Mission", "seo_title": "", "expire_at": null, "go_live_at": null, "first_published_at": null, "latest_revision_created_at": null, "title": "Statement of Mission", "expired": false, "subsection_subtitle": "Statement of Mission", "has_unpublished_changes": false, "body": "<p>Tyndale International University\\u00a0seeks to provide each student with the opportunity to mature in his experiential understanding of the substance of Christ's character and image while developing his cognitive and effective potential. It is to be a University where understanding and knowledge are generated and disseminated together with essential principles of their practical application in a contemporary world for lifelong ministry and the development of a foundation for lifelong learning and training.\\u00a0\\u00a0\\u00a0 Tyndale International University seeks to impart to each student a high level of competency in his ability to study and present the Word of God to others. It is our goal to produce individuals who are able to bring enlightened solutions to the problems, which are faced by both a church and the secular world.<br/><br/>\\u00a0\\u00a0\\u00a0\\u00a0[Purpose and Objectives]<br/>1. Ministers with a Christian worldview point who are willing and capable of effective communication.<br/>2. Ministers who can demonstrate a solid background of Biblical knowledge and Christian theological background.<br/>3. Ministers who understand the nature of human life and its spiritual needs.<br/>4. Ministers who can develop and implement ministries to families and other groups within the church setting.<br/>5. Reliable family ministers, with expertise in marriage and family matters, which have concrete faith in God.<br/>6. Professional ministers who can efficiently cope with life crises within a church and/or ministry setting.\\u00a0\\u00a0\\u00a0<br/><br/>\\u00a0\\u00a0\\u00a0\\u00a0 *Tyndale International University admits students from other countries; however, visa services are not provided and the University does not vouch for student status, or associated charges.<br/>\\u00a0\\u00a0\\u00a0\\u00a0 Tyndale International University is also unique in that it seeks to allow a broad range of theological spectrums within a reformed tradition. Students are free to choose elective courses that are in keeping with their personal viewpoint and expression.<br/></p>", "slug": "statement-mission", "show_in_menus": false, "depth": 4, "live": true, "numchild": 0, "locked": false, "url_path": "/home/about/statement-mission/", "pk": 7}	\N	7	1
12	f	2015-08-11 09:07:08.335878-07	{"content_type": 21, "search_description": "", "path": "0001000100010004", "main_image": 5, "owner": 1, "subsection_title": "Statement of Faith", "seo_title": "", "expire_at": null, "go_live_at": null, "first_published_at": null, "latest_revision_created_at": null, "title": "Statement of Faith", "expired": false, "subsection_subtitle": "Statement of Faith", "has_unpublished_changes": false, "body": "<p>At Tyndale International University, we make a solemn declaration of faith on the basis of the Scriptures as follows:<br/><br/>\\u00a0\\u00a0\\u00a0 The Bible is the inerrant and divinely inspired word of God. There is one God, eternally existing and manifesting Himself to us in three Persons; the Father, the Son and the Holy Spirit.\\u00a0 God, by His Word and for His glory, freely created the world in six days from nothing and created man, male and female, in His own image, to have fellowship with Him. The existence of the creation is not explainable apart from the roles of God as the sovereign Creator and Sustainer of the entire natural realm. Concepts such as theistic or threshold evolution do not adequately explain the wonder of God\\u2019s creation.<br/>\\u00a0\\u00a0\\u00a0 Tempted by Satan, the whole human race fell in the fall of the first Adam. All men, until they accept the Lord Jesus as their personal Savior, are lost, darkened in their understanding, alienated from the life of God through the ignorance that is in them, hardened in heart, are are morally and spiritually dead through their trespasses and sins.\\u00a0 They cannot see, nor enter the kingdom of God until they are born again of the Holy Spirit.\\u00a0 The only Mediator between God and humankind is Jesus Christ our Lord, the eternal Son of God. Jesus Christ revealed His divine love and upheld divine justice through His death on the cross, in our place, revealing our guilt and reconciling us to God. All have sinned through Adam, but the gift of God is eternal life through Jesus Christ our Lord. Christ redeemed us from sin through His death on the cross. On the third day He rose bodily from the grave, victorious over death and power over darkness. He ascended to heaven where, at God's right hand, He intercedes for His people and rules as Lord overall.<br/>\\u00a0\\u00a0\\u00a0 The true Church is composed of all such persons who through saving faith in Jesus Christ have been regenerated by the Holy Spirit and are united together in the body of Christ. The Holy Spirit is a Person, and is possessed of all the distinctively divine attributes. He is God.\\u00a0 God's redemptive purpose will be consummated by the return of Christ to raise the dead, to judge all people according to the deeds done in the body and to establish His glorious kingdom. All those who receive Jesus Christ as their Savior and their Lord, and who confess Him as such, become children of God and receive eternal life, and become heirs of God. At death their spirits depart to be with Christ in conscious blessedness, and at the Second Coming of Christ their bodies shall be raised and transformed into glorious bodies. They shall live and reign with Him forever.<br/>\\u00a0\\u00a0\\u00a0 The wicked shall be separated from God's presence. All those who persistently reject Jesus Christ in the present life shall be raised from the dead and throughout eternity exist in the state of conscious, endless torment and anguish in hell. Satan, an evil being of cunningness, shall ultimately be cast into the lake of fire and brimstone and shall be tormented day and night forever.\\u00a0 We believe in Westminster Confession of Faith and Heidelberg Catechismas being faithful and truthful to the teachings of the Bible, and as best representing the conventional Reformed faith.<br/>\\u00a0\\u00a0\\u00a0 We denunciate liberalism and humanism, however, we believe that the faith rooted and centered on conservative faith that is derived from Calvinism\\u2019s reformed faith and faith centered on the Bible will revive today\\u2019s churches and will lead believers to their spiritual growth.<br/></p>", "slug": "statement-faith", "show_in_menus": false, "depth": 4, "live": true, "numchild": 0, "locked": false, "url_path": "/home/about/statement-faith/", "pk": 8}	\N	8	1
13	f	2015-08-11 09:07:17.753096-07	{"content_type": 21, "search_description": "", "path": "0001000100010004", "main_image": 5, "owner": 1, "subsection_title": "Statement of Faith", "seo_title": "", "expire_at": null, "go_live_at": null, "first_published_at": "2015-08-11T16:07:08.402Z", "latest_revision_created_at": "2015-08-11T16:07:08.335Z", "title": "Statement of Faith", "expired": false, "subsection_subtitle": "Statement of Faith", "has_unpublished_changes": false, "body": "<p>At Tyndale International University, we make a solemn declaration of faith on the basis of the Scriptures as follows:<br/><br/>\\u00a0\\u00a0\\u00a0 The Bible is the inerrant and divinely inspired word of God. There is one God, eternally existing and manifesting Himself to us in three Persons; the Father, the Son and the Holy Spirit.\\u00a0 God, by His Word and for His glory, freely created the world in six days from nothing and created man, male and female, in His own image, to have fellowship with Him. The existence of the creation is not explainable apart from the roles of God as the sovereign Creator and Sustainer of the entire natural realm. Concepts such as theistic or threshold evolution do not adequately explain the wonder of God\\u2019s creation.<br/>\\u00a0\\u00a0\\u00a0 Tempted by Satan, the whole human race fell in the fall of the first Adam. All men, until they accept the Lord Jesus as their personal Savior, are lost, darkened in their understanding, alienated from the life of God through the ignorance that is in them, hardened in heart, are are morally and spiritually dead through their trespasses and sins.\\u00a0 They cannot see, nor enter the kingdom of God until they are born again of the Holy Spirit.\\u00a0 The only Mediator between God and humankind is Jesus Christ our Lord, the eternal Son of God. Jesus Christ revealed His divine love and upheld divine justice through His death on the cross, in our place, revealing our guilt and reconciling us to God. All have sinned through Adam, but the gift of God is eternal life through Jesus Christ our Lord. Christ redeemed us from sin through His death on the cross. On the third day He rose bodily from the grave, victorious over death and power over darkness. He ascended to heaven where, at God's right hand, He intercedes for His people and rules as Lord overall.<br/>\\u00a0\\u00a0\\u00a0 The true Church is composed of all such persons who through saving faith in Jesus Christ have been regenerated by the Holy Spirit and are united together in the body of Christ. The Holy Spirit is a Person, and is possessed of all the distinctively divine attributes. He is God.\\u00a0 God's redemptive purpose will be consummated by the return of Christ to raise the dead, to judge all people according to the deeds done in the body and to establish His glorious kingdom. All those who receive Jesus Christ as their Savior and their Lord, and who confess Him as such, become children of God and receive eternal life, and become heirs of God. At death their spirits depart to be with Christ in conscious blessedness, and at the Second Coming of Christ their bodies shall be raised and transformed into glorious bodies. They shall live and reign with Him forever.<br/>\\u00a0\\u00a0\\u00a0 The wicked shall be separated from God's presence. All those who persistently reject Jesus Christ in the present life shall be raised from the dead and throughout eternity exist in the state of conscious, endless torment and anguish in hell. Satan, an evil being of cunningness, shall ultimately be cast into the lake of fire and brimstone and shall be tormented day and night forever.\\u00a0 We believe in Westminster Confession of Faith and Heidelberg Catechismas being faithful and truthful to the teachings of the Bible, and as best representing the conventional Reformed faith.<br/>\\u00a0\\u00a0\\u00a0 We denunciate liberalism and humanism, however, we believe that the faith rooted and centered on conservative faith that is derived from Calvinism\\u2019s reformed faith and faith centered on the Bible will revive today\\u2019s churches and will lead believers to their spiritual growth.<br/></p>", "slug": "statement-faith", "show_in_menus": true, "depth": 4, "live": true, "numchild": 0, "locked": false, "url_path": "/home/about/statement-faith/", "pk": 8}	\N	8	1
14	f	2015-08-11 09:15:21.010913-07	{"content_type": 21, "search_description": "", "path": "0001000100010004", "main_image": 5, "owner": 1, "subsection_title": "Statement of Faith", "seo_title": "", "expire_at": null, "go_live_at": null, "first_published_at": "2015-08-11T16:07:08.402Z", "latest_revision_created_at": "2015-08-11T16:07:17.753Z", "title": "Statement of Faith", "expired": false, "subsection_subtitle": "Statement of Faith", "has_unpublished_changes": false, "body": "<p>At Tyndale International University, we make a solemn declaration of faith on the basis of the Scriptures as follows:<br/><br/>\\u00a0\\u00a0\\u00a0 The Bible is the inerrant and divinely inspired word of God. There is one God, eternally existing and manifesting Himself to us in three Persons; the Father, the Son and the Holy Spirit.\\u00a0 God, by His Word and for His glory, freely created the world in six days from nothing and created man, male and female, in His own image, to have fellowship with Him. The existence of the creation is not explainable apart from the roles of God as the sovereign Creator and Sustainer of the entire natural realm. Concepts such as theistic or threshold evolution do not adequately explain the wonder of God\\u2019s creation.<br/>\\u00a0\\u00a0\\u00a0 Tempted by Satan, the whole human race fell in the fall of the first Adam. All men, until they accept the Lord Jesus as their personal Savior, are lost, darkened in their understanding, alienated from the life of God through the ignorance that is in them, hardened in heart, are are morally and spiritually dead through their trespasses and sins.\\u00a0 They cannot see, nor enter the kingdom of God until they are born again of the Holy Spirit.\\u00a0 The only Mediator between God and humankind is Jesus Christ our Lord, the eternal Son of God. Jesus Christ revealed His divine love and upheld divine justice through His death on the cross, in our place, revealing our guilt and reconciling us to God. All have sinned through Adam, but the gift of God is eternal life through Jesus Christ our Lord. Christ redeemed us from sin through His death on the cross. On the third day He rose bodily from the grave, victorious over death and power over darkness. He ascended to heaven where, at God's right hand, He intercedes for His people and rules as Lord overall.<br/>\\u00a0\\u00a0\\u00a0 The true Church is composed of all such persons who through saving faith in Jesus Christ have been regenerated by the Holy Spirit and are united together in the body of Christ. The Holy Spirit is a Person, and is possessed of all the distinctively divine attributes. He is God.\\u00a0 God's redemptive purpose will be consummated by the return of Christ to raise the dead, to judge all people according to the deeds done in the body and to establish His glorious kingdom. All those who receive Jesus Christ as their Savior and their Lord, and who confess Him as such, become children of God and receive eternal life, and become heirs of God. At death their spirits depart to be with Christ in conscious blessedness, and at the Second Coming of Christ their bodies shall be raised and transformed into glorious bodies. They shall live and reign with Him forever.<br/>\\u00a0\\u00a0\\u00a0 The wicked shall be separated from God's presence. All those who persistently reject Jesus Christ in the present life shall be raised from the dead and throughout eternity exist in the state of conscious, endless torment and anguish in hell. Satan, an evil being of cunningness, shall ultimately be cast into the lake of fire and brimstone and shall be tormented day and night forever.\\u00a0 We believe in Westminster Confession of Faith and Heidelberg Catechismas being faithful and truthful to the teachings of the Bible, and as best representing the conventional Reformed faith.<br/>\\u00a0\\u00a0\\u00a0 We denunciate liberalism and humanism, however, we believe that the faith rooted and centered on conservative faith that is derived from Calvinism\\u2019s reformed faith and faith centered on the Bible will revive today\\u2019s churches and will lead believers to their spiritual growth.<br/></p>", "slug": "faith", "show_in_menus": true, "depth": 4, "live": true, "numchild": 0, "locked": false, "url_path": "/home/about/statement-faith/", "pk": 8}	\N	8	1
\.


--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailcore_pagerevision_id_seq', 14, true);


--
-- Data for Name: wagtailcore_pageviewrestriction; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailcore_pageviewrestriction (id, password, page_id) FROM stdin;
\.


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailcore_pageviewrestriction_id_seq', 1, false);


--
-- Data for Name: wagtailcore_site; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailcore_site (id, hostname, port, is_default_site, root_page_id) FROM stdin;
2	localhost	80	t	3
\.


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailcore_site_id_seq', 2, true);


--
-- Data for Name: wagtaildocs_document; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtaildocs_document (id, title, file, created_at, uploaded_by_user_id) FROM stdin;
\.


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtaildocs_document_id_seq', 1, false);


--
-- Data for Name: wagtailembeds_embed; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailembeds_embed (id, url, max_width, type, html, title, author_name, provider_name, thumbnail_url, width, height, last_updated) FROM stdin;
\.


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailembeds_embed_id_seq', 1, false);


--
-- Data for Name: wagtailforms_formsubmission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailforms_formsubmission (id, form_data, submit_time, page_id) FROM stdin;
\.


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailforms_formsubmission_id_seq', 1, false);


--
-- Data for Name: wagtailimages_filter; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailimages_filter (id, spec) FROM stdin;
1	max-130x100
2	max-130x130
3	max-750x300
4	max-165x165
5	max-340x480
\.


--
-- Name: wagtailimages_filter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailimages_filter_id_seq', 5, true);


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailimages_image_id_seq', 5, true);


--
-- Data for Name: wagtailimages_rendition; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailimages_rendition (id, file, width, height, focal_point_key, filter_id, image_id) FROM stdin;
1	images/William-Tyndale_620_osLvvgM.max-130x100.jpg	130	52		1	1
2	images/William-Tyndale_620_osLvvgM.max-130x130.jpg	130	52		2	1
3	images/William-Tyndale_620_osLvvgM.max-750x300.jpg	749	300		3	1
4	images/William-Tyndale_620_osLvvgM.max-165x165.jpg	165	66		4	1
5	images/Frank_nvPgmuJ.max-130x100.png	71	100		1	2
6	images/Frank_nvPgmuJ.max-340x480.png	340	477		5	2
7	images/Frank_nvPgmuJ.max-130x130.png	92	130		2	2
8	images/Frank_nvPgmuJ.max-165x165.png	117	165		4	2
9	images/Daniel-342x480_SesDSvc.max-130x100.png	71	100		1	3
10	images/Daniel-342x480_SesDSvc.max-130x130.png	93	130		2	3
11	images/Daniel-342x480_SesDSvc.max-340x480.png	340	475		5	3
12	images/Daniel-342x480_SesDSvc.max-165x165.png	118	165		4	3
13	images/mission-banner2_hK0JCxj.max-130x100.png	130	51		1	4
14	images/mission-banner2_hK0JCxj.max-130x130.png	130	51		2	4
15	images/mission-banner2_hK0JCxj.max-165x165.png	165	65		4	4
16	images/faith-banner2_eCC4SEQ.max-130x100.png	130	52		1	5
17	images/faith-banner2_eCC4SEQ.max-130x130.png	130	52		2	5
\.


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailimages_rendition_id_seq', 17, true);


--
-- Data for Name: wagtailredirects_redirect; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailredirects_redirect (id, old_path, is_permanent, redirect_link, redirect_page_id, site_id) FROM stdin;
\.


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailredirects_redirect_id_seq', 1, false);


--
-- Data for Name: wagtailsearch_query; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailsearch_query (id, query_string) FROM stdin;
\.


--
-- Data for Name: wagtailsearch_editorspick; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailsearch_editorspick (id, sort_order, description, page_id, query_id) FROM stdin;
\.


--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailsearch_editorspick_id_seq', 1, false);


--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailsearch_query_id_seq', 1, false);


--
-- Data for Name: wagtailsearch_querydailyhits; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailsearch_querydailyhits (id, date, hits, query_id) FROM stdin;
\.


--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailsearch_querydailyhits_id_seq', 1, false);


--
-- Data for Name: wagtailusers_userprofile; Type: TABLE DATA; Schema: public; Owner: -
--

COPY wagtailusers_userprofile (id, submitted_notifications, approved_notifications, rejected_notifications, user_id) FROM stdin;
\.


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('wagtailusers_userprofile_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--

