
all:
	make down
	make clean
	make build
	make up

clean:
	rm -rf target
	rm -rf Cargo.lock
	docker container prune -f
	docker image prune -f

build:
	docker-compose build --parallel

up:
	docker-compose up -d

dev_up:
	docker-compose -f docker-compose.dev.yaml up -d

down:
	docker-compose down

dev_down:
	docker-compose -f docker-compose.dev.yaml down

devops_up:
	(cd devops; make up)

devops_down:
	(cd devops; make down)
