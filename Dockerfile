FROM python:3.6.8-alpine3.9

RUN pip install --no-cache-dir boto3==1.9.142 && \
    pip install --no-cache-dir kubernetes==9.0.0 && \
    \
    adduser -Du 2345  unpriv

WORKDIR /home/unpriv

USER unpriv
