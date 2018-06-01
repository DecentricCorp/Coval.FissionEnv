#FROM alpine:3.5

#RUN apk update
#RUN apk add --no-cache python3 python3-dev build-base
#RUN apk add libffi-dev libressl-dev
#RUN apk add --no-cache git
FROM ubuntu:latest
RUN apt-get update \
  && apt-get install -y python3-pip python3-dev libffi-dev git \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python
#RUN apt-get install libffi-dev
RUN pip3 install --upgrade pip
RUN pip3 install cryptography
RUN pip3 install pynacl
RUN rm -r /root/.cache
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
RUN git clone https://github.com/nucypher/pyUmbral.git
WORKDIR /app/pyUmbral

RUN pip3 install .
#-e pyUmbral
WORKDIR /app
#RUN demo.py
ENTRYPOINT ["python3"]
CMD ["server.py"]

