#!/bin/sh
docker-compose exec web ridgepole --apply -f  db/schemas/Schemafile  -E development  --config config/database.yml
docker-compose exec web ridgepole --apply -f  db/schemas/Schemafile  -E test  --config config/database.yml