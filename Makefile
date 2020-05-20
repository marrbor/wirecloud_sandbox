default: start

start:
	docker-compose --log-level ERROR -p wsb up -d --remove-orphans

stop:
	docker-compose --log-level ERROR -p wsb down -v --remove-orphans

# https://wirecloud.readthedocs.io/en/stable/installation_guide/#database-population
migrate:
	docker exec -ti wirecloud manage.py $@

createsuperuser:
	docker exec -ti wirecloud manage.py $@

populate:
	docker exec -ti wirecloud manage.py $@

#setup: migrate createsuperuser populate
setup: migrate createsuperuser
