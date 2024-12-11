# базовый образ (вместо версии с alpine можно указать просто python:3.12):
FROM python:3.12-alpine
# установка библиотеки с апи:
RUN pip install --no-cache-dir --upgrade prlps_ya300
# уровень логирования, не обязательно:
ENV YA300_LOG_LEVEL=DEBUG
# порт, не обязательно (по умолчанию 7860):
ENV YA300_API_PORT=8080
# команда запуска апи:
CMD ["python", "-m", "prlps_ya300"]