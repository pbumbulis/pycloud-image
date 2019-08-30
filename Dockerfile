FROM python:3.6.8-alpine3.9

RUN pip install --no-cache-dir boto3==1.9.142 && \
    pip install --no-cache-dir kubernetes==10.0.1 && \
    pip install --no-cache-dir kubernetes_asyncio==9.1.0 && \
    pip install --no-cache-dir jsonschema==3.0.1 && \
    pip install --no-cache-dir js2py==0.66 && \
    pip install --no-cache-dir tzlocal==1.5.1 && \
    pip install --no-cache-dir backoff==1.8.0 && \
    \
    adduser -Du 2345  unpriv

WORKDIR /home/unpriv

USER unpriv
