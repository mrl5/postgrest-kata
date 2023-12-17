FROM postgres:16.1 as build-env

RUN apt-get update \
    && apt-get install postgresql-16-cron \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
