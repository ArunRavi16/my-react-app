# Stage 1: Build the React app using Node.js
FROM node:22 AS build

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if present) first for efficient caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app's source code
COPY . .

# Build the React app (assuming there is a build script)
RUN npm run build

# Stage 2: Serve the React app using Nginx
FROM nginx:alpine

# Copy the build files from the first stage into the Nginx directory
COPY --from=build /app/build /usr/share/nginx/html

# Expose the port that the app will run on
EXPOSE 80

# Command to run the Nginx server
CMD ["nginx", "-g", "daemon off;"]
