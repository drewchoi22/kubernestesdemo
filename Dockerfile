# Base Image
FROM python:3

# set default environment variables
ENV PROJECT_ROOT /app

# create and set working directory
WORKDIR $PROJECT_ROOT

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD python3 manage.py runserver 0.0.0.0:8000

