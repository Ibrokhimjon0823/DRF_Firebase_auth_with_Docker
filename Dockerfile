FROM python:3.8-slim
ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
RUN mkdir /code
WORKDIR /code


ADD requirement.txt \
    /code/requirements/
RUN pip3 install -r requirements/requirement.txt
ADD . /code/
