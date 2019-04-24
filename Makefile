local:
	docker-compose -f docker-compose.yml -f ./docker-compose.local.yml -p project up --build -d
prod:
	docker-compose -f docker-compose.yml -f ./docker-compose.prod.yml -p project up --build -d
down:
	docker-compose -p project down
kill:
	docker-compose -p project kill
shell:
	docker-compose -p project exec --user=1000 php bash
root:
	docker-compose -p project exec php bash
cache:
	docker-compose -p project exec -T --user=1000 php php artisan optimize
environment:
	./install.sh
test:
	docker-compose -p project exec -T php bash -c "./docker/autotest.sh"


