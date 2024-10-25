# Booking Supabase Local Instance

## Guide

> [!CAUTION]
> Requires Docker, Docker Compose, Supabase CLI to be installed on your machine.
>
> Also, you need to create a `.env` file in the root directory with the following content:
>
> ```env
> GOOGLE_ID=<your-google-id>
> GOOGLE_SECRET=<your-google-secret>
> ```

## Commands

`supabase db pull` - Pulls the latest database from Supabase
`supabase migration up` - Runs the latest migrations
`supabase db reset` - Reset your database (apply current migrations), and populate with seed data
`supabase diff` - Shows the difference between your local schema and the server schema

`supabase start` - Starts the Supabase server
`supabase stop` - Stops the Supabase server

`supabase db dump -f supabase/supabase-data.sql --data-only` - Exports data from remote database to local file
