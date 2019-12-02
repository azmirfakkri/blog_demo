FROM python:3.8.0-alpine

WORKDIR /usr/src/blog_demo

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY requirements.txt /usr/src/blog_demo/requirements.txt
RUN pip install -r requirements.txt

# copy project
COPY . /usr/src/blog_demo/