# Step 1: Use an official Nginx image
FROM nginx:alpine

# Step 2: Copy the local files into the container
COPY ./ /usr/share/nginx/html

# Step 3: Copy the custom Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Step 4: Expose the port defined by the environment variable
EXPOSE 8080

# Step 5: Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
