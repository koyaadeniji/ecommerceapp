pipeline {
  agent any 

  environment {
    SERVICE_NAME        = "ecommerceapp"
    ORGANIZATION_NAME   = "koyaadeniji"
    DOCKERHUB_USERNAME  = "koyaadeniji"
    REGISTRY_TAG        = "${DOCKERHUB_USERNAME}/${ORGANISATION_NAME}-${SERVICE_NAME}:${BUILD_ID}"
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
          sh 'docker build -t ${REGISTRY_TAG} .'
          sh 'docker run -it ${REGISTRY_TAG} /bin/bash'
          sh 'docker push ${REGISTRY_TAG}'
        }
      } 
    } 
    stage ('Delete') {
      steps {
        sh 'docker rmi -f $(docker images -qa)'
      }
    }
    
  }
} 
