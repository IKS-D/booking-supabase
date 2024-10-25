create policy "Allow anyone to add anything 1ffg0oo_0"
on "storage"."objects"
as permissive
for insert
to public
with check ((bucket_id = 'images'::text));


create policy "Allow delete for everyone 1ffg0oo_0"
on "storage"."objects"
as permissive
for delete
to public
using ((bucket_id = 'images'::text));


create policy "Allow everything to everyone 1ffg0oo_0"
on "storage"."objects"
as permissive
for select
to public
using ((bucket_id = 'images'::text));


create policy "Allow everything to everyone 1ffg0oo_1"
on "storage"."objects"
as permissive
for delete
to public
using ((bucket_id = 'images'::text));


create policy "Allow everything to everyone 1ffg0oo_2"
on "storage"."objects"
as permissive
for insert
to public
with check ((bucket_id = 'images'::text));



