--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.4 (Ubuntu 15.4-1.pgdg20.04+1)

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

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', '928ed8ac-3fa6-4ee2-ad8a-9772302e3429', '{"action":"user_signedup","actor_id":"a6e82eea-2515-4108-84f1-431d09d2b776","actor_name":"Mantas Jasikėnas","actor_username":"nunknown354@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"google"}}', '2023-12-11 12:34:34.188468+00', ''),
	('00000000-0000-0000-0000-000000000000', '9a79ec89-7cc7-44d1-a8de-b440734b7c05', '{"action":"login","actor_id":"a6e82eea-2515-4108-84f1-431d09d2b776","actor_name":"Mantas Jasikėnas","actor_username":"nunknown354@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"google"}}', '2023-12-11 12:34:34.235582+00', ''),
	('00000000-0000-0000-0000-000000000000', '8ba7e923-aa58-4af9-be8f-23c109f42c96', '{"action":"logout","actor_id":"a6e82eea-2515-4108-84f1-431d09d2b776","actor_name":"Mantas Jasikėnas","actor_username":"nunknown354@gmail.com","actor_via_sso":false,"log_type":"account"}', '2023-12-11 13:06:33.968474+00', ''),
	('00000000-0000-0000-0000-000000000000', '7f1980a2-b7d0-4130-aad9-5b56d0ba680f', '{"action":"user_signedup","actor_id":"0027a48c-2a01-4079-85e8-3d67a9f0922b","actor_name":"Mantas Jasikėnas","actor_username":"mantasjasikenas@gmail.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"google"}}', '2023-12-11 13:06:38.84921+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e32efce6-0998-4606-8018-411c10beb16f', '{"action":"login","actor_id":"0027a48c-2a01-4079-85e8-3d67a9f0922b","actor_name":"Mantas Jasikėnas","actor_username":"mantasjasikenas@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"google"}}', '2023-12-11 13:06:38.877304+00', ''),
	('00000000-0000-0000-0000-000000000000', '55133646-5b8f-4e35-9d8d-3024708afcc6', '{"action":"logout","actor_id":"0027a48c-2a01-4079-85e8-3d67a9f0922b","actor_name":"Mantas Jasikėnas","actor_username":"mantasjasikenas@gmail.com","actor_via_sso":false,"log_type":"account"}', '2023-12-11 13:21:30.08549+00', ''),
	('00000000-0000-0000-0000-000000000000', '09293799-ff53-4520-9a73-c397682c8a31', '{"action":"login","actor_id":"a6e82eea-2515-4108-84f1-431d09d2b776","actor_name":"Mantas Jasikėnas","actor_username":"nunknown354@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"google"}}', '2023-12-11 13:21:43.452354+00', ''),
	('00000000-0000-0000-0000-000000000000', '6c5ecb02-5c8d-4591-89c8-d05f2a5198b3', '{"action":"login","actor_id":"a6e82eea-2515-4108-84f1-431d09d2b776","actor_name":"Mantas Jasikėnas","actor_username":"nunknown354@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"google"}}', '2023-12-11 13:21:43.500918+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at") VALUES
	('00000000-0000-0000-0000-000000000000', '0027a48c-2a01-4079-85e8-3d67a9f0922b', 'authenticated', 'authenticated', 'mantasjasikenas@gmail.com', '', '2023-12-11 13:06:38.849921+00', NULL, '', NULL, '', NULL, '', '', NULL, '2023-12-11 13:06:38.877829+00', '{"provider": "google", "providers": ["google"]}', '{"iss": "https://accounts.google.com", "sub": "100578179637194701799", "name": "Mantas Jasikėnas", "email": "mantasjasikenas@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocJTVRyy1JL3ZSEN4OW1c9bNZleGCbB629v_r8d4N497MT4=s96-c", "full_name": "Mantas Jasikėnas", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocJTVRyy1JL3ZSEN4OW1c9bNZleGCbB629v_r8d4N497MT4=s96-c", "provider_id": "100578179637194701799", "email_verified": true, "phone_verified": false}', NULL, '2023-12-11 13:06:38.841166+00', '2023-12-11 13:06:38.879199+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL),
	('00000000-0000-0000-0000-000000000000', 'a6e82eea-2515-4108-84f1-431d09d2b776', 'authenticated', 'authenticated', 'nunknown354@gmail.com', '', '2023-12-11 12:34:34.18906+00', NULL, '', NULL, '', NULL, '', '', NULL, '2023-12-11 13:21:43.501556+00', '{"provider": "google", "providers": ["google"]}', '{"iss": "https://accounts.google.com", "sub": "114486168866293310146", "name": "Mantas Jasikėnas", "email": "nunknown354@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocIlhDH9_addJt93RFdiqto7uDqVt9vWbXIJ5cCnVxItxTQ=s96-c", "full_name": "Mantas Jasikėnas", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocIlhDH9_addJt93RFdiqto7uDqVt9vWbXIJ5cCnVxItxTQ=s96-c", "provider_id": "114486168866293310146", "email_verified": true, "phone_verified": false}', NULL, '2023-12-11 12:34:34.181568+00', '2023-12-11 13:21:43.503354+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at") VALUES
	('100578179637194701799', '0027a48c-2a01-4079-85e8-3d67a9f0922b', '{"iss": "https://accounts.google.com", "sub": "100578179637194701799", "name": "Mantas Jasikėnas", "email": "mantasjasikenas@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocJTVRyy1JL3ZSEN4OW1c9bNZleGCbB629v_r8d4N497MT4=s96-c", "full_name": "Mantas Jasikėnas", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocJTVRyy1JL3ZSEN4OW1c9bNZleGCbB629v_r8d4N497MT4=s96-c", "provider_id": "100578179637194701799", "email_verified": true, "phone_verified": false}', 'google', '2023-12-11 13:06:38.84766+00', '2023-12-11 13:06:38.847684+00', '2023-12-11 13:06:38.847684+00'),
	('114486168866293310146', 'a6e82eea-2515-4108-84f1-431d09d2b776', '{"iss": "https://accounts.google.com", "sub": "114486168866293310146", "name": "Mantas Jasikėnas", "email": "nunknown354@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocIlhDH9_addJt93RFdiqto7uDqVt9vWbXIJ5cCnVxItxTQ=s96-c", "full_name": "Mantas Jasikėnas", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocIlhDH9_addJt93RFdiqto7uDqVt9vWbXIJ5cCnVxItxTQ=s96-c", "provider_id": "114486168866293310146", "email_verified": true, "phone_verified": false}', 'google', '2023-12-11 12:34:34.186529+00', '2023-12-11 12:34:34.186551+00', '2023-12-11 13:21:43.449526+00');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip") VALUES
	('318f411c-908f-4a85-8e46-24a4281d4fa6', 'a6e82eea-2515-4108-84f1-431d09d2b776', '2023-12-11 13:21:43.50161+00', '2023-12-11 13:21:43.50161+00', NULL, 'aal1', NULL, NULL, 'undici', '172.22.0.1');


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('318f411c-908f-4a85-8e46-24a4281d4fa6', '2023-12-11 13:21:43.503673+00', '2023-12-11 13:21:43.503673+00', 'oauth', '8767573c-7bd5-4326-a52d-40a215ff4301');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 3, '4zpMkW4q4Wa5-RHkGxKbCw', 'a6e82eea-2515-4108-84f1-431d09d2b776', false, '2023-12-11 13:21:43.50238+00', '2023-12-11 13:21:43.50238+00', NULL, '318f411c-908f-4a85-8e46-24a4281d4fa6');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: hosts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."hosts" ("id", "personal_code", "bank_account") VALUES
	('a6e82eea-2515-4108-84f1-431d09d2b776', '435454565645565', 'LT4465465656456456');


--
-- Data for Name: listing_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."listing_category" ("id", "name") VALUES
	(1, 'House'),
	(2, 'Apartment'),
	(3, 'Room'),
	(4, 'Apartments');


--
-- Data for Name: listings; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."listings" ("id", "suspension_status", "title", "description", "city", "address", "country", "creation_date", "number_of_places", "day_price", "category_id", "host_id") OVERRIDING SYSTEM VALUE VALUES
	(2, false, 'Suite in a Charming Colonial Villa in San Angel', 'As guest at our house you can use all common areas like kitchen, living and dining room but above all the quiet garden. As we live in the same house you become part of our family and we can give you a deep insight into Mexican culture and life style.', 'Mexico City', 'Ciudad de México', 'Mexico', '2023-12-11 13:24:25.294', 6, 9300, 3, 'a6e82eea-2515-4108-84f1-431d09d2b776'),
	(1, false, 'Lyon Presqu''ile apartment', 'We offer 1 room for rent in a large elegant apartment of 100m2 in the heart of Lyon for the Festival of Lights. Ideally located in the center of the festivities, between Place des Jacobins and Rue Mercière. 4 min walk to Bellecour or Cordeliers metro stations, and 8 min walk to Vieux Lyon or Terreaux. 10 min by bus/metro from the train stations.', 'Lyon', 'Auvergne-Rhône-Alpes', 'France', '2023-12-11 12:57:11.145', 4, 11569, 2, 'a6e82eea-2515-4108-84f1-431d09d2b776'),
	(3, false, 'Rooms with La Paz', 'Enjoy the simplicity of this quiet and central home.', 'Puebla', 'Heroica Puebla de Zaragoza', 'Mexico', '2023-12-11 13:34:51.239', 8, 1100, 3, 'a6e82eea-2515-4108-84f1-431d09d2b776'),
	(4, false, 'Cozy 3 BR Pool Villa Canggu Bali', 'Relax with the whole family at this peaceful place to stay.', 'Mexico City', 'Kecamatan Mengwi', 'Mexico', '2023-12-11 13:39:58.958', 6, 48066, 1, 'a6e82eea-2515-4108-84f1-431d09d2b776'),
	(5, false, 'Twin room in Historic Georgian Home', 'We look forward to welcoming you to our home. Your room is on the second (U.S. 3rd) floor, with the best views on the house over the Firth of Forth to Fife. You will usually be able to relax in the elegant drawing room, and breakfast under the eye of family portraits in the ground floor dining room, enjoying home made bread and jams. ', 'Edinburgh', 'Edinburgh''s New Town', 'United Kingdom', '2023-12-11 13:42:58.401', 2, 17500, 2, 'a6e82eea-2515-4108-84f1-431d09d2b776');


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."profiles" ("id", "first_name", "last_name", "birth_date", "phone", "photo", "country", "city") VALUES
	('a6e82eea-2515-4108-84f1-431d09d2b776', 'Mantas', 'Jasikėnas', '2004-12-07', '+37060228520', 'https://www.raamitravel.com/uploads/file_repo/2015/01/21/2015-01-21-162634ad.jpg', 'Lithuania', 'Labūnava'),
	('0027a48c-2a01-4079-85e8-3d67a9f0922b', 'Mantas', 'Guest', '1999-12-26', '+370454645645', 'https://images.unsplash.com/photo-1511367461989-f85a21fda167?q=80&w=1031&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Lithuania', 'Kaunas');


--
-- Data for Name: reservation_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."reservation_status" ("id", "name") VALUES
	(2, 'confirmed'),
	(3, 'rejected'),
	(1, 'pending'),
	(4, 'cancelled');


--
-- Data for Name: reservations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."reservations" ("id", "start_date", "end_date", "total_price", "creation_date", "status", "listing_id", "user_id") OVERRIDING SYSTEM VALUE VALUES
	(1, '2023-12-24', '2023-12-26', 24500, '2023-12-11 13:08:12.284', 1, 1, '0027a48c-2a01-4079-85e8-3d67a9f0922b');


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."services" ("id", "title", "description", "price", "listing_id") OVERRIDING SYSTEM VALUE VALUES
	(1, 'Essentials', 'Towels, bed sheets, soap, and toilet paper', 1000, 1),
	(2, 'Dishes and silverware', 'Bowls, chopsticks, plates, cups, etc.', 500, 1),
	(3, 'Barbecue utensils', 'Grill, charcoal, bamboo skewers/iron skewers, etc.', 2000, 2);


--
-- Data for Name: ordered_services; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."ordered_services" ("id", "service_id", "reservation_id") VALUES
	(1, 1, 1),
	(2, 2, 1);


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: photos; Type: TABLE DATA; Schema: public; Owner: postgres
--

https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_5/1702302178481_stWPMNxeAl8wWx-BZLT_k_1ae87966-5b3e-44df-ae18-993a6af73f84.webp?t=2023-12-15T10%3A24%3A57.024Z

INSERT INTO "public"."photos" ("id", "url", "listing_id") OVERRIDING SYSTEM VALUE VALUES
	(1, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_1/1702299730744_6PdMY-j9A21cY1rYi154w_7a2002a7-a8dd-4c4e-8da2-e0e4643dcf67.jpeg', 1),
	(2, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_2/1702301065373_MhwInDUqZrWn80b6-ZhlT_93fbbe88-219f-4152-bafc-ce7299f99bc4.webp', 2),
	(3, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_2/1702301065458_KeJUHRvLwt2gUS5U38TFI_bba9e521-d121-4d70-9380-f2d40b50f435.webp', 2),
	(4, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_2/1702301065535_aO_gSiulyYOUe00KcL3z5_2fd67464-8da1-419d-b8f7-dcb840a1be0a.webp', 2),
	(5, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_3/1702301691310_mwJIZwb9AOSFNnK9klTEa_0b9fdb4a-3b6b-458a-bc1f-45bf9e392fef.webp', 3),
	(6, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_3/1702301691360_G3UjemyVKLDi4AGTtmXoY_d6dc580f-63c3-4a8a-b4a3-4ac98fab94a4.webp', 3),
	(7, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_3/1702301691438_5qVJnm25hjuQHGlBv_k7Q_282ffc30-42bd-402e-b09e-48160b85d39a.webp', 3),
	(8, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_4/1702301999031_Wm5dlu_A_vn0N6fs8kFKG_0a90ffe5-9ee0-4406-8272-771bb1fd9341.webp', 4),
	(9, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_4/1702301999121_67a-_OHLBCT6NgkF5fRa0_fd9b1883-9a85-402e-82b2-351fa73e2661.webp', 4),
	(10, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_4/1702301999198_OR5KG2ViGnPBSe8SpTyAq_f57bff01-204f-4519-9943-eb1e18e108d2.webp', 4),
	(11, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_4/1702301999269_jnwJtF7DvVOv4o1Vr_VAS_d1dfe4d3-950d-4aa2-afc6-f83b51c3f227.webp', 4),
	(12, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_5/1702302178481_stWPMNxeAl8wWx-BZLT_k_1ae87966-5b3e-44df-ae18-993a6af73f84.webp', 5),
	(13, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_5/1702302178570_9uznfsxUXA_sgYL_hdCwm_1b7633bb-8bf4-4753-a795-8c29ff38aa04.webp', 5),
	(14, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_5/1702302178598_TBZB-GQrY6i5R6n0dJgEQ_6c3894de-ee68-4b50-b797-ee6aa2a14222.webp', 5),
	(15, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_5/1702302178667_zRSKaE_Bzu-u0xZ0JVUO1_2b0a6a64-a676-452d-910b-e9195a6c36ae.webp', 5),
	(16, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_5/1702302178737_cwS3AQ_xuvd4DA5Iq81lI_2c2cf7d3-cfa7-46f6-b9d7-cfd88fef90eb.webp', 5);


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") VALUES
	('images', 'images', NULL, '2023-12-11 13:00:52.685439+00', '2023-12-11 13:00:52.685439+00', true, false, NULL, NULL, NULL);


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id") VALUES
	('07f7ab4f-2c87-4548-b0f5-a20626d77a8e', 'images', 'listing_1/1702299730744_6PdMY-j9A21cY1rYi154w_7a2002a7-a8dd-4c4e-8da2-e0e4643dcf67.jpeg', NULL, '2023-12-11 13:02:10.855727+00', '2023-12-11 13:02:10.855727+00', '2023-12-11 13:02:10.855727+00', '{"eTag": "\"4d0dd7d121cad5e4fea10f34da3066a1\"", "size": 20452, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2023-12-11T13:02:10.830Z", "contentLength": 20452, "httpStatusCode": 200}', 'de9888c0-9bfb-4b4a-a50c-5f26a28802bc', NULL),
	('291276e7-aba7-4725-b120-9585662d1fe9', 'images', 'listing_2/1702301065373_MhwInDUqZrWn80b6-ZhlT_93fbbe88-219f-4152-bafc-ce7299f99bc4.webp', NULL, '2023-12-11 13:24:25.441514+00', '2023-12-11 13:24:25.441514+00', '2023-12-11 13:24:25.441514+00', '{"eTag": "\"a67776004e6139bfaadedd20dedde262\"", "size": 107266, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-11T13:24:25.431Z", "contentLength": 107266, "httpStatusCode": 200}', '646fd369-fec4-4d67-a4d3-490e381aa992', NULL),
	('f63bba52-4a21-426c-86f0-fdfdf61c40b1', 'images', 'listing_2/1702301065458_KeJUHRvLwt2gUS5U38TFI_bba9e521-d121-4d70-9380-f2d40b50f435.webp', NULL, '2023-12-11 13:24:25.521816+00', '2023-12-11 13:24:25.521816+00', '2023-12-11 13:24:25.521816+00', '{"eTag": "\"0c3a908f58ac64b5f0840e07170f43b7\"", "size": 85708, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-11T13:24:25.511Z", "contentLength": 85708, "httpStatusCode": 200}', 'ba8ff90a-d18e-410d-ba89-82f20bb0343d', NULL),
	('c861a708-b3ec-4de2-be51-20b1798d57bc', 'images', 'listing_2/1702301065535_aO_gSiulyYOUe00KcL3z5_2fd67464-8da1-419d-b8f7-dcb840a1be0a.webp', NULL, '2023-12-11 13:24:25.590891+00', '2023-12-11 13:24:25.590891+00', '2023-12-11 13:24:25.590891+00', '{"eTag": "\"521c27d85a4f2f481db421e659bb7495\"", "size": 57774, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-11T13:24:25.581Z", "contentLength": 57774, "httpStatusCode": 200}', 'd75c2fd2-53c8-4286-a46c-ca68862a92ac', NULL),
	('16f8b66f-af4a-4bc2-b4c1-e38cfd5ef7de', 'images', 'listing_3/1702301691310_mwJIZwb9AOSFNnK9klTEa_0b9fdb4a-3b6b-458a-bc1f-45bf9e392fef.webp', NULL, '2023-12-11 13:34:51.340165+00', '2023-12-11 13:34:51.340165+00', '2023-12-11 13:34:51.340165+00', '{"eTag": "\"f9ef700b207446d40680d76753d3dcb6\"", "size": 132186, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-11T13:34:51.327Z", "contentLength": 132186, "httpStatusCode": 200}', '561a353b-55c2-4509-b83f-55854e52f4ca', NULL),
	('da7e378c-6c16-4cb8-88c6-498c34099d4b', 'images', 'listing_3/1702301691360_G3UjemyVKLDi4AGTtmXoY_d6dc580f-63c3-4a8a-b4a3-4ac98fab94a4.webp', NULL, '2023-12-11 13:34:51.425867+00', '2023-12-11 13:34:51.425867+00', '2023-12-11 13:34:51.425867+00', '{"eTag": "\"019019606c3d79f52154895fd3ddb65a\"", "size": 73158, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-11T13:34:51.407Z", "contentLength": 73158, "httpStatusCode": 200}', 'd2b3e3cc-a838-4fb4-aa4d-6d25f94c50e7', NULL),
	('e8f278bf-51b7-4dc7-a1d3-0a197caadb5d', 'images', 'listing_3/1702301691438_5qVJnm25hjuQHGlBv_k7Q_282ffc30-42bd-402e-b09e-48160b85d39a.webp', NULL, '2023-12-11 13:34:51.49685+00', '2023-12-11 13:34:51.49685+00', '2023-12-11 13:34:51.49685+00', '{"eTag": "\"02c373c7758459fbdfd4c016addb0442\"", "size": 48428, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-11T13:34:51.477Z", "contentLength": 48428, "httpStatusCode": 200}', 'e8f2bc4d-1b07-4b68-b3ba-2e4914f108a4', NULL),
	('d3d4c187-e146-4ae7-92c4-010d52ecb2e1', 'images', 'listing_4/1702301999031_Wm5dlu_A_vn0N6fs8kFKG_0a90ffe5-9ee0-4406-8272-771bb1fd9341.webp', NULL, '2023-12-11 13:39:59.104938+00', '2023-12-11 13:39:59.104938+00', '2023-12-11 13:39:59.104938+00', '{"eTag": "\"add13c13e54d898b2e355542a535c679\"", "size": 9048, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-11T13:39:59.093Z", "contentLength": 9048, "httpStatusCode": 200}', '0909fa7b-bc92-493a-b2ab-1c1b3f46514a', NULL),
	('bf7f0aa4-0ac6-4bee-93a9-ebf21b74aa30', 'images', 'listing_4/1702301999121_67a-_OHLBCT6NgkF5fRa0_fd9b1883-9a85-402e-82b2-351fa73e2661.webp', NULL, '2023-12-11 13:39:59.185185+00', '2023-12-11 13:39:59.185185+00', '2023-12-11 13:39:59.185185+00', '{"eTag": "\"d1ef6ce66246561f94a6fead4b8c0e0e\"", "size": 9872, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-11T13:39:59.173Z", "contentLength": 9872, "httpStatusCode": 200}', '6303e6b7-513c-4a12-a324-890ecdce5513', NULL),
	('cd160fe4-c1e2-46b5-b63f-7db29ff2b982', 'images', 'listing_4/1702301999198_OR5KG2ViGnPBSe8SpTyAq_f57bff01-204f-4519-9943-eb1e18e108d2.webp', NULL, '2023-12-11 13:39:59.256661+00', '2023-12-11 13:39:59.256661+00', '2023-12-11 13:39:59.256661+00', '{"eTag": "\"dd9a900d83aef8c78a5444a5d9fe0101\"", "size": 26076, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-11T13:39:59.243Z", "contentLength": 26076, "httpStatusCode": 200}', 'a98e4802-9814-44e1-b682-bf1a36069333', NULL),
	('5ee2ef94-2ddf-47b0-a0c0-9cb6ab1c0ccc', 'images', 'listing_4/1702301999269_jnwJtF7DvVOv4o1Vr_VAS_d1dfe4d3-950d-4aa2-afc6-f83b51c3f227.webp', NULL, '2023-12-11 13:39:59.285171+00', '2023-12-11 13:39:59.285171+00', '2023-12-11 13:39:59.285171+00', '{"eTag": "\"099f7aef1f464bf92d41240d8aeeb83b\"", "size": 38010, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-11T13:39:59.273Z", "contentLength": 38010, "httpStatusCode": 200}', 'aad3ecfd-af09-4faf-94d4-16e152f66721', NULL),
	('3d244fda-8524-42ec-802d-6ce791d9cf27', 'images', 'listing_5/1702302178481_stWPMNxeAl8wWx-BZLT_k_1ae87966-5b3e-44df-ae18-993a6af73f84.webp', NULL, '2023-12-11 13:42:58.553241+00', '2023-12-11 13:42:58.553241+00', '2023-12-11 13:42:58.553241+00', '{"eTag": "\"7dc9a2591eb86b12687ea0636d082c53\"", "size": 21226, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-11T13:42:58.539Z", "contentLength": 21226, "httpStatusCode": 200}', '0bad0adb-b1c7-4640-b412-9ecd549cc8ae', NULL),
	('d2d97b59-9ccf-42fb-9332-bc0bfbb0bc38', 'images', 'listing_5/1702302178570_9uznfsxUXA_sgYL_hdCwm_1b7633bb-8bf4-4753-a795-8c29ff38aa04.webp', NULL, '2023-12-11 13:42:58.584744+00', '2023-12-11 13:42:58.584744+00', '2023-12-11 13:42:58.584744+00', '{"eTag": "\"73a9ab3db1a2807cdad08a399293a51c\"", "size": 35498, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-11T13:42:58.569Z", "contentLength": 35498, "httpStatusCode": 200}', '46c62a25-8801-4f28-80ab-5b2f14e8c4a7', NULL),
	('e6d977df-664b-4eb9-8411-f41cb47ea9b9', 'images', 'listing_5/1702302178598_TBZB-GQrY6i5R6n0dJgEQ_6c3894de-ee68-4b50-b797-ee6aa2a14222.webp', NULL, '2023-12-11 13:42:58.655241+00', '2023-12-11 13:42:58.655241+00', '2023-12-11 13:42:58.655241+00', '{"eTag": "\"1aac7f2010e96ec32436f3e692784267\"", "size": 19626, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-11T13:42:58.639Z", "contentLength": 19626, "httpStatusCode": 200}', '4e214967-3848-4748-9b4b-f738a4264830', NULL),
	('8486b5f3-5c33-4d3c-8eb5-fb1b5e542431', 'images', 'listing_5/1702302178667_zRSKaE_Bzu-u0xZ0JVUO1_2b0a6a64-a676-452d-910b-e9195a6c36ae.webp', NULL, '2023-12-11 13:42:58.725297+00', '2023-12-11 13:42:58.725297+00', '2023-12-11 13:42:58.725297+00', '{"eTag": "\"e4158730ced2a4c91a8fc847ede73a38\"", "size": 21884, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-11T13:42:58.709Z", "contentLength": 21884, "httpStatusCode": 200}', 'df4da078-a1bd-489a-88b9-d12948ef478c', NULL),
	('f26a92a9-f8b2-4061-9571-624eab742dae', 'images', 'listing_5/1702302178737_cwS3AQ_xuvd4DA5Iq81lI_2c2cf7d3-cfa7-46f6-b9d7-cfd88fef90eb.webp', NULL, '2023-12-11 13:42:58.795307+00', '2023-12-11 13:42:58.795307+00', '2023-12-11 13:42:58.795307+00', '{"eTag": "\"3a9539256cc0daf2a45935516877a35e\"", "size": 78354, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-11T13:42:58.779Z", "contentLength": 78354, "httpStatusCode": 200}', '3e3d116b-d2fb-428d-bcbf-a973e8355a1d', NULL);


--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 3, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: listings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."listings_id_seq"', 5, true);


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."messages_id_seq"', 1, false);


--
-- Name: ordered_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."ordered_services_id_seq"', 2, true);


--
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."payments_id_seq"', 1, false);


--
-- Name: photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."photos_id_seq"', 16, true);


--
-- Name: reservations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."reservations_id_seq"', 1, true);


--
-- Name: services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."services_id_seq"', 3, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
