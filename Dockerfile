FROM tomcat:9
LABEL app=my-app
COPY /var/lib/jenkins/workspace/Hotel-pipe/target/simpleapp.war /usr/local/tomcat/webapps/simpleapp.war
