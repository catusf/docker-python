docker stop docker-python
docker rm docker-python
docker run -d -p 5000:5000 --name docker-python catusf/docker-python

#  -v /c/Users/Danpm/docker/catusf/webapp/src:/opt/webapp