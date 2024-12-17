# Step 1: Use a Node.js 22 base image for building the app
FROM node:22 AS build

# Set working directory in the container
WORKDIR /app

# Copy the package.json files and install dependencies
COPY devops-build/package*.json ./
RUN npm install

# Copy the rest of the app's source code
COPY devops-build/ ./

# Build the React app (this assumes there is a build step like 'npm run build')
RUN npm run build

# Step 2: Use Nginx to serve the built app
FROM nginx:alpine

# Set working directory in the container
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Copy the build folder from the first stage
COPY --from=build /app/build/ .

# Expose port 80 for the app
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
