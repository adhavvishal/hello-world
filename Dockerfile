# Pull base image 
From tomcat

# Maintainer 
MAINTAINER "adhavvishal26@gmail.com" 
COPY ./webapp.war /usr/local/tomcat/webapps/

EXPOSE 8080
