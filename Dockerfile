FROM python:3.11-slim

ARG FORWARDED_APP_PORT=8080

ENV APP_PORT=$FORWARDED_APP_PORT

WORKDIR /app

COPY requirements.txt /app

RUN pip install --no-cache-dir -r requirements.txt

COPY src /app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]

EXPOSE $APP_PORT
