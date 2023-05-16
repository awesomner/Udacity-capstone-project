setup:
	python3 -m venv ~/.py_env

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
	mkdir temp
	wget -O temp/hadolint https://github.com/hadolint/hadolint/releases/download/v2.12.0/hadolint-Linux-x86_64 &&\
		chmod +x temp/hadolint

lint:
	./temp/hadolint Dockerfile
	pylint --disable=C,R,W1203 run.py

all: install lint test