node{
  def tomcatweb = "/root/apache-tomcat-9.0.55/webapps"
  def tomcatbin = "/root/apache-tomcat-9.0.55/bin"
  stage('code build'){
    git 'https://github.com/yogeswari8/simpleapp'
  }
  stage('build') {
    def mvnHome = tool name: 'apache-maven-3.8.4', type: 'maven'
    sh "${mvnHome}/bin/mvn clean install"
  }
  stage('deploy to tomcat') {
    sh "copy target/simpleapp.war /"${tomcatweb}/simpleapp.war""
}
  
