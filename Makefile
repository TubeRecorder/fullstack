
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
	docker-compose --build

up:
	docker-compose up -d

down:
	docker-compose down

devops_up:
	(cd devops; make up)

devops_down:
	(cd devops; make down)
