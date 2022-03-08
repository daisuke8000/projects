## Projects
this application Architecture
- golang
- postgresql
- k8s
## Libraries
- [golang-migrate](https://github.com/golang-migrate/migrate)
- [sqlc](https://github.com/kyleconroy/sqlc)
- [viper](https://github.com/spf13/viper)

### sqlc install
```bash
go install github.com/kyleconroy/sqlc/cmd/sqlc@latest
```

## How to use

build up
```bash
# docker-compose up -d --build
make build
```
create database
```bash
# make database simple_bank
make createdb
```
migrations
```bash
# docker-compose exec migrate bash -c 'migrate -path ./migrate -database "{DATABASE_ENGINE}://{POSTGRES_USER}:{POSTGRES_PASSWORD}@db:{PORT}/{DATABASE_NAME}?sslmode=disable" -verbose up'
make migrate-up
```
sql-builder
```bash
# cd ./db && sqlc generate && cd -
make sqlc
```
test-coverage
```bash
make test 
```