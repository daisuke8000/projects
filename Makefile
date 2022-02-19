###############################################################################
# dokcer
###############################################################################
build:
	docker-compose up --build -d
daemon:
	docker-compose up -d
stop:
	docker-compose stop
###############################################################################
# db
###############################################################################
psql-shell:
	docker-compose exec db /bin/sh
psql:
	docker-compose exec db /bin/sh -c "psql -U postgres -d simple_bank"
createdb:
	docker-compose exec db createdb --username=postgres --owner=postgres simple_bank
dropdb:
	docker-compose exec db dropdb --username=postgres simple_bank
.PHONY: createdb, dropdb
###############################################################################
# migrate
###############################################################################
migrate-shell:
	docker-compose exec migrate bash
migrate-up:
	docker-compose exec migrate bash -c 'migrate -path ./migrate -database "postgres://postgres:postgres@db:5432/simple_bank?sslmode=disable" -verbose up'
migrateup:
	docker-compose exec migrate bash -c 'migrate -path ./migrate -database "postgres://postgres:postgres@db:5432/simple_bank?sslmode=disable" -verbose down'