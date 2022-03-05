# !/bin/sh
echo "waiting for postgres server"
while ! nc -z db 5432; do
  sleep 1
done
echo "postgres Connection Successfully"

exec "$@"
exec air -c air.toml