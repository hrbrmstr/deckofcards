#!/bin/sh

apk add --update \
    git \
    python \
    python-dev \
    py-virtualenv \
    py-pip \
    build-base \
  && pip install virtualenv \
  && rm -rf /var/cache/apk/*

pip install --upgrade pip

pip install Django==1.8 jsonfield pbr six stevedore virtualenv-clone

rm -r /root/.cache
rm -rf /var/cache/apk/*

mkdir /app
cd /app
git clone --depth=1 https://github.com/crobertsbmw/deckofcards
cd deckofcards

python manage.py migrate

python manage.py runserver 0.0.0.0:9090