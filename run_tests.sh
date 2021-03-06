#!/usr/bin/env bash
set -e
virtualenv venv --distribute -p python3
source venv/bin/activate
pip install -r requirements.txt
PYTHONPATH=. venv/bin/coverage run tests/calculations_tests.py
PYTHONPATH=. venv/bin/coverage report --omit=venv/*
PYTHONPATH=. venv/bin/coverage html --omit=venv/*
PYTHONPATH=. venv/bin/coverage xml --omit=venv/*
