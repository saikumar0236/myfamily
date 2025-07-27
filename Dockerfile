# Use nginx base image
FROM nginx:alpine

# Clean default html
RUN rm -rf /usr/share/nginx/html/*

# Copy HTML and images
COPY . /usr/share/nginx/html

# Expose port
EXPOSE 80

# Run Nginx (default)
CMD ["nginx", "-g", "daemon off;"]
