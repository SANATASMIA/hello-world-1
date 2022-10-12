### vi Dockerfile
# Pull base image 
FROM tomcat:8-jre8 

#mkdir /opt/docker
RUN mkdir /opt/docker

# Maintainer
MAINTAINER "valaxytech" 

# copy war file on to container 
COPY webapp.war /usr/local/tomcat/webapps
#RUN cp ./webapp.war /usr/local/tomcat/webapps

CMD ["catalina.sh", "run"]





# Pull base image 
#From tomcat:8-jre8 
#ARG WAR_FILE=/opt/docker/webapp/target/webapp.war
#RUN echo "$CATALINA_HOME/webapps"
# Maintainer 
#MAINTAINER "valaxytech@gmail.com" 
#COPY ./webapp.war /usr/local/tomcat/webapps/
#COPY ./*.war /usr/local/tomcat/webapps/
