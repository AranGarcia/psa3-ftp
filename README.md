# FTP Server

## Installation

Building the image

```sh
docker build . --tag ftpserver
```

Running the docker container

```sh
docker run -p 21:21 --name ftps --rm -it ftpserver

```

Running a bash session

```sh
docker exec -it ftps bash
```

Copying the `vsftp.d` config file

```sh
docker cp ed1db7ab3c76:/etc/vsftpd.conf .
```