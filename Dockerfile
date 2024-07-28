# Use the official Nginx image from Docker Hub as a parent image
FROM nginx:latest

# Copy custom configuration file from the current directory
# to the /etc/nginx/conf.d/ directory in the container
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy static website files to the /usr/share/nginx/html directory in the container
COPY . /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
