FROM ubuntu:18.04

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y curl gnupg2 vim && \
    curl -L https://github.com/golang-migrate/migrate/releases/download/v4.11.0/migrate.linux-amd64.tar.gz | tar xvz && \
    mv ./migrate.linux-amd64 /usr/bin/migrate && \
    echo 'deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main' > /etc/apt/sources.list.d/pgdg.list && \
    curl -fsSL https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
    apt-get update && \
    apt-get install -y postgresql-client-12