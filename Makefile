# makefile
#
# makefile needs double $$ for bash expansion
#

## Make for local container
# fids backend and db
##

flush-db-local:
	docker exec -i $$(docker-compose -f docker/docker-compose.local.yml ps -q web) python manage.py flush --noinput

backup-db-local:
	docker-compose -f docker/docker-compose.dev.yml exec web python manage.py \
	dumpdata -e admin -e sessions -e auth.permission -e contenttypes --indent 2 \
	> _backups/local.db.$$(date '+%Y-%m-%d-%H-%M-%S').bak.json

start-db:
	docker-compose up -d

stop-db:
	docker-compose down

check-state-db:
	docker-compose ps

check-logs-db:
	docker-compose logs
