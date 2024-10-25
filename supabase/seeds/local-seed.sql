SET
    statement_timeout = 0;

SET
    lock_timeout = 0;

SET
    idle_in_transaction_session_timeout = 0;

SET
    client_encoding = 'UTF8';

SET
    standard_conforming_strings = on;

SELECT
    pg_catalog.set_config('search_path', '', false);

SET
    check_function_bodies = false;

SET
    xmloption = content;

SET
    client_min_messages = warning;

SET
    row_security = off;

CREATE EXTENSION IF NOT EXISTS "pg_net" WITH SCHEMA "extensions";

CREATE EXTENSION IF NOT EXISTS "pgsodium" WITH SCHEMA "pgsodium";

ALTER SCHEMA "public" OWNER TO "postgres";

CREATE EXTENSION IF NOT EXISTS "pg_graphql" WITH SCHEMA "graphql";

CREATE EXTENSION IF NOT EXISTS "pg_stat_statements" WITH SCHEMA "extensions";

CREATE EXTENSION IF NOT EXISTS "pgcrypto" WITH SCHEMA "extensions";

CREATE EXTENSION IF NOT EXISTS "pgjwt" WITH SCHEMA "extensions";

CREATE EXTENSION IF NOT EXISTS "supabase_vault" WITH SCHEMA "vault";

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA "extensions";

CREATE
OR REPLACE FUNCTION "public"."get_user_email"("user_id" "uuid") RETURNS TABLE("email" "text") LANGUAGE "plpgsql" AS $ $ BEGIN RETURN QUERY
SELECT
    email
FROM
    auth.users
WHERE
    id = '5e869587-c66f-40fd-bbf9-5bbf07f3cb22';

END;

$ $;

ALTER FUNCTION "public"."get_user_email"("user_id" "uuid") OWNER TO "postgres";

SET
    default_tablespace = '';

SET
    default_table_access_method = "heap";

CREATE TABLE IF NOT EXISTS "public"."hosts" (
    "id" "uuid" NOT NULL,
    "personal_code" character varying(255) NOT NULL,
    "bank_account" character varying(40) NOT NULL
);

ALTER TABLE
    "public"."hosts" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."listing_category" (
    "id" integer NOT NULL,
    "name" character varying(60) NOT NULL
);

ALTER TABLE
    "public"."listing_category" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."listings" (
    "id" integer NOT NULL,
    "suspension_status" boolean NOT NULL,
    "title" character varying(60) NOT NULL,
    "description" "text" NOT NULL,
    "city" character varying(20) NOT NULL,
    "address" character varying(100) NOT NULL,
    "country" character varying(60) NOT NULL,
    "creation_date" timestamp without time zone NOT NULL,
    "number_of_places" integer NOT NULL,
    "day_price" integer NOT NULL,
    "category_id" integer NOT NULL,
    "host_id" "uuid" NOT NULL
);

ALTER TABLE
    "public"."listings" OWNER TO "postgres";

ALTER TABLE
    "public"."listings"
ALTER COLUMN
    "id"
ADD
    GENERATED ALWAYS AS IDENTITY (
        SEQUENCE NAME "public"."listings_id_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1
    );

CREATE TABLE IF NOT EXISTS "public"."messages" (
    "id" integer NOT NULL,
    "sent_time" timestamp without time zone NOT NULL,
    "text" "text" NOT NULL,
    "sender_id" "uuid" NOT NULL,
    "received_id" "uuid" NOT NULL,
    "reservation_id" integer NOT NULL
);

ALTER TABLE
    "public"."messages" OWNER TO "postgres";

ALTER TABLE
    "public"."messages"
ALTER COLUMN
    "id"
ADD
    GENERATED BY DEFAULT AS IDENTITY (
        SEQUENCE NAME "public"."messages_id_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1
    );

CREATE TABLE IF NOT EXISTS "public"."ordered_services" (
    "id" integer NOT NULL,
    "service_id" integer NOT NULL,
    "reservation_id" integer NOT NULL
);

ALTER TABLE
    "public"."ordered_services" OWNER TO "postgres";

ALTER TABLE
    "public"."ordered_services"
ALTER COLUMN
    "id"
ADD
    GENERATED BY DEFAULT AS IDENTITY (
        SEQUENCE NAME "public"."ordered_services_id_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1
    );

