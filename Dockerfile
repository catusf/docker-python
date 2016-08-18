FROM alpine:3.1

git pull 

# Update
RUN apk add --update python py-pip

# Install app dependencies

#ADD requirements.txt /tmp/requirements.txt
#RUN pip install -qr /tmp/requirements.txt

ADD app.py /opt/webapp/app.py
WORKDIR /opt/webapp
EXPOSE 5000

CMD ["python", "app.py"]

