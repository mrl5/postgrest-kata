-- "postgres" is ${ADMIN_DB_USER}
-- "authenticator" is ${DB_USER}

CREATE ROLE web_anon NOLOGIN;

GRANT web_anon TO authenticator;

ALTER DEFAULT PRIVILEGES FOR USER postgres IN SCHEMA data GRANT
SELECT
    ON TABLES TO web_anon;

GRANT USAGE ON SCHEMA api TO web_anon;
