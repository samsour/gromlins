# var $(MAKECMDGOALS) contains everything behind `make`.
# filter-out removes the first parameter so we can use everything behind
# that as arguments to the resulting command.
# If you run for example `make composer install`
# the resulting variable is ′install′
ARGUMENTS=$(filter-out $@,$(MAKECMDGOALS))


start:
	docker-compose up --force-recreate -d


start_mongo_client:
	docker-compose -f ./build/docker/docker-compose.mongoclient.yml up --force-recreate


stop:
	docker-compose stop


attach_logs:
	docker-compose logs -f $(ARGUMENTS)


container_bash:
	docker exec -it $(ARGUMENTS) /bin/bash
