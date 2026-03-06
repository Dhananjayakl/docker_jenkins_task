# Use a minimal base image for serving static files
FROM nginx:alpine

# Set the working directory
WORKDIR /usr/share/nginx/html

# Copy static HTML files to the container
# COPY . /usr/share/nginx/html
# This command copies all files and directories from the current directory on the host machine
# to the specified directory (/usr/share/nginx/html) in the container.
# If there are other files in the same directory, they will also be copied.

# To copy only the index.html file, use the following instead:
COPY index.html /usr/share/nginx/html/index.html

# Expose the default port for Nginx
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
# This command starts the Nginx server in the foreground (non-daemon mode).
# The "-g" flag allows overriding Nginx configuration directives globally.
# "daemon off;" ensures that the server runs in the foreground, which is
# necessary for Docker containers to keep running as they terminate when
# the main process exits.