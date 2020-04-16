#
default: start

start:
	docker-compose --log-level ERROR -p wsb up -d --remove-orphans

stop:
	docker-compose --log-level ERROR -p wsb down -v --remove-orphans
