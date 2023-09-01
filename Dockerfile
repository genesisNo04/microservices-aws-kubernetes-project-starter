FROM python:3.10-slim-buster

USER root

WORKDIR /src

COPY ./analytics/requirements.txt requirements.txt

RUN apt update -y && apt install -y build-essential libpq-dev

RUN pip install -r requirements.txt

COPY ./analytics .

CMD DB_USERNAME=postgres DB_PASSWORD=jsnqhp6YbL python app.py