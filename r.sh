docker stop webapp
docker rm webapp
docker run -v /c/Users/Danpm/docker/catusf/webapp/src:/opt/webapp -p 5000:5000 --name webapp webapp

#  -v /c/Users/Danpm/docker/catusf/webapp/src:/opt/webapp