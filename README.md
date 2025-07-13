# HTTP over SSH
A solution to be able to have HTTP proxy via SSH (like the built-in SOCKS5 proxy in SSH).

## Configuration
You can configure the SSH connection by setting the following environment variables by modifying the `docker-compose.yml` file directly:
- `SSH_USER`: The SSH user to connect to the remote server.
- `SSH_HOST`: The SSH host to connect to.
- `SSH_PORT`: The SSH port to connect to (default is 22).
- `SOCKS_PORT`: The port for the SOCKS proxy (default is 1080).
- `HTTP_PORT`: The port for the HTTP proxy (default is 8888).

## Installation
To use this solution, you need to have Docker and Docker Compose installed on your machine.
```bash
docker compose --build up -d
```
This will build the Docker image and start the container in detached mode.
You can then access the HTTP proxy at `http://localhost:8888`.

## Usage
You can use the HTTP proxy by setting your browser or application to use `http://localhost:8888` as the HTTP proxy.
Make sure to have the SSH key available in `~/.ssh/id_rsa` or modify the `docker-compose.yml` to point to your SSH key.