node{
  
  stage('code build'){
    git 'https://github.com/yogeswari8/simpleapp'
  }
  stage('build') {
    def mvnHome = tool name: 'maven3', type: 'maven'
    sh "${mvnHome}/bin/mvn clean install"
  }
  stage('Build Docker Image'){
     sh 'docker build -t yogeswari8/my-app:2.0.0 .'
   }
 
}  
