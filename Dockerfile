FROM tomcat:9
LABEL app=my-app
RUN yum update -y
COPY /var/lib/jenkins/workspace/simplewebapplication/target/simpleapp.war /usr/local/tomcat/webapps/
