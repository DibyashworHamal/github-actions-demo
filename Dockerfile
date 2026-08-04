# Use the Nginx reverse proxy/web server image
FROM nginx:alpine
# Copy our custom page into the container
COPY index.html /usr/share/nginx/html/index.html