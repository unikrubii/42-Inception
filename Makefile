all:
	docker compose -f srcs/docker-compose.yml up -d --build

down:
	docker compose -f srcs/docker-compose.yml down

re:
	@docker compose -f srcs/docker-compose.yml up -d --build

clean : down
	docker volume rm $$(docker volume ls -q);
	docker rmi -f $$(docker images -qa);

.PHONY: all re down clean