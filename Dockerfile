FROM python:3.6.8-alpine

LABEL image for a NLP app


COPY ./ ./app
WORKDIR ./app

RUN pip install -r requirements.txt

CMD gunicorn -t 120 -b :$PORT app:app --worker-class eventlet --workers 3