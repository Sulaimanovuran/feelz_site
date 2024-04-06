FROM python:3.9-slim

WORKDIR /iq_site

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY . .

RUN pip install -r requirements.txt

EXPOSE 4000

CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]