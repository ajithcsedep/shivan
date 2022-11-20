FROM tomcat:latest
# Dummy text to test 
COPY target/hackcse/docker.war /usr/local/tomcat/webapps/.war
