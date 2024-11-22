FROM alpine:latest

# Install Node.js and npm
RUN apk add --no-cache nodejs npm bash

# Install @bitwarden/cli
RUN npm install -g @bitwarden/cli

# Copy the entrypoint script
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Set the entrypoint to the script
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]