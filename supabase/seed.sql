SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.6
-- Dumped by pg_dump version 15.7 (Ubuntu 15.7-1.pgdg20.04+1)

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
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '07814774-5631-4419-af21-2e70418e4922', 'authenticated', 'authenticated', 'lukas.vasi@gmail.com', NULL, '2024-10-24 08:54:29.615712+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-10-24 08:54:31.012077+00', '{"provider": "google", "providers": ["google"]}', '{"iss": "https://accounts.google.com", "sub": "100776327814874526718", "name": "Lukas Vasiliauskas", "email": "lukas.vasi@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocKbPqvtdeK8LiYZtVo9ogXloKVbMg1PY_cPH5JUsW8Up8BegKE=s96-c", "full_name": "Lukas Vasiliauskas", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocKbPqvtdeK8LiYZtVo9ogXloKVbMg1PY_cPH5JUsW8Up8BegKE=s96-c", "provider_id": "100776327814874526718", "email_verified": true, "phone_verified": false}', NULL, '2024-10-24 08:54:29.589405+00', '2024-10-24 08:54:31.016162+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '70198215-84d6-4bac-a225-5641d4045855', 'authenticated', 'authenticated', 'naudotojas@iksd.vercel.app', '$2a$10$V4nvo0wkupL0r/X43hMKuuQeYXkOcXXJ8RKGu92Yw/pwn.mUnOFJy', '2023-12-17 19:47:01.605861+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-09-18 17:22:53.845179+00', '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2023-12-17 19:47:01.597184+00', '2024-09-18 17:22:53.848273+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'd46d5f0f-0fde-47db-9b68-197d91718cb1', 'authenticated', 'authenticated', 'naujasnaudotojas@iksd.vercel.app', '$2a$10$zISGJLGyxE1dwyODg3Wtmu672q4Fz4Nwy0GjT7NO6soR8E16F5.aW', '2024-09-18 18:36:50.164322+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-09-18 18:36:50.167528+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "d46d5f0f-0fde-47db-9b68-197d91718cb1", "email": "naujasnaudotojas@iksd.vercel.app", "email_verified": false, "phone_verified": false}', NULL, '2024-09-18 18:36:50.157372+00', '2024-09-18 18:36:50.170657+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '32f8f198-a8c3-4dec-b5db-09d5daec2918', 'authenticated', 'authenticated', 'mantasjasikenas@gmail.com', '$2a$06$/gvydLO5THP6rcglJJEYa.8JQ5fGHVrMYU0GbAa0wMkgW0YzOtzdG', '2023-12-15 10:12:36.212612+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-10-23 06:16:32.112539+00', '{"provider": "email", "providers": ["email", "google"]}', '{"iss": "https://accounts.google.com", "sub": "100578179637194701799", "name": "Mantas Jasikėnas", "email": "mantasjasikenas@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocJTVRyy1JL3ZSEN4OW1c9bNZleGCbB629v_r8d4N497MT4=s96-c", "full_name": "Mantas Jasikėnas", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocJTVRyy1JL3ZSEN4OW1c9bNZleGCbB629v_r8d4N497MT4=s96-c", "provider_id": "100578179637194701799", "email_verified": true, "phone_verified": false}', NULL, '2023-12-15 10:12:36.198217+00', '2024-10-23 17:20:14.979292+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '6a392b5c-bae8-4264-bde2-32e1b29c247a', 'authenticated', 'authenticated', 'nunknown354@gmail.com', '$2a$06$geoS9e7DrHN47NFZxWHLaOIZvG6jW6lRx0evZZEKssECVtP8S8X1C', '2023-12-15 10:14:24.522096+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-10-17 13:03:11.71193+00', '{"provider": "google", "providers": ["google", "email"]}', '{"iss": "https://accounts.google.com", "sub": "114486168866293310146", "name": "Mantas Jasikėnas", "email": "nunknown354@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocIlhDH9_addJt93RFdiqto7uDqVt9vWbXIJ5cCnVxItxTQ=s96-c", "full_name": "Mantas Jasikėnas", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocIlhDH9_addJt93RFdiqto7uDqVt9vWbXIJ5cCnVxItxTQ=s96-c", "provider_id": "114486168866293310146", "email_verified": true, "phone_verified": false}', NULL, '2023-12-15 10:14:24.515362+00', '2024-10-23 06:16:04.922327+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'e3e019d0-51f3-4545-81c2-dcfa29ef3c7b', 'authenticated', 'authenticated', 'magelis291@gmail.com', NULL, '2024-09-18 17:13:38.736061+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-10-23 17:20:49.40709+00', '{"provider": "google", "providers": ["google"]}', '{"iss": "https://accounts.google.com", "sub": "114379324027757031992", "name": "Miguelis", "email": "magelis291@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocKCm5BIxXTu4guhZlW-StWGErjHdbY5UPeYiIOXjmXZHt-HT91C=s96-c", "full_name": "Miguelis", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocKCm5BIxXTu4guhZlW-StWGErjHdbY5UPeYiIOXjmXZHt-HT91C=s96-c", "provider_id": "114379324027757031992", "email_verified": true, "phone_verified": false}', NULL, '2024-09-18 17:13:38.699983+00', '2024-10-23 18:57:53.912512+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', '3ac51942-2ae7-471f-bf5c-d2f2a9ce1a2b', 'authenticated', 'authenticated', 'test@iksd.vercel.app', '$2a$10$.OAI/dNf8y8tO2hqaNngUu4YVPh2AzqEMIg0g/4R7zfjpV.d1K5Fq', '2024-10-10 06:11:02.672074+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-10-24 09:03:45.570883+00', '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-10-10 06:11:02.65362+00', '2024-10-24 09:03:45.575357+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'f7a559ec-1986-416f-a02b-51becf86355f', 'authenticated', 'authenticated', 'kebabu.krautuvele@gmail.com', NULL, '2024-09-26 17:30:30.374643+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-09-26 17:56:17.568009+00', '{"provider": "google", "providers": ["google"]}', '{"iss": "https://accounts.google.com", "sub": "110687651475978763752", "name": "Dargimantas Karpatinskas", "email": "kebabu.krautuvele@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocKrpz0N4k-F-N-hcTaxHwEKLrEBcGD5XjtETYZMNZT0k7yxLGE=s96-c", "full_name": "Dargimantas Karpatinskas", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocKrpz0N4k-F-N-hcTaxHwEKLrEBcGD5XjtETYZMNZT0k7yxLGE=s96-c", "provider_id": "110687651475978763752", "email_verified": true, "phone_verified": false}', NULL, '2024-09-26 17:30:30.348207+00', '2024-09-26 17:56:17.571111+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('114486168866293310146', '6a392b5c-bae8-4264-bde2-32e1b29c247a', '{"iss": "https://accounts.google.com", "sub": "114486168866293310146", "name": "Mantas Jasikėnas", "email": "nunknown354@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocIlhDH9_addJt93RFdiqto7uDqVt9vWbXIJ5cCnVxItxTQ=s96-c", "full_name": "Mantas Jasikėnas", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocIlhDH9_addJt93RFdiqto7uDqVt9vWbXIJ5cCnVxItxTQ=s96-c", "provider_id": "114486168866293310146", "email_verified": true, "phone_verified": false}', 'google', '2023-12-16 09:32:57.194333+00', '2023-12-16 09:32:57.194382+00', '2023-12-18 07:52:26.966273+00', '4b4785b4-620a-435b-b4e6-06fd30a52597'),
	('32f8f198-a8c3-4dec-b5db-09d5daec2918', '32f8f198-a8c3-4dec-b5db-09d5daec2918', '{"sub": "32f8f198-a8c3-4dec-b5db-09d5daec2918", "email": "mantasjasikenas@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2023-12-15 10:12:36.209151+00', '2023-12-15 10:12:36.209203+00', '2023-12-15 10:12:36.209203+00', 'f520d4b5-df6d-4357-ab43-694f3d69f0c1'),
	('6a392b5c-bae8-4264-bde2-32e1b29c247a', '6a392b5c-bae8-4264-bde2-32e1b29c247a', '{"sub": "6a392b5c-bae8-4264-bde2-32e1b29c247a", "email": "nunknown354@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2023-12-15 10:14:24.51825+00', '2023-12-15 10:14:24.518317+00', '2023-12-15 10:14:24.518317+00', '5e6967f3-2efe-4db0-85c6-70e6f846ebd3'),
	('70198215-84d6-4bac-a225-5641d4045855', '70198215-84d6-4bac-a225-5641d4045855', '{"sub": "70198215-84d6-4bac-a225-5641d4045855", "email": "naudotojas@iksd.vercel.app", "email_verified": false, "phone_verified": false}', 'email', '2023-12-17 19:47:01.601707+00', '2023-12-17 19:47:01.601753+00', '2023-12-17 19:47:01.601753+00', '85c20fd6-5c47-4c42-be2d-abf9c1bd4476'),
	('100578179637194701799', '32f8f198-a8c3-4dec-b5db-09d5daec2918', '{"iss": "https://accounts.google.com", "sub": "100578179637194701799", "name": "Mantas Jasikėnas", "email": "mantasjasikenas@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocJTVRyy1JL3ZSEN4OW1c9bNZleGCbB629v_r8d4N497MT4=s96-c", "full_name": "Mantas Jasikėnas", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocJTVRyy1JL3ZSEN4OW1c9bNZleGCbB629v_r8d4N497MT4=s96-c", "provider_id": "100578179637194701799", "email_verified": true, "phone_verified": false}', 'google', '2023-12-16 09:31:17.238932+00', '2023-12-16 09:31:17.238987+00', '2023-12-18 07:14:13.245404+00', '9d37b145-78da-47c6-ad47-a95972666e3e'),
	('d46d5f0f-0fde-47db-9b68-197d91718cb1', 'd46d5f0f-0fde-47db-9b68-197d91718cb1', '{"sub": "d46d5f0f-0fde-47db-9b68-197d91718cb1", "email": "naujasnaudotojas@iksd.vercel.app", "email_verified": false, "phone_verified": false}', 'email', '2024-09-18 18:36:50.160701+00', '2024-09-18 18:36:50.160755+00', '2024-09-18 18:36:50.160755+00', 'b4c8958c-c0b0-4123-bc3b-587161e98a37'),
	('110687651475978763752', 'f7a559ec-1986-416f-a02b-51becf86355f', '{"iss": "https://accounts.google.com", "sub": "110687651475978763752", "name": "Dargimantas Karpatinskas", "email": "kebabu.krautuvele@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocKrpz0N4k-F-N-hcTaxHwEKLrEBcGD5XjtETYZMNZT0k7yxLGE=s96-c", "full_name": "Dargimantas Karpatinskas", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocKrpz0N4k-F-N-hcTaxHwEKLrEBcGD5XjtETYZMNZT0k7yxLGE=s96-c", "provider_id": "110687651475978763752", "email_verified": true, "phone_verified": false}', 'google', '2024-09-26 17:30:30.360598+00', '2024-09-26 17:30:30.360658+00', '2024-09-26 17:56:16.457363+00', '031e4d16-ba6f-43d0-b347-3583c60c1a1b'),
	('3ac51942-2ae7-471f-bf5c-d2f2a9ce1a2b', '3ac51942-2ae7-471f-bf5c-d2f2a9ce1a2b', '{"sub": "3ac51942-2ae7-471f-bf5c-d2f2a9ce1a2b", "email": "test@iksd.vercel.app", "email_verified": false, "phone_verified": false}', 'email', '2024-10-10 06:11:02.660099+00', '2024-10-10 06:11:02.66016+00', '2024-10-10 06:11:02.66016+00', '5c6b4acf-02ce-46ca-9ddc-213461c83a25'),
	('114379324027757031992', 'e3e019d0-51f3-4545-81c2-dcfa29ef3c7b', '{"iss": "https://accounts.google.com", "sub": "114379324027757031992", "name": "Miguelis", "email": "magelis291@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocKCm5BIxXTu4guhZlW-StWGErjHdbY5UPeYiIOXjmXZHt-HT91C=s96-c", "full_name": "Miguelis", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocKCm5BIxXTu4guhZlW-StWGErjHdbY5UPeYiIOXjmXZHt-HT91C=s96-c", "provider_id": "114379324027757031992", "email_verified": true, "phone_verified": false}', 'google', '2024-09-18 17:13:38.720769+00', '2024-09-18 17:13:38.720829+00', '2024-10-23 17:20:48.852354+00', 'be501bc5-6d5f-4a44-98f4-dc0a262f1b0a'),
	('100776327814874526718', '07814774-5631-4419-af21-2e70418e4922', '{"iss": "https://accounts.google.com", "sub": "100776327814874526718", "name": "Lukas Vasiliauskas", "email": "lukas.vasi@gmail.com", "picture": "https://lh3.googleusercontent.com/a/ACg8ocKbPqvtdeK8LiYZtVo9ogXloKVbMg1PY_cPH5JUsW8Up8BegKE=s96-c", "full_name": "Lukas Vasiliauskas", "avatar_url": "https://lh3.googleusercontent.com/a/ACg8ocKbPqvtdeK8LiYZtVo9ogXloKVbMg1PY_cPH5JUsW8Up8BegKE=s96-c", "provider_id": "100776327814874526718", "email_verified": true, "phone_verified": false}', 'google', '2024-10-24 08:54:29.595407+00', '2024-10-24 08:54:29.595456+00', '2024-10-24 08:54:29.595456+00', 'fe0551d8-55d8-4a42-bd9f-5b5e0f86d54c');


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('8d1720a3-a246-4dec-988e-8be171170393', '2023-12-18 07:52:27.085886+00', '2023-12-18 07:52:27.085886+00', 'oauth', '72a9f3ce-236f-41eb-a1ba-adec53254fe8'),
	('fcc3f0b4-a625-48d7-b96d-ef02b203040d', '2024-10-23 17:20:49.410933+00', '2024-10-23 17:20:49.410933+00', 'oauth', '50ca8e48-8028-4ade-8002-50c8ea96a579'),
	('f4042fc2-dac9-4c6d-abbe-2a4029b0a646', '2024-10-23 06:16:32.118177+00', '2024-10-23 06:16:32.118177+00', 'password', '330486bf-8c51-4a81-88c5-0ed125c7088d'),
	('dec2f385-334a-4a30-88c9-d40701212e65', '2024-10-24 09:03:45.576681+00', '2024-10-24 09:03:45.576681+00', 'password', 'd7c81da8-9fea-46e3-9cac-e1cada41770c'),
	('581afaaf-e575-4671-bb10-173e5845a5d9', '2024-10-17 13:03:11.71456+00', '2024-10-17 13:03:11.71456+00', 'password', '05e24829-ce43-49e9-a4ba-9b8d1b333833');


--
-- Data for Name: hosts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."hosts" ("id", "personal_code", "bank_account") VALUES
	('6a392b5c-bae8-4264-bde2-32e1b29c247a', '9876543210', 'LT0123456789'),
	('70198215-84d6-4bac-a225-5641d4045855', '111111111', 'LT101010101010101010'),
	('e3e019d0-51f3-4545-81c2-dcfa29ef3c7b', '213124324234234', 'LT546645645647'),
	('32f8f198-a8c3-4dec-b5db-09d5daec2918', 'fdgdf', 'fdggfdgfdgdf'),
	('3ac51942-2ae7-471f-bf5c-d2f2a9ce1a2b', '213124324234234', 'LT546645645647');


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
	(2, false, 'Suite in a Charming Colonial Villa in San Angel', 'As guest at our house you can use all common areas like kitchen, living and dining room but above all the quiet garden. As we live in the same house you become part of our family and we can give you a deep insight into Mexican culture and life style.', 'Mexico City', 'Ciudad de México', 'Mexico', '2023-12-11 13:24:25.294', 6, 9300, 3, '6a392b5c-bae8-4264-bde2-32e1b29c247a'),
	(1, false, 'Lyon Presqu''ile apartment', 'We offer 1 room for rent in a large elegant apartment of 100m2 in the heart of Lyon for the Festival of Lights. Ideally located in the center of the festivities, between Place des Jacobins and Rue Mercière. 4 min walk to Bellecour or Cordeliers metro stations, and 8 min walk to Vieux Lyon or Terreaux. 10 min by bus/metro from the train stations.', 'Lyon', 'Auvergne-Rhône-Alpes', 'France', '2023-12-11 12:57:11.145', 4, 11569, 2, '6a392b5c-bae8-4264-bde2-32e1b29c247a'),
	(3, false, 'Rooms with La Paz', 'Enjoy the simplicity of this quiet and central home.', 'Puebla', 'Heroica Puebla de Zaragoza', 'Mexico', '2023-12-11 13:34:51.239', 8, 1100, 3, '6a392b5c-bae8-4264-bde2-32e1b29c247a'),
	(4, false, 'Cozy 3 BR Pool Villa Canggu Bali', 'Relax with the whole family at this peaceful place to stay.', 'Mexico City', 'Kecamatan Mengwi', 'Mexico', '2023-12-11 13:39:58.958', 6, 48066, 1, '6a392b5c-bae8-4264-bde2-32e1b29c247a'),
	(6, false, 'Sunset Hill Anyksciai - getaway SPA house', 'Relax in a modern and cozy cabin in a beautiful  Lithuanian nature. Disconnect from routine, noise, focus on yourself and each other. Connect with nature and watch the amazing sunsets.
The cottage has all modern conveniences and spacious  outdoor SPA hot tub just for yourselves.', 'Vajėšiai', 'Respublikos 15', 'Lithuania', '2023-12-15 15:26:39.349', 2, 11600, 1, '6a392b5c-bae8-4264-bde2-32e1b29c247a'),
	(8, false, '''Virš Ąžuolų'' - Forest SPA', 'One-bedroom two level ''Soprano’ apartment  is a newly restored one of the buildings located in National Park''s horse ranch near lake Plateliai and surrounded by nature.', 'Plungė', 'Miško 44', 'Lithuania', '2023-12-15 15:34:10.167', 4, 16500, 1, '6a392b5c-bae8-4264-bde2-32e1b29c247a'),
	(7, false, '''Above Oaks'' - Forest Spa-Brendis', 'Lalalalalala', 'Plungė', 'Platelių 99', 'Lithuania', '2023-12-15 15:30:25.451', 19, 17600, 1, '6a392b5c-bae8-4264-bde2-32e1b29c247a'),
	(9, false, 'Namas Kaune', 'Jaukus namelis su jacuzzi', 'Kaunas', 'Basas', 'Lithuania', '2023-12-18 07:44:44.118', 4, 3000, 1, '6a392b5c-bae8-4264-bde2-32e1b29c247a'),
	(10, false, 'asdasd', 'asdasd', 'Kaunas', 'asdasd', 'Lithuania', '2023-12-18 07:45:48.829', 25, 2500, 2, '6a392b5c-bae8-4264-bde2-32e1b29c247a'),
	(11, false, 'asdasd', 'asdasd', 'Kaunas', 'asdasd', 'Lithuania', '2023-12-18 07:46:17.396', 23, 300, 2, '6a392b5c-bae8-4264-bde2-32e1b29c247a'),
	(13, false, 'Algis', 'ghgf', 'ghfhgf', 'ghfhgf', 'fghfgh', '2024-09-18 17:53:15', 4, 101, 3, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(14, false, 'gfgdf', 'gfdfd', 'gfdgdf', 'gdfgdf', 'gddgf', '2024-09-26 17:40:15.95', 2, 100, 2, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(2753, false, 'My new listing', 'This is a description', 'Vilnius', 'Gedimino pr.', 'Lithuania', '2024-10-23 08:02:08.149', 5, 5000, 2, '3ac51942-2ae7-471f-bf5c-d2f2a9ce1a2b'),
	(1959, false, 'Test Listing', 'Test Description', 'Test City', 'Test Address', 'Test Country', '2024-10-21 07:16:12.764', 5, 7000, 1, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(1960, false, 'Test Listing', 'Test Description', 'Test City', 'Test Address', 'Test Country', '2024-10-21 07:16:12.847', 5, 7000, 1, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(2025, false, 'Test Listing', 'Test Description', 'Test City', 'Test Address', 'Test Country', '2024-10-21 10:50:36.502', 5, 7000, 1, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(2089, false, 'My new listing', 'This is a description', 'Vilnius', 'Gedimino pr.', 'Lithuania', '2024-10-23 07:03:37.138', 5, 5000, 2, '3ac51942-2ae7-471f-bf5c-d2f2a9ce1a2b'),
	(1015, false, 'My new listing', 'This is a description', 'Vilnius', 'Gedimino pr.', 'Lithuania', '2024-10-11 11:12:48.343', 5, 5000, 2, '3ac51942-2ae7-471f-bf5c-d2f2a9ce1a2b');


--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."profiles" ("id", "first_name", "last_name", "birth_date", "phone", "photo", "country", "city") VALUES
	('32f8f198-a8c3-4dec-b5db-09d5daec2918', 'Mantas', 'Jasikėnas', '2002-12-07', '+370656564564', 'https://images.unsplash.com/photo-1511367461989-f85a21fda167?q=80&w=1031&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Lithuania', 'Kaunas'),
	('6a392b5c-bae8-4264-bde2-32e1b29c247a', 'Sigis', 'Sigaitis', '2000-01-01', '+370645356464', 'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=1985&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', 'Lithuania', 'Kaunas'),
	('70198215-84d6-4bac-a225-5641d4045855', 'Vardenis', 'Pavardenis', '2002-12-05', '+37011111111', 'https://media.vanityfair.com/photos/63765577474812eb37ec70bc/master/pass/Headshot%20-%20credit%20%E2%80%9CNational%20Geographic%20for%20Disney+%E2%80%9D.jpg', 'Lithuania', 'Kaunas'),
	('e3e019d0-51f3-4545-81c2-dcfa29ef3c7b', 'urodas', 'rodzinskas', '1995-10-18', '+37068690666', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPP9lBfcrzZ0DCCY_jhCfo6qMFKc1j9mWU2A&s', 'Lithuania', 'Kaunas'),
	('3ac51942-2ae7-471f-bf5c-d2f2a9ce1a2b', 'Sigis', 'Sigaitis', '2001-10-03', '4545654454', 'https://images.pexels.com/photos/27850306/pexels-photo-27850306/free-photo-of-a-white-cat-sitting-on-top-of-a-rock.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', 'Lithuania', 'KN');


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
	(1, '2023-12-24', '2023-12-26', 35532, '2023-12-15 18:46:09.342', 1, 7, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(4, '2023-12-24', '2023-12-26', 20600, '2023-12-18 07:54:04.392', 1, 2, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(3, '2023-12-31', '2024-01-02', 20600, '2023-12-17 14:53:54.979', 1, 2, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(5, '2024-09-24', '2024-09-27', 50499, '2024-09-13 11:15:56.66', 1, 8, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(6, '2024-09-19', '2024-10-05', 148800, '2024-09-18 17:32:21.475', 1, 2, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(97, '2024-11-12', '2024-11-15', 27900, '2024-10-10 07:33:33.827', 1, 2, '3ac51942-2ae7-471f-bf5c-d2f2a9ce1a2b'),
	(2, '2023-12-22', '2023-12-23', 1100, '2023-12-15 18:51:04.051', 1, 3, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(7, '2024-09-29', '2024-10-05', 606, '2024-09-18 17:53:39.72', 1, 13, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(79, '2024-11-01', '2024-11-08', 65100, '2024-10-10 06:30:12.916', 1, 2, '3ac51942-2ae7-471f-bf5c-d2f2a9ce1a2b'),
	(104, '2024-11-12', '2024-11-15', 27900, '2024-10-10 07:54:08.632', 1, 2, '3ac51942-2ae7-471f-bf5c-d2f2a9ce1a2b'),
	(98, '2024-11-12', '2024-11-15', 27900, '2024-10-10 07:37:40.761', 1, 2, '3ac51942-2ae7-471f-bf5c-d2f2a9ce1a2b'),
	(99, '2024-11-12', '2024-11-15', 27900, '2024-10-10 07:41:37.872', 1, 2, '3ac51942-2ae7-471f-bf5c-d2f2a9ce1a2b'),
	(100, '2024-11-12', '2024-11-15', 27900, '2024-10-10 07:42:53.736', 1, 2, '3ac51942-2ae7-471f-bf5c-d2f2a9ce1a2b'),
	(263, '2023-01-01', '2023-01-02', 100, '2024-10-11 09:45:29.767', 1, 1, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(101, '2024-11-12', '2024-11-15', 27900, '2024-10-10 07:44:08.836', 1, 2, '3ac51942-2ae7-471f-bf5c-d2f2a9ce1a2b'),
	(102, '2024-11-12', '2024-11-15', 27900, '2024-10-10 07:46:03.845', 1, 2, '3ac51942-2ae7-471f-bf5c-d2f2a9ce1a2b'),
	(16, '2023-01-01', '2023-01-02', 100, '2024-10-09 08:32:46.443', 1, 1, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(17, '2023-01-01', '2023-01-02', 100, '2024-10-09 08:32:47.758', 1, 1, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(18, '2023-01-01', '2023-01-02', 100, '2024-10-09 08:32:48.591', 1, 1, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(19, '2023-01-01', '2023-01-02', 100, '2024-10-09 08:32:49.585', 1, 1, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(20, '2023-01-01', '2023-01-02', 100, '2024-10-09 08:32:50.422', 1, 1, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(21, '2023-01-01', '2023-01-02', 100, '2024-10-09 08:32:51.186', 1, 1, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(22, '2023-01-01', '2023-01-02', 100, '2024-10-09 08:32:51.928', 1, 1, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(23, '2023-01-01', '2023-01-02', 100, '2024-10-09 08:32:52.98', 1, 1, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(24, '2023-01-01', '2023-01-02', 100, '2024-10-09 08:35:14.781', 1, 1, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(25, '2023-01-01', '2023-01-02', 100, '2024-10-09 08:37:49.038', 1, 1, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(26, '2023-01-01', '2023-01-02', 100, '2024-10-09 08:37:50.207', 1, 1, '32f8f198-a8c3-4dec-b5db-09d5daec2918'),
	(27, '2024-11-12', '2024-11-15', '27900', '2024-10-24 12:35:29.19', '1', '1015','3ac51942-2ae7-471f-bf5c-d2f2a9ce1a2b'),
	(28, '2024-11-12', '2024-11-15', '27900', '2024-10-24 12:35:29.19', '1', '1015','3ac51942-2ae7-471f-bf5c-d2f2a9ce1a2b'),
	(29, '2024-11-12', '2024-11-15', '27900', '2024-10-24 12:35:29.19', '1', '1015','3ac51942-2ae7-471f-bf5c-d2f2a9ce1a2b'),
	(30, '2024-11-12', '2024-11-15', '27900', '2024-10-24 12:35:29.19', '1', '1015','3ac51942-2ae7-471f-bf5c-d2f2a9ce1a2b');


--
-- Data for Name: services; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."services" ("id", "title", "description", "price", "listing_id") OVERRIDING SYSTEM VALUE VALUES
	(1, 'Essentials', 'Towels, bed sheets, soap, and toilet paper', 1000, 1),
	(2, 'Dishes and silverware', 'Bowls, chopsticks, plates, cups, etc.', 500, 1),
	(3, 'Barbecue utensils', 'Grill, charcoal, bamboo skewers/iron skewers, etc.', 2000, 2),
	(4, 'Extra cleaning', 'Additional house cleaning', 596, 6),
	(5, 'Sound system', 'JBL Professional Loudspeakers', 999, 6),
	(6, 'Parking', 'Free car parking', 1132, 7),
	(7, 'Xbox', 'Xbox One S console', 999, 8),
	(8, 'Pusryciai', 'Pusryciai jauku', 2000, 9);


--
-- Data for Name: ordered_services; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."ordered_services" ("id", "service_id", "reservation_id") VALUES
	(3, 3, 4),
	(1, 6, 1),
	(2, 3, 3),
	(4, 7, 5),
	(5, 1, 16),
	(6, 1, 17),
	(7, 1, 18),
	(8, 1, 19),
	(9, 1, 20),
	(10, 1, 21);


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

--
-- Data for Name: photos; Type: TABLE DATA; Schema: public; Owner: postgres
--

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
	(17, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_6/1702653999646_rCJjrTyA6EnKAhsUbqJn6_51ed6c57-1e38-4979-885d-35fd70757b6d.webp', 6),
	(18, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_6/1702654000371_Bo_kA5b2al1XjYH_dRX3g_32f1c57a-0329-4f27-8b8c-f8041177a93d.webp', 6),
	(19, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_6/1702654000928__K0byOfhrq90Ex3W_yvK__1ec460d2-d726-4966-9002-da45277add7d.webp', 6),
	(20, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_6/1702654001391_g9-x-yNGjz2gZzbfQPVP6_c5dbd2d1-5652-4c26-b30b-6a8e43c45c0b.webp', 6),
	(21, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_7/1702654225710_v2xcLjZH-0ohxnOha61lh_c63dfd41-cd93-4021-9bb1-1d8f9c229b7d.webp', 7),
	(22, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_7/1702654226269_i7K08hoiF-Fo4CG-BX-DX_adfd4313-48b0-44ee-8a3e-c7798e988826.webp', 7),
	(23, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_7/1702654226583_VU6iy8IUsSperL9ONhQRh_152ece8a-8b4f-483e-bd7f-ef2d5186a30e.webp', 7),
	(24, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_7/1702654226985_WTSQwnjcuIPiwsyRaGOar_81273ab9-255f-4ba4-a0db-aac13217b073.webp', 7),
	(25, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_8/1702654450428_w7MYrV-ieSv0sbPxRWtbr_d4d856e3-f909-4690-8301-3035fa17dd3e.webp', 8),
	(26, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_8/1702654451013_tdJVUMaG23pe__9TP8vrA_78b9665c-633c-4bf6-b670-bbf7e8c2f5d8.webp', 8),
	(27, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_8/1702654451328_xX_04-gXRPCYjOeVB1g5Q_39891a7a-2ed2-47c8-8027-d4ef4995ceee.webp', 8),
	(28, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_8/1702654451833_k1CaxsynBEQph-J3UFnFa_abbc8875-fd4b-4c74-b830-df519a7ec7b1.webp', 8),
	(29, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_8/1702654452233_5lWutYZSrk8F0ilj6E1hU_38b7332c-c7f6-408c-a0e8-a1abd111b79c.webp', 8),
	(30, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_9/1702885484408_UWgRUnKOFJSiCxwMcE3Bl_1686314317100_ChrisHemsworthh.webp', 9),
	(35, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_13/1726681995232_9TGjHvSUC_670O1C59iHv_code.png', 13),
	(36, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_14/1727372416197_vP01_ESZfOGmCSHXuVTS4_clean-code.png', 14),
	(46, 'https://vswqjtfkqofxjzlfxdzc.supabase.co/storage/v1/object/public/images/listing_3085/1729704128117_84uXfLRHF2VVZHWuTjNgU_test.jpg', 3085);


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") VALUES
	('images', 'images', NULL, '2023-12-08 21:23:17.084772+00', '2023-12-08 21:23:17.084772+00', true, false, NULL, NULL, NULL);


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

INSERT INTO "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata") VALUES
	('96d4b826-b65e-43e9-9285-9864f2b2816b', 'images', 'listing_7/1702654225710_v2xcLjZH-0ohxnOha61lh_c63dfd41-cd93-4021-9bb1-1d8f9c229b7d.webp', NULL, '2023-12-15 15:30:25.862353+00', '2023-12-15 15:30:25.862353+00', '2023-12-15 15:30:25.862353+00', '{"eTag": "\"c517270e66d354fbdd3aeb02d3ea5268\"", "size": 47332, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T15:30:26.000Z", "contentLength": 47332, "httpStatusCode": 200}', '22d69857-392f-4156-acee-5f3c8cb12a91', NULL, NULL),
	('1e146360-a7bd-4c2d-a1ac-85c441271259', 'images', 'listing_7/1702654226269_i7K08hoiF-Fo4CG-BX-DX_adfd4313-48b0-44ee-8a3e-c7798e988826.webp', NULL, '2023-12-15 15:30:26.254337+00', '2023-12-15 15:30:26.254337+00', '2023-12-15 15:30:26.254337+00', '{"eTag": "\"f99069cb275ff8b5d0f72b3118b4e605\"", "size": 37320, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T15:30:27.000Z", "contentLength": 37320, "httpStatusCode": 200}', '84c5e445-cc96-43e4-a470-a6ac8317ae9b', NULL, NULL),
	('4f6f6757-0904-4a9a-ad51-5071d6f640b8', 'images', 'listing_7/1702654226583_VU6iy8IUsSperL9ONhQRh_152ece8a-8b4f-483e-bd7f-ef2d5186a30e.webp', NULL, '2023-12-15 15:30:26.672935+00', '2023-12-15 15:30:26.672935+00', '2023-12-15 15:30:26.672935+00', '{"eTag": "\"27326946469ac95dca3ecaa26e849203\"", "size": 4952, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T15:30:27.000Z", "contentLength": 4952, "httpStatusCode": 200}', 'bdd54c20-25ac-45c7-82bc-68e1a313eb67', NULL, NULL),
	('3ddb223c-ede3-461e-9e40-e45cf1484450', 'images', 'listing_7/1702654226985_WTSQwnjcuIPiwsyRaGOar_81273ab9-255f-4ba4-a0db-aac13217b073.webp', NULL, '2023-12-15 15:30:27.252581+00', '2023-12-15 15:30:27.252581+00', '2023-12-15 15:30:27.252581+00', '{"eTag": "\"7afa16340b3a4ec865e965da44d87bb4\"", "size": 156238, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T15:30:28.000Z", "contentLength": 156238, "httpStatusCode": 200}', '4e191798-372e-465b-a3cd-f16b5bf9a434', NULL, NULL),
	('8c90270d-197e-407c-9fe7-23d28db53017', 'images', 'listing_2/1702301065458_KeJUHRvLwt2gUS5U38TFI_bba9e521-d121-4d70-9380-f2d40b50f435.webp', NULL, '2023-12-15 10:24:20.139047+00', '2023-12-15 10:24:20.139047+00', '2023-12-15 10:24:20.139047+00', '{"eTag": "\"0c3a908f58ac64b5f0840e07170f43b7\"", "size": 85708, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T10:24:21.000Z", "contentLength": 85708, "httpStatusCode": 200}', 'c9db6ab4-8900-46dc-b20d-8a2f044ab0ac', NULL, NULL),
	('085ea58f-1626-45b3-b5a7-45ecf2532372', 'images', 'listing_3/1702301691310_mwJIZwb9AOSFNnK9klTEa_0b9fdb4a-3b6b-458a-bc1f-45bf9e392fef.webp', NULL, '2023-12-15 10:24:27.995781+00', '2023-12-15 10:24:27.995781+00', '2023-12-15 10:24:27.995781+00', '{"eTag": "\"f9ef700b207446d40680d76753d3dcb6\"", "size": 132186, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T10:24:28.000Z", "contentLength": 132186, "httpStatusCode": 200}', 'e32d16ea-8909-4c1e-a95e-6909671c1b0b', NULL, NULL),
	('b1e18f6d-858c-46ff-b833-87dd58afcd2c', 'images', 'listing_3/1702301691438_5qVJnm25hjuQHGlBv_k7Q_282ffc30-42bd-402e-b09e-48160b85d39a.webp', NULL, '2023-12-15 10:24:28.044179+00', '2023-12-15 10:24:28.044179+00', '2023-12-15 10:24:28.044179+00', '{"eTag": "\"02c373c7758459fbdfd4c016addb0442\"", "size": 48428, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T10:24:28.000Z", "contentLength": 48428, "httpStatusCode": 200}', 'a6b54f61-0da4-48c1-95c9-9eef525cc31a', NULL, NULL),
	('6f5d344f-396c-4950-9a75-f294e9df1055', 'images', 'listing_3/1702301691360_G3UjemyVKLDi4AGTtmXoY_d6dc580f-63c3-4a8a-b4a3-4ac98fab94a4.webp', NULL, '2023-12-15 10:24:28.337179+00', '2023-12-15 10:24:28.337179+00', '2023-12-15 10:24:28.337179+00', '{"eTag": "\"019019606c3d79f52154895fd3ddb65a\"", "size": 73158, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T10:24:28.000Z", "contentLength": 73158, "httpStatusCode": 200}', 'c2e9f0ac-7ec0-4361-9350-764e63586da3', NULL, NULL),
	('3577960d-04a3-45a2-a4aa-897945931258', 'images', '.emptyFolderPlaceholder', NULL, '2023-12-08 22:44:50.638815+00', '2023-12-08 22:44:50.638815+00', '2023-12-08 22:44:50.638815+00', '{"eTag": "\"d41d8cd98f00b204e9800998ecf8427e\"", "size": 0, "mimetype": "application/octet-stream", "cacheControl": "max-age=3600", "lastModified": "2023-12-08T22:44:51.000Z", "contentLength": 0, "httpStatusCode": 200}', '3d94e325-e331-43d7-9b3b-4a794b14f781', NULL, NULL),
	('ae5cdc45-e798-42cf-840e-80c90f0e76b8', 'images', 'listing_8/1702654450428_w7MYrV-ieSv0sbPxRWtbr_d4d856e3-f909-4690-8301-3035fa17dd3e.webp', NULL, '2023-12-15 15:34:10.578975+00', '2023-12-15 15:34:10.578975+00', '2023-12-15 15:34:10.578975+00', '{"eTag": "\"002c84775975ac29706ca68559f4b361\"", "size": 28904, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T15:34:11.000Z", "contentLength": 28904, "httpStatusCode": 200}', 'e54bdc6b-d45c-4757-94ac-10c4671751ae', NULL, NULL),
	('0bfdb6d2-e409-4a03-a19e-461f19d1710c', 'images', 'listing_8/1702654451013_tdJVUMaG23pe__9TP8vrA_78b9665c-633c-4bf6-b670-bbf7e8c2f5d8.webp', NULL, '2023-12-15 15:34:11.018063+00', '2023-12-15 15:34:11.018063+00', '2023-12-15 15:34:11.018063+00', '{"eTag": "\"0afb37b447cd31af3e2fabee71954149\"", "size": 24196, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T15:34:11.000Z", "contentLength": 24196, "httpStatusCode": 200}', 'e1920707-d7bf-4756-b5bd-5593b56fcb7b', NULL, NULL),
	('52863fc1-5345-46a4-b2b9-b3ab252d34bc', 'images', 'listing_8/1702654451328_xX_04-gXRPCYjOeVB1g5Q_39891a7a-2ed2-47c8-8027-d4ef4995ceee.webp', NULL, '2023-12-15 15:34:11.524232+00', '2023-12-15 15:34:11.524232+00', '2023-12-15 15:34:11.524232+00', '{"eTag": "\"0e5d9e2004bf549c52137e2c08604191\"", "size": 37774, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T15:34:12.000Z", "contentLength": 37774, "httpStatusCode": 200}', '30c38e88-f453-407c-9716-ac6f1034162c', NULL, NULL),
	('7930d0e2-d79d-47ef-b148-9026f5844ea4', 'images', 'listing_8/1702654451833_k1CaxsynBEQph-J3UFnFa_abbc8875-fd4b-4c74-b830-df519a7ec7b1.webp', NULL, '2023-12-15 15:34:11.832156+00', '2023-12-15 15:34:11.832156+00', '2023-12-15 15:34:11.832156+00', '{"eTag": "\"9211636fcd1abcaad33eeacb3b9d0b30\"", "size": 20136, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T15:34:12.000Z", "contentLength": 20136, "httpStatusCode": 200}', 'a0de9a05-7e3b-40fd-8ce3-14a5a8df6c77', NULL, NULL),
	('443a8dfd-109c-4c75-ac8e-d445f209f9aa', 'images', 'listing_8/1702654452233_5lWutYZSrk8F0ilj6E1hU_38b7332c-c7f6-408c-a0e8-a1abd111b79c.webp', NULL, '2023-12-15 15:34:12.393729+00', '2023-12-15 15:34:12.393729+00', '2023-12-15 15:34:12.393729+00', '{"eTag": "\"20a70fd3a3d2d836d7b521ece123b440\"", "size": 90824, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T15:34:13.000Z", "contentLength": 90824, "httpStatusCode": 200}', '015dd8b8-c0dd-42bb-8807-424af5539ee8', NULL, NULL),
	('618c1978-02ca-4d37-a340-0f1e008e0114', 'images', 'listing_9/1702885484408_UWgRUnKOFJSiCxwMcE3Bl_1686314317100_ChrisHemsworthh.webp', NULL, '2023-12-18 07:44:33.44311+00', '2023-12-18 07:44:33.44311+00', '2023-12-18 07:44:33.44311+00', '{"eTag": "\"8217eaf0d78f8ca6d1f404fbf237c649\"", "size": 13682, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-18T07:44:34.000Z", "contentLength": 13682, "httpStatusCode": 200}', '58d9eb52-a30f-4074-9f88-55cadff35a5b', NULL, NULL),
	('4ffe8d78-d490-4bf2-8582-303271b0e418', 'images', 'listing_2/1702301065535_aO_gSiulyYOUe00KcL3z5_2fd67464-8da1-419d-b8f7-dcb840a1be0a.webp', NULL, '2023-12-15 10:24:20.144593+00', '2023-12-15 10:24:20.144593+00', '2023-12-15 10:24:20.144593+00', '{"eTag": "\"521c27d85a4f2f481db421e659bb7495\"", "size": 57774, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T10:24:21.000Z", "contentLength": 57774, "httpStatusCode": 200}', 'a8c7ad4b-2dce-4f30-9c74-a555bb23a5d9', NULL, NULL),
	('10ad7f12-72f2-498f-bef9-d12d4d2fece0', 'images', 'listing_4/1702301999121_67a-_OHLBCT6NgkF5fRa0_fd9b1883-9a85-402e-82b2-351fa73e2661.webp', NULL, '2023-12-15 10:24:36.008193+00', '2023-12-15 10:24:36.008193+00', '2023-12-15 10:24:36.008193+00', '{"eTag": "\"d1ef6ce66246561f94a6fead4b8c0e0e\"", "size": 9872, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T10:24:36.000Z", "contentLength": 9872, "httpStatusCode": 200}', '67b0a16b-548d-440a-9dc1-724379434a36', NULL, NULL),
	('18712851-97cc-4cb3-876f-788ab4a47f80', 'images', 'listing_4/1702301999198_OR5KG2ViGnPBSe8SpTyAq_f57bff01-204f-4519-9943-eb1e18e108d2.webp', NULL, '2023-12-15 10:24:36.037016+00', '2023-12-15 10:24:36.037016+00', '2023-12-15 10:24:36.037016+00', '{"eTag": "\"dd9a900d83aef8c78a5444a5d9fe0101\"", "size": 26076, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T10:24:36.000Z", "contentLength": 26076, "httpStatusCode": 200}', '8ba835dc-0da3-4c55-9fbc-58e144404586', NULL, NULL),
	('bc4f2206-a141-4d21-ba43-4c7790b414e3', 'images', 'listing_4/1702301999031_Wm5dlu_A_vn0N6fs8kFKG_0a90ffe5-9ee0-4406-8272-771bb1fd9341.webp', NULL, '2023-12-15 10:24:36.164606+00', '2023-12-15 10:24:36.164606+00', '2023-12-15 10:24:36.164606+00', '{"eTag": "\"add13c13e54d898b2e355542a535c679\"", "size": 9048, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T10:24:37.000Z", "contentLength": 9048, "httpStatusCode": 200}', '5a98b67f-7797-46d5-bafc-84b770ceb58d', NULL, NULL),
	('70e2ac7d-1013-4b2c-80aa-bf790a1c183d', 'images', 'listing_4/1702301999269_jnwJtF7DvVOv4o1Vr_VAS_d1dfe4d3-950d-4aa2-afc6-f83b51c3f227.webp', NULL, '2023-12-15 10:24:36.215014+00', '2023-12-15 10:24:36.215014+00', '2023-12-15 10:24:36.215014+00', '{"eTag": "\"099f7aef1f464bf92d41240d8aeeb83b\"", "size": 38010, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T10:24:37.000Z", "contentLength": 38010, "httpStatusCode": 200}', 'f61c1957-44c2-46ea-9bd1-3f0c13fb54a9', NULL, NULL),
	('f15380c8-2bf3-4cac-8abf-ec4e93682b83', 'images', 'listing_6/1702653999646_rCJjrTyA6EnKAhsUbqJn6_51ed6c57-1e38-4979-885d-35fd70757b6d.webp', NULL, '2023-12-15 15:26:40.017735+00', '2023-12-15 15:26:40.017735+00', '2023-12-15 15:26:40.017735+00', '{"eTag": "\"fe2d4996662924aa5802afa713c57be4\"", "size": 168896, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T15:26:40.000Z", "contentLength": 168896, "httpStatusCode": 200}', '4efd3dcc-19ad-4fb6-8ae2-4856b83c5bb1', NULL, NULL),
	('147900a1-d229-4864-9847-b9c876a314fc', 'images', 'listing_6/1702654000371_Bo_kA5b2al1XjYH_dRX3g_32f1c57a-0329-4f27-8b8c-f8041177a93d.webp', NULL, '2023-12-15 15:26:40.48487+00', '2023-12-15 15:26:40.48487+00', '2023-12-15 15:26:40.48487+00', '{"eTag": "\"262217b9666f38862055991d5aa57645\"", "size": 22794, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T15:26:41.000Z", "contentLength": 22794, "httpStatusCode": 200}', '8a27e588-a85d-4687-b93a-7cf9c111f5c0', NULL, NULL),
	('2f2aa6ea-a93d-480a-b56a-723152fca717', 'images', 'listing_1/1702299730744_6PdMY-j9A21cY1rYi154w_7a2002a7-a8dd-4c4e-8da2-e0e4643dcf67.jpeg', NULL, '2023-12-15 10:24:11.353697+00', '2023-12-15 10:24:11.353697+00', '2023-12-15 10:24:11.353697+00', '{"eTag": "\"4d0dd7d121cad5e4fea10f34da3066a1\"", "size": 20452, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T10:24:12.000Z", "contentLength": 20452, "httpStatusCode": 200}', '16ad16fc-732c-46a4-90d4-f4461b3663e2', NULL, NULL),
	('8e32e427-7ab1-4f51-a2fa-663d43c2b692', 'images', 'listing_6/1702654000928__K0byOfhrq90Ex3W_yvK__1ec460d2-d726-4966-9002-da45277add7d.webp', NULL, '2023-12-15 15:26:41.065315+00', '2023-12-15 15:26:41.065315+00', '2023-12-15 15:26:41.065315+00', '{"eTag": "\"65d166abfc778e253307616119eb3e00\"", "size": 48832, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T15:26:41.000Z", "contentLength": 48832, "httpStatusCode": 200}', 'c8e2221f-a76f-42be-8322-0455ec248b05', NULL, NULL),
	('2e571d72-9abe-469b-8186-ba52170696b5', 'images', 'listing_2/1702301065373_MhwInDUqZrWn80b6-ZhlT_93fbbe88-219f-4152-bafc-ce7299f99bc4.webp', NULL, '2023-12-15 10:24:19.997107+00', '2023-12-15 10:24:19.997107+00', '2023-12-15 10:24:19.997107+00', '{"eTag": "\"a67776004e6139bfaadedd20dedde262\"", "size": 107266, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T10:24:20.000Z", "contentLength": 107266, "httpStatusCode": 200}', '37660ff9-5ecc-497f-9459-c29d5cb7c4a2', NULL, NULL),
	('12795387-79c1-4dc0-93ab-3a6d54a52839', 'images', 'listing_6/1702654001391_g9-x-yNGjz2gZzbfQPVP6_c5dbd2d1-5652-4c26-b30b-6a8e43c45c0b.webp', NULL, '2023-12-15 15:26:41.54806+00', '2023-12-15 15:26:41.54806+00', '2023-12-15 15:26:41.54806+00', '{"eTag": "\"fb23d8420cbfc04a5d3107006207d259\"", "size": 107420, "mimetype": "image/webp", "cacheControl": "max-age=3600", "lastModified": "2023-12-15T15:26:42.000Z", "contentLength": 107420, "httpStatusCode": 200}', 'c715fc10-b689-4299-a6e9-a6fc2bf49335', NULL, NULL),
	('ee9ed477-6160-4c14-8e2f-b8524a860dc4', 'images', 'listing_13/1726681995232_9TGjHvSUC_670O1C59iHv_code.png', NULL, '2024-09-18 17:53:15.179885+00', '2024-09-18 17:53:15.179885+00', '2024-09-18 17:53:15.179885+00', '{"eTag": "\"f7e6da1ff3cdbfd70835ee069d95c294\"", "size": 14377, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2024-09-18T17:53:16.000Z", "contentLength": 14377, "httpStatusCode": 200}', '402dc546-2b4e-400a-b275-422cfb2e0069', NULL, '{}'),
	('d87b1fa6-9e2e-4893-aa71-dc21faf19f8e', 'images', 'listing_14/1727372416197_vP01_ESZfOGmCSHXuVTS4_clean-code.png', NULL, '2024-09-26 17:40:14.290514+00', '2024-09-26 17:40:14.290514+00', '2024-09-26 17:40:14.290514+00', '{"eTag": "\"77df9c9891a132e13d84439861756812\"", "size": 24062, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2024-09-26T17:40:15.000Z", "contentLength": 24062, "httpStatusCode": 200}', 'f883dae6-f64a-49b8-a77d-e1e719ad2a9b', NULL, '{}'),
	('f2a53b1c-d166-45a1-97fe-65f35cfb5413', 'images', 'listing_41/1728548086647_14WM0C0GmtrXt5YRF-Rkl_FireFireFire-3.png', NULL, '2024-10-10 08:14:47.82675+00', '2024-10-10 08:14:47.82675+00', '2024-10-10 08:14:47.82675+00', '{"eTag": "\"873ade11f3fca929d32176674a19632c\"", "size": 1607, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2024-10-10T08:14:48.000Z", "contentLength": 1607, "httpStatusCode": 200}', '79fad03b-bb54-4dfc-8464-2e0786954fb8', NULL, '{}'),
	('74fb582b-d020-4e06-ac08-15235df27002', 'images', 'listing_892/1728561256908_IwvV749Xvvw5sUN7BSZeA_FireFireFire-2.png', NULL, '2024-10-10 11:54:17.777288+00', '2024-10-10 11:54:17.777288+00', '2024-10-10 11:54:17.777288+00', '{"eTag": "\"4e7a27085c5fe63088687fc8bc0aa914\"", "size": 1557, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2024-10-10T11:54:18.000Z", "contentLength": 1557, "httpStatusCode": 200}', '0cbcbf1d-0ad5-4b59-a1b6-ef53ff507f7b', NULL, '{}'),
	('a12104bb-c86f-43ad-9c74-84d75f14d301', 'images', 'listing_892/1728561258149_D8ZdPGFXMXFiMQh-hpDgb_FireFireFire-3.png', NULL, '2024-10-10 11:54:19.053686+00', '2024-10-10 11:54:19.053686+00', '2024-10-10 11:54:19.053686+00', '{"eTag": "\"873ade11f3fca929d32176674a19632c\"", "size": 1607, "mimetype": "image/png", "cacheControl": "max-age=3600", "lastModified": "2024-10-10T11:54:19.000Z", "contentLength": 1607, "httpStatusCode": 200}', 'be492ffe-3267-43c8-9ea0-0a72fdf121b3', NULL, '{}'),
	('9e44e71a-3f2f-43a9-a295-ef97875eb50b', 'images', 'listing_2086/1729664752939_6P0VLI75wInMrz-ivsFvV_test.jpg', NULL, '2024-10-23 06:25:53.426948+00', '2024-10-23 06:25:53.426948+00', '2024-10-23 06:25:53.426948+00', '{"eTag": "\"5575c33fcff1a9dbe95726c167317ba9\"", "size": 10281, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-10-23T06:25:54.000Z", "contentLength": 10281, "httpStatusCode": 200}', '1d73a070-80ca-4bb1-b7da-96ea49a7005e', NULL, '{}'),
	('738aa8c7-3e4c-44be-a268-8771855cab81', 'images', 'listing_2085/1729670526923_xCZ4szVJUhmhySSFZ00GX_test.jpg', NULL, '2024-10-23 08:02:07.455213+00', '2024-10-23 08:02:07.455213+00', '2024-10-23 08:02:07.455213+00', '{"eTag": "\"5575c33fcff1a9dbe95726c167317ba9\"", "size": 10281, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-10-23T08:02:08.000Z", "contentLength": 10281, "httpStatusCode": 200}', 'dd99650c-106c-438c-9649-0041251a1036', NULL, '{}'),
	('eb1d4f1d-5eaf-4c72-956b-19e01a8fd013', 'images', 'listing_2753/1729670528248_8WB0xRNfi_mPfaoQWvvL1_test.jpg', NULL, '2024-10-23 08:02:08.654014+00', '2024-10-23 08:02:08.654014+00', '2024-10-23 08:02:08.654014+00', '{"eTag": "\"5575c33fcff1a9dbe95726c167317ba9\"", "size": 10281, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-10-23T08:02:09.000Z", "contentLength": 10281, "httpStatusCode": 200}', '951aa499-6b4a-49fb-9183-d55718bac038', NULL, '{}'),
	('32d12511-d5a4-412d-af5f-0f39adff2d96', 'images', 'listing_3083/1729703644425_qVqxddaWL6rcB0gFQLtp9_test.jpg', NULL, '2024-10-23 17:14:04.933567+00', '2024-10-23 17:14:04.933567+00', '2024-10-23 17:14:04.933567+00', '{"eTag": "\"5575c33fcff1a9dbe95726c167317ba9\"", "size": 10281, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-10-23T17:14:05.000Z", "contentLength": 10281, "httpStatusCode": 200}', '8cdc3a04-aa4c-4908-b273-d8baea201563', NULL, '{}'),
	('7b7c335f-75b4-4171-88e6-1e3ace86fc1f', 'images', 'listing_3086/1729703771638_B_MsZ5h-BY3_aiNUeha5R_test.jpg', NULL, '2024-10-23 17:16:11.96979+00', '2024-10-23 17:16:11.96979+00', '2024-10-23 17:16:11.96979+00', '{"eTag": "\"5575c33fcff1a9dbe95726c167317ba9\"", "size": 10281, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-10-23T17:16:12.000Z", "contentLength": 10281, "httpStatusCode": 200}', '6d475fdd-76ab-4f40-a524-f39180d0dc11', NULL, '{}'),
	('940790aa-33e2-4697-aa85-09fb64712cb3', 'images', 'listing_3085/1729704128117_84uXfLRHF2VVZHWuTjNgU_test.jpg', NULL, '2024-10-23 17:22:08.216662+00', '2024-10-23 17:22:08.216662+00', '2024-10-23 17:22:08.216662+00', '{"eTag": "\"5575c33fcff1a9dbe95726c167317ba9\"", "size": 10281, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2024-10-23T17:22:09.000Z", "contentLength": 10281, "httpStatusCode": 200}', 'c4cc4a53-5915-4e36-b636-155c9b9df380', NULL, '{}');


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1787, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: listings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."listings_id_seq"', 3087, true);


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."messages_id_seq"', 5, true);


--
-- Name: ordered_services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."ordered_services_id_seq"', 2214, true);


--
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."payments_id_seq"', 270, true);


--
-- Name: photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."photos_id_seq"', 46, true);


--
-- Name: reservations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."reservations_id_seq"', 2652, true);


--
-- Name: services_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."services_id_seq"', 2462, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
