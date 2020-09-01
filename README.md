# FTP Server

## Installation

Building the image

```sh
docker build . --tag ftpserver
```

Running the docker container

```sh
docker run --name ftps --rm -it ftpserver
```

Running a bash session

```sh
docker exec -it ftps bash
```