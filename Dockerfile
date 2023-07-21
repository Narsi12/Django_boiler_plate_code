FROM python:3.8.10

ENV PYTHONUNBUFFERED 1

WORKDIR /app

ADD . /app/

EXPOSE 8080

COPY requirements.txt /app

RUN pip3 install -r requirements.txt

COPY . /app

ENTRYPOINT ["python3"]

CMD ["manage.py", "runserver", "0.0.0.0:8080"]