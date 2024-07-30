#!/bin/sh
docker-compose exec web ridgepole --apply -f  db/schemas/Schemafile  -E development  --config config/database.yml