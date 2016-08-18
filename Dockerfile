FROM alpine:3.1

git pull 

# Update
RUN apk add --update git python py-pip

# Install app dependencies

RUN git clone https://github.com/catusf/docker-python.git

WORKDIR ./docker-python

#ADD requirements.txt /tmp/requirements.txt
RUN pip install -qr requirements.txt

#ADD app.py /opt/webapp/app.py
EXPOSE 5000

CMD ["python", "app.py"]

