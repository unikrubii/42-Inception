all: folder
	docker compose -f srcs/docker-compose.yml up -d --build

folder:
	mkdir -p mysql;
	mkdir -p wordpress;

down:
	docker compose -f srcs/docker-compose.yml down

re:
	@docker compose -f srcs/docker-compose.yml up -d --build

clean : down
	docker volume rm $$(docker volume ls -q);
	docker rmi -f $$(docker images -qa);
	rm -rf mysql;
	rm -rf wordpress;

.PHONY: all re down clean