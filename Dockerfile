FROM n8nio/n8n:1.19.4

# Use a volume for persistent data
VOLUME /home/node/.n8n

# Set environment variable to enforce correct permissions
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Expose the port explicitly
EXPOSE 5678

# Use the full path to n8n executable
CMD ["/usr/local/bin/n8n"]
