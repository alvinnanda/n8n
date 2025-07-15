FROM n8nio/n8n:latest

# Use a volume for persistent data
VOLUME /home/node/.n8n

# Set environment variable to enforce correct permissions
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Configure PostgreSQL connection to Supabase
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_HOST=aws-0-ap-southeast-1.pooler.supabase.com
ENV DB_POSTGRESDB_PORT=6543
ENV DB_POSTGRESDB_DATABASE=postgres
ENV DB_POSTGRESDB_USER=postgres.youiswajtnmfqbwipgfu
ENV DB_POSTGRESDB_PASSWORD=1sampai6
ENV DB_POSTGRESDB_SCHEMA=public
ENV DB_POSTGRESDB_SSL_REJECT_UNAUTHORIZED=false

# Basic auth configuration
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin

# Memory optimization
ENV NODE_OPTIONS=--max-old-space-size=512

# Expose the port explicitly
EXPOSE 5678

# Let the base image handle the startup command