CREATE TABLE IF NOT EXISTS "public"."payments" (
    "id" integer NOT NULL,
    "first_name" character varying(30) NOT NULL,
    "last_name" character varying(30) NOT NULL,
    "date" timestamp without time zone NOT NULL,
    "payment_method" character varying(30) NOT NULL,
    "payment_number" character varying(30) NOT NULL,
    "payer_email" character varying(60) NOT NULL,
    "amount" integer NOT NULL,
    "status" integer NOT NULL,
    "reservation_id" integer NOT NULL
);

ALTER TABLE
    "public"."payments" OWNER TO "postgres";

ALTER TABLE
    "public"."payments"
ALTER COLUMN
    "id"
ADD
    GENERATED ALWAYS AS IDENTITY (
        SEQUENCE NAME "public"."payments_id_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1
    );

CREATE TABLE IF NOT EXISTS "public"."photos" (
    "id" integer NOT NULL,
    "url" character varying(255) NOT NULL,
    "listing_id" integer NOT NULL
);

ALTER TABLE
    "public"."photos" OWNER TO "postgres";

ALTER TABLE
    "public"."photos"
ALTER COLUMN
    "id"
ADD
    GENERATED ALWAYS AS IDENTITY (
        SEQUENCE NAME "public"."photos_id_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1
    );

CREATE TABLE IF NOT EXISTS "public"."profiles" (
    "id" "uuid" NOT NULL,
    "first_name" character varying(30) NOT NULL,
    "last_name" character varying(30) NOT NULL,
    "birth_date" "date" NOT NULL,
    "phone" character varying(20) NOT NULL,
    "photo" character varying(255) NOT NULL,
    "country" character varying(60) NOT NULL,
    "city" character varying(60) NOT NULL
);

ALTER TABLE
    "public"."profiles" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."reservation_status" (
    "id" integer NOT NULL,
    "name" character varying(60) NOT NULL
);

ALTER TABLE
    "public"."reservation_status" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."reservations" (
    "id" integer NOT NULL,
    "start_date" "date" NOT NULL,
    "end_date" "date" NOT NULL,
    "total_price" integer NOT NULL,
    "creation_date" timestamp without time zone NOT NULL,
    "status" integer NOT NULL,
    "listing_id" integer NOT NULL,
    "user_id" "uuid" NOT NULL
);

ALTER TABLE
    "public"."reservations" OWNER TO "postgres";

ALTER TABLE
    "public"."reservations"
ALTER COLUMN
    "id"
ADD
    GENERATED ALWAYS AS IDENTITY (
        SEQUENCE NAME "public"."reservations_id_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1
    );

CREATE TABLE IF NOT EXISTS "public"."services" (
    "id" integer NOT NULL,
    "title" character varying(60) NOT NULL,
    "description" character varying(255) NOT NULL,
    "price" integer NOT NULL,
    "listing_id" integer NOT NULL
);

ALTER TABLE
    "public"."services" OWNER TO "postgres";

ALTER TABLE
    "public"."services"
ALTER COLUMN
    "id"
ADD
    GENERATED ALWAYS AS IDENTITY (
        SEQUENCE NAME "public"."services_id_seq" START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1
    );

ALTER TABLE
    ONLY "public"."hosts"
ADD
    CONSTRAINT "hosts_id_key" UNIQUE ("id");

ALTER TABLE
    ONLY "public"."hosts"
ADD
    CONSTRAINT "hosts_pkey" PRIMARY KEY ("id");

ALTER TABLE
    ONLY "public"."listing_category"
ADD
    CONSTRAINT "listing_category_pkey" PRIMARY KEY ("id");

ALTER TABLE
    ONLY "public"."listings"
ADD
    CONSTRAINT "listings_pkey" PRIMARY KEY ("id");

ALTER TABLE
    ONLY "public"."messages"
ADD
    CONSTRAINT "messages_pkey" PRIMARY KEY ("id");

ALTER TABLE
    ONLY "public"."ordered_services"
ADD
    CONSTRAINT "ordered_services_pkey" PRIMARY KEY ("id");

ALTER TABLE
    ONLY "public"."payments"
ADD
    CONSTRAINT "payments_pkey" PRIMARY KEY ("id");

ALTER TABLE
    ONLY "public"."payments"
ADD
    CONSTRAINT "payments_reservation_id_key" UNIQUE ("reservation_id");

ALTER TABLE
    ONLY "public"."photos"
ADD
    CONSTRAINT "photos_pkey" PRIMARY KEY ("id");

ALTER TABLE
    ONLY "public"."profiles"
ADD
    CONSTRAINT "profiles_id_key" UNIQUE ("id");

