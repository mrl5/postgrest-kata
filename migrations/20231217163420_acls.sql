-- "postgres" is ${ADMIN_DB_USER}
-- "authenticator" is ${DB_USER}

-- anon role
CREATE ROLE web_anon NOLOGIN;

GRANT web_anon TO authenticator;

ALTER DEFAULT PRIVILEGES FOR USER postgres IN SCHEMA data GRANT
SELECT
    ON TABLES TO web_anon;

GRANT USAGE ON SCHEMA api TO web_anon;

-- rw user
CREATE ROLE todo_user NOLOGIN;
GRANT todo_user TO authenticator;

ALTER DEFAULT PRIVILEGES FOR USER postgres IN SCHEMA data GRANT
SELECT, INSERT, UPDATE, DELETE
    ON TABLES TO todo_user;

GRANT USAGE ON SCHEMA api TO todo_user;
