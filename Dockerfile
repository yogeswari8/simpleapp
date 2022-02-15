FROM tomcat:9
LABEL app=my-app
WORKDIR /usr/local/tomcat/webapps
ADD . /usr/local/tomcat/webapps/
EXPOSE 3000
