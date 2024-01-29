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
        script {
          withDockerRegistry([credentialsId: 'docker-hub', url: ""]) {
            //docker.build("koyaadeniji/koyaadeniji-ecommerceapp:latest")
            sh 'docker build -t koyaadeniji/koyaadeniji-ecommerceapp .'
          //sh 'docker push ${REGISTRY_TAG}'
        }
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
