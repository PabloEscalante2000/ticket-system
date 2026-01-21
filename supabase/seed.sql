SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict p9DcwKKsD7osAOYoJaKkU53F3tq9I5lQ6OrL0dgUe8pcJ5LLbXxRREiC6a8JUd6

-- Dumped from database version 17.6
-- Dumped by pg_dump version 17.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
	('00000000-0000-0000-0000-000000000000', '0f6c721f-41e6-4e58-a8d1-95fc3a1cc127', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"root@gmail.com","user_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","user_phone":""}}', '2025-12-11 20:04:47.12922+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f8cb7278-01e1-4450-88fc-40eaad8e07ec', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-12-11 21:16:27.651029+00', ''),
	('00000000-0000-0000-0000-000000000000', '5ce1107f-8409-4fd2-ab6d-ec6fb6e804cb', '{"action":"logout","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-11 21:57:40.958816+00', ''),
	('00000000-0000-0000-0000-000000000000', '312f5035-c554-4a73-9685-2237d01bac2d', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-12-12 13:19:46.791531+00', ''),
	('00000000-0000-0000-0000-000000000000', '09f68049-7ba9-48cf-b4e4-28f4ed998e64', '{"action":"logout","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-12 13:23:53.378197+00', ''),
	('00000000-0000-0000-0000-000000000000', '03ae09d1-8bfe-428c-a727-b7890e641fec', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-12-12 13:24:06.523531+00', ''),
	('00000000-0000-0000-0000-000000000000', '36e8aa38-4603-4a0e-8910-48ef2fa9aff7', '{"action":"token_refreshed","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-12-12 14:32:18.209133+00', ''),
	('00000000-0000-0000-0000-000000000000', '3f328488-bf88-483e-9824-04b75fcde20d', '{"action":"token_revoked","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"token"}', '2025-12-12 14:32:18.21476+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b1b9a941-d522-4003-9fa7-f4e4ee92a2f9', '{"action":"logout","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-12 14:41:42.215658+00', ''),
	('00000000-0000-0000-0000-000000000000', '8515ec27-fc84-4e3e-815d-8201d30ca778', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-12-12 14:41:55.114304+00', ''),
	('00000000-0000-0000-0000-000000000000', '8a5723ac-fe50-48ae-a0c8-543d0b8b54ef', '{"action":"logout","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-12 15:30:23.049946+00', ''),
	('00000000-0000-0000-0000-000000000000', '89cd6c21-7b31-4f75-aed1-5f536ece0df7', '{"action":"user_recovery_requested","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-12-12 17:41:03.927934+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c76e1049-7579-49e6-8df7-a9a74aab55fb', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-12 17:46:13.270721+00', ''),
	('00000000-0000-0000-0000-000000000000', '19bd43eb-bbf3-4c15-8cae-7be6ea7d9da5', '{"action":"user_recovery_requested","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-12-12 17:50:18.691157+00', ''),
	('00000000-0000-0000-0000-000000000000', '5ab4054b-1ef4-45d4-b2c1-07f41f2fa4ee', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-12 17:50:26.886302+00', ''),
	('00000000-0000-0000-0000-000000000000', '089c74e0-5c14-443f-8fcb-6f06ad46cd48', '{"action":"user_recovery_requested","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-12-12 17:55:21.091838+00', ''),
	('00000000-0000-0000-0000-000000000000', 'fa5c671f-bc99-441b-80b6-14adec1a6c44', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-12 17:55:28.352672+00', ''),
	('00000000-0000-0000-0000-000000000000', '9ae7a0f3-cb82-475d-99b8-4b718d10b1a3', '{"action":"user_recovery_requested","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-12-13 13:33:57.089494+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e4211234-fbb1-473f-af20-9afbb88e1a77', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-13 13:34:06.108786+00', ''),
	('00000000-0000-0000-0000-000000000000', '209677b0-00ea-47cb-b551-938c22788508', '{"action":"user_recovery_requested","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-12-13 13:50:14.532028+00', ''),
	('00000000-0000-0000-0000-000000000000', '7543e68e-8445-40b1-b5a3-3751dc542a1c', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-13 13:50:19.439669+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ea8c600a-2843-4c17-bade-c1691a096c22', '{"action":"user_recovery_requested","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-12-13 14:11:04.548135+00', ''),
	('00000000-0000-0000-0000-000000000000', '25ff9354-396c-4b3c-bc0b-efe023a54575', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-13 14:11:09.544343+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cfefde1d-8c4a-4200-91ac-e24466044363', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2025-12-13 14:12:04.036393+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd4b831dc-75fb-4e17-9b54-22ed2ffec085', '{"action":"logout","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-13 14:12:10.295144+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b6c388bc-c345-4d6c-9a43-842b809cff4a', '{"action":"user_recovery_requested","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-12-13 14:15:02.214729+00', ''),
	('00000000-0000-0000-0000-000000000000', '944f9f72-a12c-43c7-bab5-ce58301e7077', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-13 14:16:36.877057+00', ''),
	('00000000-0000-0000-0000-000000000000', '54778242-b0da-4ddf-9608-f3511d26e409', '{"action":"user_recovery_requested","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-12-13 15:06:38.680899+00', ''),
	('00000000-0000-0000-0000-000000000000', '272bae72-bcd0-4177-85ba-b9656732bd0b', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-13 15:06:44.389485+00', ''),
	('00000000-0000-0000-0000-000000000000', '8dcf9701-8e83-49e2-86cf-d44c4f739e36', '{"action":"user_recovery_requested","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-12-13 15:48:19.542342+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ab5e8bca-4dab-4248-832a-13ca4c97b025', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-13 15:48:24.698916+00', ''),
	('00000000-0000-0000-0000-000000000000', '1af3717a-0b1b-4704-9147-bd487bf5122b', '{"action":"user_recovery_requested","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-12-13 15:50:20.230811+00', ''),
	('00000000-0000-0000-0000-000000000000', '3b6aa12f-4926-4e18-81b7-dac7b1c87250', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-13 15:50:26.614399+00', ''),
	('00000000-0000-0000-0000-000000000000', '63eaf30c-d41c-4428-8011-21994da091e4', '{"action":"user_recovery_requested","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-12-13 16:03:35.757954+00', ''),
	('00000000-0000-0000-0000-000000000000', '9407876f-fc56-4db1-a480-ebe1c379c609', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-13 16:03:40.150286+00', ''),
	('00000000-0000-0000-0000-000000000000', '72113c1c-57fa-44c0-883b-5b5c0ec70deb', '{"action":"user_recovery_requested","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-12-15 17:40:51.12332+00', ''),
	('00000000-0000-0000-0000-000000000000', '70f63c15-d29d-422f-a5c6-d4f4f4493c4f', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-15 17:44:29.908492+00', ''),
	('00000000-0000-0000-0000-000000000000', '1b5e78a9-08f5-4514-89de-a8ae75f4dcfb', '{"action":"user_recovery_requested","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-12-15 17:46:43.96714+00', ''),
	('00000000-0000-0000-0000-000000000000', '9a0f0843-c8e6-4d76-88b3-f40e498c7a56', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-15 17:47:04.58123+00', ''),
	('00000000-0000-0000-0000-000000000000', '433978ca-2a6f-48da-a41a-06a6cb8e557a', '{"action":"user_recovery_requested","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-12-16 20:22:05.455564+00', ''),
	('00000000-0000-0000-0000-000000000000', '2b04559f-758d-4575-ad5c-0b5354444ce4', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-16 20:22:16.031254+00', ''),
	('00000000-0000-0000-0000-000000000000', '291cbc00-a05e-449d-ab0f-a80e74d524fc', '{"action":"user_recovery_requested","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-12-16 20:33:55.305277+00', ''),
	('00000000-0000-0000-0000-000000000000', '0662efb2-9ea5-421d-be15-070fbb5d3ba2', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-16 20:34:12.535261+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ec437c0e-3285-4d4c-ae54-85f314830aee', '{"action":"user_recovery_requested","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-12-16 20:36:42.784332+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ee260e78-b244-4e0c-93b6-1a24f7929b1c', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-16 20:36:48.796159+00', ''),
	('00000000-0000-0000-0000-000000000000', '77c08eaf-52b5-4664-9e0b-fee2c2d1c153', '{"action":"user_recovery_requested","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-12-16 20:55:32.123815+00', ''),
	('00000000-0000-0000-0000-000000000000', '3350227d-bc40-4611-bac1-21dfff968786', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-16 20:55:42.731073+00', ''),
	('00000000-0000-0000-0000-000000000000', '43842e49-5f09-48df-90fd-638a874a8d62', '{"action":"user_recovery_requested","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-12-16 20:58:51.78536+00', ''),
	('00000000-0000-0000-0000-000000000000', '2763afec-1c64-4f89-9047-650aef0db329', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-16 20:58:55.776979+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd0b94314-beb8-4a8c-ba3f-5a6ef4c4383d', '{"action":"user_recovery_requested","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-12-16 21:01:20.233359+00', ''),
	('00000000-0000-0000-0000-000000000000', '80fce0e1-9f00-4241-89a4-02838394753b', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-16 21:01:24.580182+00', ''),
	('00000000-0000-0000-0000-000000000000', '1ab60dc3-234c-4d2a-b77d-0260ad916cfe', '{"action":"user_recovery_requested","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"user"}', '2025-12-16 21:15:02.068472+00', ''),
	('00000000-0000-0000-0000-000000000000', 'b65bb551-3855-4871-a7f8-17afe5ce3529', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-16 21:15:06.730669+00', ''),
	('00000000-0000-0000-0000-000000000000', '5645fc1a-d54c-4bb3-a721-7eda1c58dbfa', '{"action":"login","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider_type":"magiclink"}}', '2025-12-16 21:15:07.496503+00', ''),
	('00000000-0000-0000-0000-000000000000', '42c5db44-e334-4b50-bcba-d6d73eeec7d2', '{"action":"logout","actor_id":"a52afd19-968e-4efb-97d6-e5ea8dd0dd97","actor_username":"root@gmail.com","actor_via_sso":false,"log_type":"account"}', '2025-12-16 21:15:17.407362+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") VALUES
	('ec9c558f-4899-4777-98ae-4293cf28d6b7', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97', 'd3015b64-1552-4791-8076-9c4869938f69', 's256', '7v63VhY_cM2PEyaZo_VJNFN892PQOF7x_nBkTfQoJeM', 'magiclink', '', '', '2025-12-12 17:41:03.883841+00', '2025-12-12 17:46:13.287524+00', 'magiclink', '2025-12-12 17:46:13.287504+00'),
	('b48c02ac-e326-4964-9847-eda5b2f8378d', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97', '94f69d44-9a91-433b-bf7f-f06a0230fad2', 's256', 'FfC0PdUJDo6SkbqvNvghhL-_P1UWKre07bx_1gdBEpY', 'magiclink', '', '', '2025-12-12 17:50:18.637473+00', '2025-12-12 17:50:26.895358+00', 'magiclink', '2025-12-12 17:50:26.895341+00'),
	('082ed54f-5538-4cd5-8ca5-e5db454fbd18', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97', 'dabea563-0fd5-4fbf-bde1-b9f3dcf2f190', 's256', 'fuZXULnfBkORXOFtVtXOPy7NgvNalXK6Skx1orsy5I4', 'magiclink', '', '', '2025-12-12 17:55:21.057602+00', '2025-12-12 17:55:28.363362+00', 'magiclink', '2025-12-12 17:55:28.363337+00'),
	('08767863-ae08-47be-9244-4fef325a555d', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97', 'e24acbdd-c065-4146-9b62-43945a1e191a', 's256', 'dFfd8Zwqrd0lIWJ5n28kpkLg4dqxALIZ6z_zr0hg8yI', 'magiclink', '', '', '2025-12-13 13:33:57.045282+00', '2025-12-13 13:34:06.124678+00', 'magiclink', '2025-12-13 13:34:06.124655+00'),
	('48a44e95-1e09-48f6-9b6e-e13aff5a1750', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97', 'bb58369c-99ab-460d-952c-7c75c25043cc', 's256', 'a6ZicV-SWXGy_GACRbNxiTRTo4nYSQf3EtKmDE1kCrU', 'magiclink', '', '', '2025-12-13 13:50:14.488788+00', '2025-12-13 13:50:19.454513+00', 'magiclink', '2025-12-13 13:50:19.454457+00'),
	('4703ad93-5763-46fc-b06a-6ab0c4df3571', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97', '05f9ff39-8f3a-483f-b298-1c90362336d1', 's256', 'j5KLL4SB169RRFt5vv0okB4RhvLuk9JqMlUfjafOeg4', 'magiclink', '', '', '2025-12-13 14:11:04.506913+00', '2025-12-13 14:11:09.558141+00', 'magiclink', '2025-12-13 14:11:09.558111+00'),
	('f4776cc1-0565-4b91-90bb-601e98f3cf76', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97', '2a56ea17-2204-4ed1-b6a9-f3c14afea5b0', 's256', 'x_HNy2bVZegQu6-ULiw9_CsNhBgiTigWETS0D13xnMA', 'magiclink', '', '', '2025-12-13 14:15:02.149681+00', '2025-12-13 14:16:36.887048+00', 'magiclink', '2025-12-13 14:16:36.887006+00'),
	('69529328-45ae-4071-a526-dc03ec8f7d6a', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97', '380a4bf1-3c4c-4db2-8bf6-b4311a4fde1b', 's256', 'H1QJ8TgY7WIRI1ZKtUzS5h8Vo9IZ-IHs-rpY6SE88Xw', 'magiclink', '', '', '2025-12-13 15:06:38.599964+00', '2025-12-13 15:06:44.397363+00', 'magiclink', '2025-12-13 15:06:44.39734+00'),
	('44506485-1ae8-4433-87b3-22fb83f78bf2', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97', 'e6a2833a-afab-48f8-8011-f0c0c6aca065', 's256', 'm_7nAt_5qKrV70DuPc7agC1wQXLkmLtGoq_j1G3ManA', 'magiclink', '', '', '2025-12-13 15:48:19.473294+00', '2025-12-13 15:48:24.707561+00', 'magiclink', '2025-12-13 15:48:24.707542+00'),
	('a98b4ce6-e936-4f86-b853-047e0c973636', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97', '9afe756f-c2bc-44ae-b5c0-0e91d7099bb8', 's256', 'k0652-zbIcidsF5ZFO6059nnLpnu5A8cuGiA8NTVnQQ', 'magiclink', '', '', '2025-12-13 15:50:20.163224+00', '2025-12-13 15:50:26.619155+00', 'magiclink', '2025-12-13 15:50:26.619138+00'),
	('307c3f7f-c842-40ef-98c5-c8156b80d13e', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97', 'e95b9612-f836-4b94-983c-b3151458f551', 's256', 'oUwQ3QNVLtT6zlOEiY9svHGG3C2SjL0j5eT9XezVGu0', 'magiclink', '', '', '2025-12-13 16:03:35.705521+00', '2025-12-13 16:03:40.155055+00', 'magiclink', '2025-12-13 16:03:40.155018+00'),
	('d0d9a5d9-a8fd-4eda-840d-dfe9d2506d4a', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97', 'f99ea250-07d0-4da9-82a1-2a7c463e84de', 's256', 'GlhEi2wvDmH5_s8fM-ti__PKMRkaiGHVi5RhOiXgnC0', 'magiclink', '', '', '2025-12-15 17:40:51.072926+00', '2025-12-15 17:44:29.916332+00', 'magiclink', '2025-12-15 17:44:29.916309+00'),
	('c8b96b52-9848-4c72-a340-3cf9b0be2b51', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97', '52c3ea29-68e8-4eec-9859-d9aa3413db9b', 's256', 'FPHCERdlHfFb01HzMhjcvV5n6TFGMfWa_7MTyzUv_6M', 'magiclink', '', '', '2025-12-15 17:46:43.932385+00', '2025-12-15 17:47:04.588062+00', 'magiclink', '2025-12-15 17:47:04.588032+00'),
	('cbfa9c92-7ab3-4f4a-bb2d-731f67aaa8dc', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97', '8d1d8f3a-5f24-4e78-855f-1b65198c53bf', 's256', '-mOO0LnAWZ4p8iS3OogzNvvU90kNDHGdNzw5SZ-Ex_U', 'magiclink', '', '', '2025-12-16 20:22:05.429195+00', '2025-12-16 20:22:16.04563+00', 'magiclink', '2025-12-16 20:22:16.045601+00'),
	('a7cf9346-d2b2-42e2-b0a8-690e0ad24f67', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97', '3aa5523a-1f6f-456c-a1d0-3bb969553e01', 's256', 'qf_y444Ejzb8JOw55cpgq3dPI2mhTh1Ej-40zuZMBNc', 'magiclink', '', '', '2025-12-16 20:33:55.276357+00', '2025-12-16 20:34:12.541544+00', 'magiclink', '2025-12-16 20:34:12.541526+00'),
	('bf86b82a-450c-4990-a352-7cda0423d89e', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97', 'c5497ebc-3b4a-4bb2-9877-d80dd67882b9', 's256', '_ZlrOCGh2r2Y0GbjVAW0hqHd6EmdASV0K5c-Z4STdwY', 'magiclink', '', '', '2025-12-16 20:36:42.726312+00', '2025-12-16 20:36:48.803627+00', 'magiclink', '2025-12-16 20:36:48.801612+00'),
	('9ca135aa-9e0a-4671-a52b-3684cf2e6f80', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97', '1fc2cf1b-d6b2-4ab6-8da3-0df688fc93c7', 's256', 'L7DBk4rbMIfwMjjBfLhKIpxPOuI_CBsG_bVzW67TMGs', 'magiclink', '', '', '2025-12-16 20:55:32.10412+00', '2025-12-16 20:55:42.739212+00', 'magiclink', '2025-12-16 20:55:42.739172+00'),
	('8937e6c2-25a3-452c-a3dc-e7e9e8d9f078', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97', 'd45ef812-a8ff-4cad-9ed1-ba603ccfe21d', 's256', 'AgDRMr29Z1ABI8vVvTQ_gAFAAqmgMx3bYTnKrQx7dKk', 'magiclink', '', '', '2025-12-16 20:58:51.746355+00', '2025-12-16 20:58:55.782582+00', 'magiclink', '2025-12-16 20:58:55.782561+00'),
	('dbe06528-f10a-409a-a5e6-6c7a412da60c', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97', '08819f8a-2486-4312-8306-ef980f56c123', 's256', 'fkcIvsR0J9-dOoVG78mal_jmfxcJ3doLj8vUaeBQ2AM', 'magiclink', '', '', '2025-12-16 21:01:20.208579+00', '2025-12-16 21:01:24.590971+00', 'magiclink', '2025-12-16 21:01:24.590925+00');


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97', 'authenticated', 'authenticated', 'root@gmail.com', '$2a$10$PDuUnTCVYWz9lBBHoy5Mhelo4PteEpsmn21YR1MoRoXpcvbl9hYPK', '2025-12-11 20:04:47.135372+00', NULL, '', NULL, '', '2025-12-16 21:15:02.070948+00', '', '', NULL, '2025-12-16 21:15:07.500045+00', '{"provider": "email", "providers": ["email"]}', '{"email_verified": true}', NULL, '2025-12-11 20:04:47.109627+00', '2025-12-16 21:15:07.514186+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('a52afd19-968e-4efb-97d6-e5ea8dd0dd97', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97', '{"sub": "a52afd19-968e-4efb-97d6-e5ea8dd0dd97", "email": "root@gmail.com", "email_verified": false, "phone_verified": false}', 'email', '2025-12-11 20:04:47.124741+00', '2025-12-11 20:04:47.124789+00', '2025-12-11 20:04:47.124789+00', '9e531c36-1f7b-4294-b5e3-5a2f04b29a9e');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



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
-- Data for Name: service_users; Type: TABLE DATA; Schema: public; Owner: supabase_admin
--

INSERT INTO "public"."service_users" ("id", "full_name", "created_at", "supabase_user") VALUES
	(1, 'Pablo Escalante', '2026-01-20 22:39:48.808781+00', 'a52afd19-968e-4efb-97d6-e5ea8dd0dd97');


--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: supabase_admin
--

INSERT INTO "public"."tenants" ("id", "name", "created_at", "domain") VALUES
	('packtID', 'Pack Publishing', '2026-01-20 21:55:10.092362+00', 'packt.local'),
	('eadesID', 'eades', '2026-01-20 21:55:28.428123+00', 'eades.local'),
	('pseresID', 'pseres', '2026-01-20 21:56:04.398213+00', 'pseres.local');


--
-- Data for Name: tenant_permissions; Type: TABLE DATA; Schema: public; Owner: supabase_admin
--

INSERT INTO "public"."tenant_permissions" ("id", "created_at", "service_user", "tenant") VALUES
	(1, '2026-01-21 17:49:16.032858+00', 1, 'eadesID'),
	(2, '2026-01-21 17:49:39.464914+00', 1, 'packtID');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: iceberg_namespaces; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: iceberg_tables; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 7, true);


--
-- Name: service_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supabase_admin
--

SELECT pg_catalog.setval('"public"."service_users_id_seq"', 1, true);


--
-- Name: tenant_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: supabase_admin
--

SELECT pg_catalog.setval('"public"."tenant_permissions_id_seq"', 2, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

-- \unrestrict p9DcwKKsD7osAOYoJaKkU53F3tq9I5lQ6OrL0dgUe8pcJ5LLbXxRREiC6a8JUd6

RESET ALL;
