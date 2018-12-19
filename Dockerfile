FROM python:3.7-alpine
MAINTAINER Jonatas Oliveira

ENV PYTHONUNBUFFERED 1

RUN mkdir /app
COPY . /app
WORKDIR /app

RUN pip install pipenv && \
    pipenv install --system

RUN adduser -D user
USER user
