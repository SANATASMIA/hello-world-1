RUN mkdir /opt/docker

### vi Dockerfile
# Pull base image 
From tomcat:8-jre8 

# Maintainer
MAINTAINER "valaxytech" 

# copy war file on to container 
COPY ./webapp.war /usr/local/tomcat/webapps






# Pull base image 
#From tomcat:8-jre8 
#ARG WAR_FILE=/opt/docker/webapp/target/webapp.war
#RUN echo "$CATALINA_HOME/webapps"
# Maintainer 
#MAINTAINER "valaxytech@gmail.com" 
#COPY ./webapp.war /usr/local/tomcat/webapps/
#COPY ./*.war /usr/local/tomcat/webapps/
