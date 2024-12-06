# Step 1: Build the React app
FROM node:22 AS build

WORKDIR /app

# Install dependencies
COPY devops-build/package*.json ./
RUN npm install

# Copy the rest of the application files
COPY devops-build/ ./

# Build the React app
RUN npm run build

# Step 2: Set up the Nginx server to serve the app
FROM nginx:alpine

# Copy the built React app from the build container to Nginx's html directory
COPY --from=build /app/build /usr/share/nginx/html

# Expose port 80 to be accessed outside the container
EXPOSE 80

# Command to run Nginx in the container
CMD ["nginx", "-g", "daemon off;"]