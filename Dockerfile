FROM python:3.9-slim

WORKDIR /app

ENV FLASK_APP=main

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . .


RUN pip install -r requirements.txt
RUN pwd && ls

CMD ["gunicorn", "-b", "0.0.0.0:5000", "main:app"]
