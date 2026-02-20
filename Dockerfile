FROM n8nio/n8n:latest

# Exponer el puerto que usa n8n
EXPOSE 5678

# Ejecutar n8n
CMD ["n8n"]
