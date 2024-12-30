docker-setup:
	docker-compose run --rm app make setup

docker-test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

docker-dev:
	docker-compose up

ci:
    docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
