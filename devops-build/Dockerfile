# Use the official Node.js image as the base image
FROM node:22

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app's source code from the context (current folder and subfolders)
COPY . .  # This will copy the contents of the entire 'devops-build' and other necessary files

# Build the React app (assuming there is a build script)
RUN npm run build

# Use the official Nginx image to serve the built app
FROM nginx:alpine

# Copy the build files from the first stage (node app) into the Nginx directory
COPY --from=0 /app/build /usr/share/nginx/html

# Expose the port that the app will run on
EXPOSE 80

# Command to run the Nginx server
CMD ["nginx", "-g", "daemon off;"]
