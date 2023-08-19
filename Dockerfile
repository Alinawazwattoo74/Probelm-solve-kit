# Use a base image. Here, we'll use the official NGINX image from Docker Hub.
FROM nginx:alpine

# Remove the default NGINX configuration.
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom NGINX configuration file.
COPY nginx.conf /etc/nginx/conf.d/

# Copy your static website files into the container's filesystem.
COPY ali /usr/share/nginx/html/

# Expose the default HTTP port (80) for the container.
EXPOSE 80

# Start the NGINX web server.
CMD ["nginx", "-g", "daemon off;"]

