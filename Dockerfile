# Pull base image 
From tomcat-9.0.60

# Maintainer 
MAINTAINER "adhavvishal26@gmail.com" 
COPY ./webapp.war /opt/apache-tomcat-9.0.60/webapps/

EXPOSE 8080
