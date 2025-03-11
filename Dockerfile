# Use an official Nginx base image
FROM ubuntu:latest

# Install Nginx with RTMP module
RUN apt update && apt install -y nginx libnginx-mod-rtmp

# Copy the Nginx RTMP configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Expose RTMP and HTTP ports
EXPOSE 1935 80

# Start Nginx in foreground mode
CMD ["nginx", "-g", "daemon off;"]
