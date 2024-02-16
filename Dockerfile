# Use a lightweight web server as the base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the HTML, CSS, and JS files into the container
COPY . .

# Expose the default HTTP port for the web server
EXPOSE 80

# The default command is to start the web server
CMD ["nginx", "-g", "daemon off;"]
