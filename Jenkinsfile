pipeline {
  agent any 
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
    //stage ('Build and Push Docker Image') {
           //steps {
             //withDockerRegistry([credentialsId: 'docker-hub', url: '']) {
               //sh 'docker build -t ${REGISTRY_TAG} .'
               //sh 'docker push ${REGISTRY_TAG}'
             //}
           //}
        //}
    stage('Build Docker Image') {
            steps {
                script {
                    // Define the Docker image name and tag
                    def dockerImage = "koyaadeniji/ecommerceapp:${env.BUILD_NUMBER}"

                    // Build the Docker image
                    sh "docker build -t ${dockerImage} ."
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
           
         
         
         
         
         
         
           
           
    
