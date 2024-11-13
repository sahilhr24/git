# Use the Nginx base image
FROM nginx:latest

# Copy your application files to the default Nginx directory
#COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
