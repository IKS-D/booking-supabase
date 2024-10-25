alter table "public"."reservations" drop constraint "reservations_listing_id_fkey";

alter table "public"."services" drop constraint "services_listing_id_fkey";

alter table "public"."reservations" add constraint "reservations_listing_id_fkey" FOREIGN KEY (listing_id) REFERENCES listings(id) ON DELETE CASCADE not valid;

alter table "public"."reservations" validate constraint "reservations_listing_id_fkey";

alter table "public"."services" add constraint "services_listing_id_fkey" FOREIGN KEY (listing_id) REFERENCES listings(id) ON DELETE CASCADE not valid;

alter table "public"."services" validate constraint "services_listing_id_fkey";


