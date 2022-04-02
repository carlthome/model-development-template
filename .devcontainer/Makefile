export COMPOSE_PROJECT_NAME:=$(shell basename $(shell pwd))
export COMPOSE_FILE:=.devcontainer/docker-compose.yaml:.devcontainer/docker-compose.host.yaml:.devcontainer/docker-compose.gpu.yaml

docker-build:
	docker compose build

docker-up: docker-build
	docker compose up --build --detach

docker-down:
	docker compose down

docker-shell: docker-up
	docker compose exec shell bash

docker-clean: docker-down
	docker compose rm shell
	docker rmi ${COMPOSE_PROJECT_NAME}_shell

docker-ps:
	docker compose ps
