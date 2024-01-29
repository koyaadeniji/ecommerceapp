pipeline {
  agent any
  stages {
    stage ('Print ENVs') {
      steps {
        sh 'printenv'
      }
    }
    stage ('Build Image') {
      steps {
        withDockerRegistry([credentialsId: 'docker-hub', url: ""]) {
          sh 'docker build -t koyaadeniji/ecommerceapp .'
          //sh 'docker push ${REGISTRY_TAG}'
        }
      }
    }
    stage ('Delete Images') {
      steps {
        sh 'docker rmi -f $(docker images -qa)'
      }
    }
  }
}
