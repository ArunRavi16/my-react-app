# Step 1: Use a Node.js 22 base image for building the app
FROM node:22 AS build

# Step 1: Use Nginx to serve the built app
FROM nginx:alpine

# Set working directory in the container
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Copy the contents of the build folder into the Nginx directory
COPY build/ .

# Expose port 80 for the app
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
