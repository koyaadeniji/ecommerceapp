pipeline {
  agent any
  environment {
    SERVICE_NAME       = "ecommerceapp"
    ORGANIZATION_NAME  = "koyaadeniji"
    DOCKERHUB_USERNAME = "koyaadeniji"
    REGISTRY_TAG       = "${DOCKERHUB_USERNAME}/${ORGANIZATION_NAME}-${SERVICE_NAME}:${BUILD_ID}"
  }
  
  stages {
    stage ('Print ENVs') {
      steps {
        sh 'printenv'
      }
    }
    
    stage ('Build Image') {
      steps {
        withDockerRegistry([credentialsId: 'docker-hub', url: ""]) {
          sh 'docker build -t Koya Adeniji/ecommerceapp .'
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
