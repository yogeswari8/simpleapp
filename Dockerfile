FROM tomcat:9
LABEL app=my-app
COPY /var/lib/jenkins/workspace/simplewebapplication/target/simpleapp.war /usr/local/tomcat/webapps/simpleapp.war
