# Dockerfile
# Використовуємо офіційний легкий образ Python
FROM python:3.9-slim

# Встановлюємо робочу директорію
WORKDIR /app

# Копіюємо файли для встановлення
COPY setup.py ./
COPY custom_tail/ ./custom_tail/

# Встановлюємо наш пакет. Це автоматично завантажить і click.
RUN pip install .

# Вказуємо, що при запуску контейнера буде виконуватися наша команда
ENTRYPOINT ["ctail"]

# За замовчуванням, показуємо help-повідомлення
CMD ["--help"]