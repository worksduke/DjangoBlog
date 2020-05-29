#!/bin/sh

virtualenv-3 .venv
source .venv/bin/activate
pip3 install -Ur requirements.txt
./manage.py createsuperuser
./manage.py create_testdata
./manage.py collectstatic --noinput
./manage.py compress --force
./manage.py runserver
