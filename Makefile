build:
	docker build . --no-cache --tag ftpserver

run:
	docker run -d -p 21:21 --name ftps --rm -it ftpserver

bash:
	docker exec -it ftps bash

stop:
	docker stop ftps