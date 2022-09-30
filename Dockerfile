# Pull base image 
From tomcat:8-jre8 
echo "$CATALINA_HOME/webapps"
# Maintainer 
MAINTAINER "valaxytech@gmail.com" 
COPY ./webapp.war /usr/local/tomcat/webapps/

