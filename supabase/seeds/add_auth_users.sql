CREATE SCHEMA IF NOT EXISTS import;

CREATE TABLE import.users (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  user_id UUID UNIQUE,
  username TEXT NOT NULL UNIQUE,
    CHECK (char_length(username) >= 3),
  cc CHAR(2) NOT NULL,
  email TEXT UNIQUE,
  password TEXT
);

--------------------------------------------------------------------------------------------------------------------

-- Insert test data into the import.users table
INSERT INTO import.users (user_id, username, cc, email, password)
VALUES
  ('4891b73c-3a01-40eb-b3c4-eaa5b4067e68', 'Alice', 'GB', NULL, NULL),
  (NULL, 'David', 'US', NULL, NULL),
  (NULL, 'Tom', 'CA', NULL, 'HelloTom');

-- The user_id, email, and password columns get UPDATEd by supa_import_auth_users.sql.
-- I preserve the updated user_id values (so they don't get lost across db resets),
-- because I use them in related test data.

-- I put this on Supabase dashboard (which doesn't get reset) but haven't yet
-- automated the automatic preservation of new user_id's across resets.

--------------------------------------------------------------------------------------------------------------------

-- 2024-10 Started from ...
-- https://gist.github.com/khattaksd/4e8f4c89f4e928a2ecaad56d4a17ecd1
-- With addition of 'provider_id' as per @fluid-design-io
-- With my additions to load import data from import.users table,
--   to save generated values back into that table, and
--   to be able to add rows when destination tables are not empty.

-- Update NULL emails
DO $$
BEGIN
  UPDATE import.users
    SET email = username || '-' || cc || '@findingthem.com'
    WHERE email IS NULL;
EXCEPTION
  WHEN OTHERS THEN
    RAISE EXCEPTION 'Email update aborted on error: %', SQLERRM;
END $$;

-- Generate UUIDs for users who don't have one yet
UPDATE import.users
  SET user_id = uuid_generate_v4()
  WHERE user_id IS NULL;

-- Generate passwords for users who don't have one yet
UPDATE import.users
  SET password = 'Hello' || username
  WHERE password IS NULL;


-- Log the existing row count for auth.users
DO $$
DECLARE
  user_count INTEGER;
BEGIN
  -- Log the number of rows in the auth.users table
  SELECT COUNT(*) INTO user_count FROM auth.users;
  RAISE LOG 'Rows in auth.users before insert = %', user_count;
END $$;

-- create test users
INSERT INTO
  auth.users (
    instance_id,
    id,
    aud,
    role,
    email,
    encrypted_password,
    email_confirmed_at,
    recovery_sent_at,
    last_sign_in_at,
    raw_app_meta_data,
    raw_user_meta_data,
    created_at,
    updated_at,
    confirmation_token,
    email_change,
    email_change_token_new,
    recovery_token
  )
    SELECT
      '00000000-0000-0000-0000-000000000000',
      user_id,
      'authenticated' AS aud,
      'authenticated' AS role,
      email,
      crypt(password, gen_salt('bf')),
      CURRENT_TIMESTAMP,
      CURRENT_TIMESTAMP,
      CURRENT_TIMESTAMP,
      '{"provider":"email","providers":["email"]}',
      jsonb_build_object('username', username, 'country_code', cc),
      CURRENT_TIMESTAMP,
      CURRENT_TIMESTAMP,
      '',
      '',
      '',
      ''
    FROM
      import.users
    ON CONFLICT (id) DO NOTHING;

-- create auth user identities
INSERT INTO
  auth.identities (
    user_id,
    provider_id,
    identity_data,
    provider,
    last_sign_in_at,
    created_at,
    updated_at
  )
    SELECT
      user_id,
      user_id,
      format('{"sub":"%s","email":"%s"}', user_id::text, email)::jsonb,
      'email',
      CURRENT_TIMESTAMP,
      CURRENT_TIMESTAMP,
      CURRENT_TIMESTAMP
    FROM
      import.users
    ON CONFLICT (provider_id, provider) DO NOTHING;
