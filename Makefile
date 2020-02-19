# var $(MAKECMDGOALS) contains everything behind `make`.
# filter-out removes the first parameter so we can use everything behind
# that as arguments to the resulting command.
# If you run for example `make composer install`
# the resulting variable is ′install′
ARGUMENTS=$(filter-out $@,$(MAKECMDGOALS))


start:
	DB_ENVIRONMENT=local docker-compose up --force-recreate -d

start_production:
	docker-compose up --force-recreate -d

start_mongo_client:
	docker-compose -f ./build/docker/docker-compose.mongoclient.yml up --force-recreate


stop:
	docker-compose stop


attach_logs:
	docker-compose logs -f $(ARGUMENTS)


container_bash:
	docker exec -it $(ARGUMENTS) /bin/bash

# the network ip of mongo container is neccessary to connect to it via mongo_client
container_info:
	docker inspect $(ARGUMENTS)
