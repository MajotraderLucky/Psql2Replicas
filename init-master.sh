#!/bin/bash
set -e

# Проверяем, что скрипт запущен на основном сервере
if [ "$ROLE" = "master" ]; then
    # Подключаемся к базе данных как суперпользователь (или другой пользователь с достаточными правами)
    psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
      SELECT pg_create_physical_replication_slot('replica_slot');
EOSQL
fi