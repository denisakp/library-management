FROM python:3.11-slim

WORKDIR /libman

COPY requirements.txt /libman

RUN pip install --no-cache-dir -r requirements.txt

COPY src /libman/app

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]

EXPOSE 80
