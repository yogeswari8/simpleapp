node{
  
  stage('code build'){
    git 'https://github.com/yogeswari8/simpleapp'
  }
  stage('build') {
    def mvnHome = tool name: 'apache-maven-3.8.4', type: 'maven'
    sh "${mvnHome}/bin/mvn clean install"
  }
  stage('deploy to tomcat') {
    sh "chmod -f 777 /var/lib/jenkins/workspace/travel-agency/target/travel.war"
    sh "cp -r /var/lib/jenkins/workspace/travel-agency/target/travel.war /opt/apache-tomcat-9.0.55/webapps/"
   }
  
}
  
