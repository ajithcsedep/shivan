FROM tomcat:latest
# Dummy text to test 
COPY target/ajithdocker*.war /usr/local/tomcat/webapps/ajithdocker.war
