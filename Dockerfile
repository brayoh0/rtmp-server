# RTMP Relay Server Setup (Nginx + RTMP Module)

# Install Nginx with RTMP support
RUN apt update && apt install -y nginx libnginx-mod-rtmp

# Nginx Configuration for RTMP Relay
COPY nginx.conf /etc/nginx/nginx.conf

# Expose RTMP and HTTP Ports
EXPOSE 1935 80

# Start Nginx Server
CMD ["nginx", "-g", "daemon off;"]
