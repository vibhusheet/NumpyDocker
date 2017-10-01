FROM gliderlabs/alpine

ADD repositories.txt /etc/apk/repositories

RUN apk add --no-cache --update \
    python3 python3-dev gcc \
    gfortran musl-dev

ADD requirements-pip.txt .
RUN pip3 install --upgrade pip setuptools && \
    pip3 install -r requirements-pip.txt

ADD . /app
WORKDIR /app
ENV PYTHONPATH=/app/
ENTRYPOINT python3 testscript.py
