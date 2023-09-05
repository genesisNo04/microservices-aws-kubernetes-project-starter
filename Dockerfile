FROM python:3.10-slim-buster

ENV DB_PASSWORD=la2xED5Kkp
ENV DB_USERNAME=postgres

USER root

WORKDIR /src

COPY ./analytics/requirements.txt requirements.txt

RUN apt update -y && apt install -y build-essential libpq-dev

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY ./analytics .

CMD DB_USERNAME=$DB_PASSWORD DB_PASSWORD=$DB_USERNAME python app.py