FROM python:3.10-slim-buster

WORKDIR /src

COPY ./analytics/requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY ./analytics .

CMD DB_USERNAME=postgres DB_PASSWORD=b5TsHDpM7R python app.py