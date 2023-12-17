set dotenv-load
set export

DOCKER_COMPOSE := "docker compose"

build:
    ${DOCKER_COMPOSE} build

run:
    ${DOCKER_COMPOSE} up

db-only:
    ${DOCKER_COMPOSE} up db

dev-tools:
    cargo install hurl sqlx-cli

lint:
    pg_format -i migrations/*.sql

db-bootstrap:
    # internal schema
    PGPASSWORD=${ADMIN_DB_PASSWORD} psql -h ${DB_HOST} -p ${DB_PORT} \
        -U ${ADMIN_DB_USER} -d ${DB_NAME} \
        -c "CREATE SCHEMA internal AUTHORIZATION ${ADMIN_DB_USER};"

db-migrate:
    sqlx migrate run -D "${DB_URI}&options=-c search_path=internal"
