# Bitwarden CLI Docker Image

This Docker image is based on Alpine and includes Node.js, npm, and the Bitwarden CLI (`@bitwarden/cli`). It allows you to configure the Bitwarden server URL and log in using provided credentials, then start an interactive `bash` shell with the Bitwarden session token set as an environment variable.

## Building the Docker Image

To build the Docker image, use the following command:

```sh
docker build -t bitwarden-cli .
```

# Running the Docker Image
To run the Docker image with the required arguments in interactive mode, use the following command:

```sh
docker run -it bitwarden-cli <SERVER_URL> <USERNAME> <PASSWORD>
```

#Environment Variables
The entrypoint.sh script will configure the Bitwarden CLI server URL and log in using the provided credentials. The session token returned from the bw login command will be set as an environment variable named BW_SESSION.

```sh
docker run -it bitwarden-cli https://your-bitwarden-server.com your-username your-password
```
