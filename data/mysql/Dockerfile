FROM mysql:5.7

COPY root-config.sql /docker-entrypoint-initdb.d/root-config.sql
ENV MYSQL_ROOT_PASSWORD ''
ENV MYSQL_ALLOW_EMPTY_PASSWORD 1
ENV MYSQL_DATABASE mydb
