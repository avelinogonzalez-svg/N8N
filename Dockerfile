FROM n8nio/n8n:latest

# Set environment variables for Railway
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=8080
ENV N8N_PROTOCOL=https
ENV NODE_ENV=production

# Create data directory
RUN mkdir -p /home/node/.n8n

# Expose the port Railway expects
EXPOSE 8080

# Health check for Railway
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:8080/healthz || exit 1

# Start n8n
CMD ["n8n", "start"]
