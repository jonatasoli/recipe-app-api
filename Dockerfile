FROM python:3.7-alpine
MAINTAINER Jonatas Oliveira

ENV PYTHONUNBUFFERED 1

COPY ./Pipfile /Pipfile
COPY ./Pipfile.lock /Pipfile.lock
RUN pip install pipenv && \
    pipenv install --system

RUN mkdir /app
WORKDIR /app
COPY ./app /app


RUN adduser -D user
USER user
