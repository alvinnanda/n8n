FROM n8nio/n8n:0.230.0

# Use a volume for persistent data
VOLUME /home/node/.n8n

# Set environment variable to enforce correct permissions
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Expose the port explicitly
EXPOSE 5678

# Start n8n
CMD ["n8n"]
