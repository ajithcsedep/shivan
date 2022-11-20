FROM tomcat:latest
# Dummy text to test 
COPY target/docker*.war /usr/local/tomcat/webapps/docker.war
