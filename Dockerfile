FROM tomcat:9
LABEL app=my-app
COPY target/*.war /opt/tomcat/webapps/myweb.war
