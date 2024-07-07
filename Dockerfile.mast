FROM postgres:latest

# Установка необходимых пакетов (если нужно)
RUN apt-get update && apt-get install -y nano vim

# Установка переменных окружения (если нужно)
ENV POSTGRES_PASSWORD=psql_pass
ENV POSTGRES_USER=master_user
ENV POSTGRES_DB=master_db

# Порт, на котором будет запущен PostgreSQL
EXPOSE 5432

# Настраиваем команду для запуска PostgreSQL с кастомным конфиг файлом
CMD ["postgres", "-c", "config_file=/etc/postgresql/postgresql.conf"]
