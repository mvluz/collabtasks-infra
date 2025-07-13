FROM postgres:17

# Install gettext to use the envsubst command
RUN apt-get update && apt-get install -y gettext

# Copy the initialization script to the appropriate directory
COPY database-sql/init.sh /docker-entrypoint-initdb.d/init.sh
COPY database-sql/init.sql.template /docker-entrypoint-initdb.d/init.sql.template