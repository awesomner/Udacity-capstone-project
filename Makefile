setup:
	python3 -m venv ~/.devops

install:
	pip install --upgrade pip
	pip install -r requirements.txt
	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v2.12.0/hadolint-Linux-x86_64
	chmod +x ./hadolint

lint:
	./hadolint Dockerfile 

all: install lint test