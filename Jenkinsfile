pipeline {
  agent any 
  environment {
    SERVICE_NAME       =    "ecommerceapp"
    ORGANIZATION_NAME  =    "koyaadeniji"
    DOCKERHUB_USERNAME =    "koyaadeniji"
    REGISTRY_TAG       =    "${DOCKERHUB_USERNAME}/${ORGANIZATION_NAME}-${SERVICE_NAME}:${BUILD_ID}"
    VERSION            = "${BUILD_ID}"
  }
  stages {
    stage ('Print ENVs') {
      steps {
        sh 'printenv'
      }
    }
    stage('Check DockerHub Connection') {
      steps {
        script {
          try {
            sh 'docker info'
            echo 'Docker Hub is linked.'
          } catch (Exception e) {
            error 'Failed to connect to Docker Hub. Check Docker Hub credentials.'
          }
        }
      }
    }
    stage ('Build and Push Docker Image') {
           steps {
             withDockerRegistry([credentialsId: 'docker-hub', url: '']) {
               //sh 'docker build -t koyaadeniji/ecommerceapp .'
              // sh 'docker push ${REGISTRY_TAG}'
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
           
         
         
         
         
         
         
           
           
    