ALTER TABLE
    ONLY "public"."profiles"
ADD
    CONSTRAINT "profiles_pkey" PRIMARY KEY ("id");

ALTER TABLE
    ONLY "public"."reservation_status"
ADD
    CONSTRAINT "reservation_status_pkey" PRIMARY KEY ("id");

ALTER TABLE
    ONLY "public"."reservations"
ADD
    CONSTRAINT "reservations_pkey" PRIMARY KEY ("id");

ALTER TABLE
    ONLY "public"."services"
ADD
    CONSTRAINT "services_pkey" PRIMARY KEY ("id");

ALTER TABLE
    ONLY "public"."hosts"
ADD
    CONSTRAINT "hosts_id_fkey" FOREIGN KEY ("id") REFERENCES "auth"."users"("id") ON DELETE CASCADE;

ALTER TABLE
    ONLY "public"."listings"
ADD
    CONSTRAINT "listings_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "public"."listing_category"("id");

ALTER TABLE
    ONLY "public"."listings"
ADD
    CONSTRAINT "listings_host_id_fkey" FOREIGN KEY ("host_id") REFERENCES "public"."hosts"("id");

ALTER TABLE
    ONLY "public"."messages"
ADD
    CONSTRAINT "messages_received_id_fkey" FOREIGN KEY ("received_id") REFERENCES "auth"."users"("id");

ALTER TABLE
    ONLY "public"."messages"
ADD
    CONSTRAINT "messages_reservation_id_fkey" FOREIGN KEY ("reservation_id") REFERENCES "public"."reservations"("id");

ALTER TABLE
    ONLY "public"."messages"
ADD
    CONSTRAINT "messages_sender_id_fkey" FOREIGN KEY ("sender_id") REFERENCES "auth"."users"("id");

ALTER TABLE
    ONLY "public"."ordered_services"
ADD
    CONSTRAINT "ordered_services_reservation_id_fkey" FOREIGN KEY ("reservation_id") REFERENCES "public"."reservations"("id");

ALTER TABLE
    ONLY "public"."ordered_services"
ADD
    CONSTRAINT "ordered_services_service_id_fkey" FOREIGN KEY ("service_id") REFERENCES "public"."services"("id");

ALTER TABLE
    ONLY "public"."payments"
ADD
    CONSTRAINT "payments_reservation_id_fkey" FOREIGN KEY ("reservation_id") REFERENCES "public"."reservations"("id");

ALTER TABLE
    ONLY "public"."photos"
ADD
    CONSTRAINT "photos_listing_id_fkey" FOREIGN KEY ("listing_id") REFERENCES "public"."listings"("id") ON DELETE CASCADE;

ALTER TABLE
    ONLY "public"."profiles"
ADD
    CONSTRAINT "profiles_id_fkey" FOREIGN KEY ("id") REFERENCES "auth"."users"("id") ON DELETE CASCADE;

ALTER TABLE
    ONLY "public"."reservations"
ADD
    CONSTRAINT "reservations_listing_id_fkey" FOREIGN KEY ("listing_id") REFERENCES "public"."listings"("id");

ALTER TABLE
    ONLY "public"."reservations"
ADD
    CONSTRAINT "reservations_status_fkey" FOREIGN KEY ("status") REFERENCES "public"."reservation_status"("id");

ALTER TABLE
    ONLY "public"."reservations"
ADD
    CONSTRAINT "reservations_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "public"."profiles"("id");

ALTER TABLE
    ONLY "public"."services"
ADD
    CONSTRAINT "services_listing_id_fkey" FOREIGN KEY ("listing_id") REFERENCES "public"."listings"("id");

REVOKE USAGE ON SCHEMA "public"
FROM
    PUBLIC;

GRANT USAGE ON SCHEMA "public" TO "anon";

GRANT USAGE ON SCHEMA "public" TO "authenticated";

GRANT USAGE ON SCHEMA "public" TO "service_role";

GRANT ALL ON FUNCTION "public"."get_user_email"("user_id" "uuid") TO "anon";

GRANT ALL ON FUNCTION "public"."get_user_email"("user_id" "uuid") TO "authenticated";

GRANT ALL ON FUNCTION "public"."get_user_email"("user_id" "uuid") TO "service_role";

GRANT ALL ON TABLE "public"."hosts" TO "anon";

GRANT ALL ON TABLE "public"."hosts" TO "authenticated";

GRANT ALL ON TABLE "public"."hosts" TO "service_role";

