build:
	docker-compose up --build -d
daemon:
	docker-compose up -d
psql:
	docker-compose exec db psql -U postgres