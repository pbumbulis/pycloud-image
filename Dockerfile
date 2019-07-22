FROM python:3.6.8-alpine3.9

RUN pip install --no-cache-dir boto3==1.9.142 && \
    pip install --no-cache-dir kubernetes==9.0.0 && \
    pip install --no-cache-dir jsonschema==3.0.1 && \
    pip install --no-cache-dir js2py==0.66 && \
    pip install --no-cache-dir tzlocal==1.5.1 && \
    \
    adduser -Du 2345  unpriv

WORKDIR /home/unpriv

USER unpriv
