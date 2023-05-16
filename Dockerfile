FROM python:3.11

WORKDIR /app
COPY . run.py /app/

RUN pip install --no-cache-dir --upgrade pip
RUN pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80

CMD ["python", "run.py"]