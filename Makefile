DOCKER_COMPOSE = docker-compose

#####
# Executed when you run "make" cmd
# Simply run "help" tasks
all: help

#####
# Start containers (Also builds images, if there not exists)
start:
	$(DOCKER_COMPOSE) up -d

#####
# Stop containers (And also remove it)
stop:
	$(DOCKER_COMPOSE) kill
	$(DOCKER_COMPOSE) stop
	$(DOCKER_COMPOSE) rm --force

#####
# List current running containers
list:
	$(DOCKER_COMPOSE) ps

#####
# Start new bash terminal inside the wordpress Container
ssh:
	$(DOCKER_COMPOSE) run wordpress bash

#####
# Display current running containers logs (Press "Ctrl + c" to exit)
logs:
	$(DOCKER_COMPOSE) logs -f

#####
# Display available make commands
help:
	@echo 'Recipes List:'
	@echo ''
	@echo 'use "make <recipes>"'
	@echo 'ex "make list"'
	@echo ''
	@echo '+-----------------+--------------------------------------------------------------------+'
	@echo '| Recipes         | Utility                                                            |'
	@echo '+-----------------+--------------------------------------------------------------------+'
	@echo '| start           | Start containers (Also builds images, if there not exists)         |'
	@echo '| stop            | Stop containers (And also remove it)                               |'
	@echo '| list            | List current running containers                                    |'
	@echo '| ssh             | Start new bash terminal inside the Wordpress Container             |'
	@echo '| logs            | Display current running containers logs (Press "Ctrl + c" to exit) |'
	@echo '+-----------------+--------------------------------------------------------------------+'
	@echo ''
