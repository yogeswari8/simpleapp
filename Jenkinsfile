node{
  
  stage('code build'){
    git 'https://github.com/yogeswari8/simpleapp'
  }
  stage('build') {
    def mvnHome = tool name: 'apache-maven-3.8.4', type: 'maven'
    sh "${mvnHome}/bin/mvn clean install"
  }
  stage('Build Docker Image'){
     sh 'docker build -t yogeswari8/my-app:2.0.0 .'
   }
  stage('Run Container on Dev Server'){
     def dockerRun = 'docker run -p "8085:80" -d --name my-app yogeswari8/my-app:2.0.0'
     sshagent(['dev-server']) {
       sh "ssh -o StrictHostKeyChecking=no ec2-user@18.117.119.248 ${dockerRun}"
     }
}
}  
