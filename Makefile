setup:
	python3 -m venv ~/.py_env

install:
	pip install --upgrade pip==23.1.2 &&\
		pip install -r requirements.txt
	wget -O /tmp/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
		chmod +x /tmp/hadolint

lint:
	/tmp/hadolint Dockerfile 
	pylint --disable=C,R,W1203 run.py

all: install lint test