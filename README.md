# Docker SSH Server

This is a Docker image that provides an SSH server for remote access to the Docker container. This README provides information on how to use the image and connect to the container via SSH.

## Prerequisites

Before running the Docker container, you need to make sure that:

1. Port 2200 is open in the Docker container.
2. Curl is installed on your machine.

## How to Run

To run the Docker container, execute the following command in your terminal:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/yogasw/docker-ssh-server/HEAD/run.sh)"
```

This command will download the necessary files and start the Docker container. Once the container is running, you can connect to it via SSH using the following command:

```
ssh root@DOCKER_HOST -p 2200
```


Make sure to replace `DOCKER_HOST` with the IP address or hostname of the machine running the Docker container.

When prompted, enter the password `p4sword`.

## Disclaimer

Please note that this Docker image is for testing and development purposes only. It is not intended for use in production environments. Use at your own risk.
