# Use an Nginx image that includes RTMP
FROM alfg/nginx-rtmp:latest

# Copy the RTMP configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose RTMP and HTTP ports
EXPOSE 1935 80

# Start Nginx in foreground mode
CMD ["nginx", "-g", "daemon off;"]
