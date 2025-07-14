FROM n8nio/n8n:latest

# Use a volume for persistent data
VOLUME /home/node/.n8n

# Start n8n
CMD ["n8n"]
