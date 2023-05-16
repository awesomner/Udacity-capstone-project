setup:
	python3 -m venv ~/.py_env

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=C,R,W1203 run.py

all: install lint test