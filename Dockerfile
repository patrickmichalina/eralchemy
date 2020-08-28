FROM python:alpine

WORKDIR /app

RUN apk add --no-cache --virtual deps alpine-sdk
RUN apk add --no-cache graphviz-dev && \
  apk add postgresql-dev gcc python3-dev musl-dev && \
  pip install psycopg2 && \
  pip install eralchemy && \
  apk del deps

CMD ["eralchemy"]