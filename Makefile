#!/bin/sh

APP_NAME=bacnh85/qtsmart-dev

build:
	docker build docker-image -t ${APP_NAME}

public:
	docker push ${APP_NAME}

run:
	docker-compose up

test:
	docker-compose up -d
	docker exec -it -u 1000 qtsmart-dev /bin/bash