FROM alpine:3.1

# Update
RUN apk add --update python py-pip

# Install app dependencies

#RUN git clone https://github.com/catusf/docker-python.git

ADD requirements.txt /tmp/requirements.txt
RUN pip install -qr /tmp/requirements.txt

ADD ./app.py /opt/webapp/app.py

WORKDIR /opt/webapp

EXPOSE 5000

CMD ["python", "app.py"]