GRANT ALL ON TABLE "public"."listing_category" TO "anon";

GRANT ALL ON TABLE "public"."listing_category" TO "authenticated";

GRANT ALL ON TABLE "public"."listing_category" TO "service_role";

GRANT ALL ON TABLE "public"."listings" TO "anon";

GRANT ALL ON TABLE "public"."listings" TO "authenticated";

GRANT ALL ON TABLE "public"."listings" TO "service_role";

GRANT ALL ON SEQUENCE "public"."listings_id_seq" TO "anon";

GRANT ALL ON SEQUENCE "public"."listings_id_seq" TO "authenticated";

GRANT ALL ON SEQUENCE "public"."listings_id_seq" TO "service_role";

GRANT ALL ON TABLE "public"."messages" TO "anon";

GRANT ALL ON TABLE "public"."messages" TO "authenticated";

GRANT ALL ON TABLE "public"."messages" TO "service_role";

GRANT ALL ON SEQUENCE "public"."messages_id_seq" TO "anon";

GRANT ALL ON SEQUENCE "public"."messages_id_seq" TO "authenticated";

GRANT ALL ON SEQUENCE "public"."messages_id_seq" TO "service_role";

GRANT ALL ON TABLE "public"."ordered_services" TO "anon";

GRANT ALL ON TABLE "public"."ordered_services" TO "authenticated";

GRANT ALL ON TABLE "public"."ordered_services" TO "service_role";

GRANT ALL ON SEQUENCE "public"."ordered_services_id_seq" TO "anon";

GRANT ALL ON SEQUENCE "public"."ordered_services_id_seq" TO "authenticated";

GRANT ALL ON SEQUENCE "public"."ordered_services_id_seq" TO "service_role";

GRANT ALL ON TABLE "public"."payments" TO "anon";

GRANT ALL ON TABLE "public"."payments" TO "authenticated";

GRANT ALL ON TABLE "public"."payments" TO "service_role";

GRANT ALL ON SEQUENCE "public"."payments_id_seq" TO "anon";

GRANT ALL ON SEQUENCE "public"."payments_id_seq" TO "authenticated";

GRANT ALL ON SEQUENCE "public"."payments_id_seq" TO "service_role";

GRANT ALL ON TABLE "public"."photos" TO "anon";

GRANT ALL ON TABLE "public"."photos" TO "authenticated";

GRANT ALL ON TABLE "public"."photos" TO "service_role";

GRANT ALL ON SEQUENCE "public"."photos_id_seq" TO "anon";

GRANT ALL ON SEQUENCE "public"."photos_id_seq" TO "authenticated";

GRANT ALL ON SEQUENCE "public"."photos_id_seq" TO "service_role";

GRANT ALL ON TABLE "public"."profiles" TO "anon";

GRANT ALL ON TABLE "public"."profiles" TO "authenticated";

GRANT ALL ON TABLE "public"."profiles" TO "service_role";

GRANT ALL ON TABLE "public"."reservation_status" TO "anon";

GRANT ALL ON TABLE "public"."reservation_status" TO "authenticated";

GRANT ALL ON TABLE "public"."reservation_status" TO "service_role";

GRANT ALL ON TABLE "public"."reservations" TO "anon";

GRANT ALL ON TABLE "public"."reservations" TO "authenticated";

GRANT ALL ON TABLE "public"."reservations" TO "service_role";

GRANT ALL ON SEQUENCE "public"."reservations_id_seq" TO "anon";

GRANT ALL ON SEQUENCE "public"."reservations_id_seq" TO "authenticated";

GRANT ALL ON SEQUENCE "public"."reservations_id_seq" TO "service_role";

GRANT ALL ON TABLE "public"."services" TO "anon";

GRANT ALL ON TABLE "public"."services" TO "authenticated";

GRANT ALL ON TABLE "public"."services" TO "service_role";

GRANT ALL ON SEQUENCE "public"."services_id_seq" TO "anon";

GRANT ALL ON SEQUENCE "public"."services_id_seq" TO "authenticated";

GRANT ALL ON SEQUENCE "public"."services_id_seq" TO "service_role";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "postgres";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "anon";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "authenticated";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON SEQUENCES TO "service_role";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "postgres";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "anon";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "authenticated";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON FUNCTIONS TO "service_role";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "postgres";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "anon";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "authenticated";

ALTER DEFAULT PRIVILEGES FOR ROLE "postgres" IN SCHEMA "public" GRANT ALL ON TABLES TO "service_role";

RESET ALL;