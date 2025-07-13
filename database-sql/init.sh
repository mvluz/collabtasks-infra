#!/bin/bash

# Copy the template to a temporary directory with appropriate permissions
cp /docker-entrypoint-initdb.d/init.sql.template /tmp/init.sql.template

# Generate init.sql by replacing environment variables
envsubst < /tmp/init.sql.template > /tmp/init.sql

# Execute the initialization script
psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -f /tmp/init.sql