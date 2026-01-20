pipeline {
  agent any

  environment {
    DOCKERHUB_USER = "josstm"   
    IMAGE_NAME     = "obraz"
    IMAGE_TAG      = "latest"
  }

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }

    stage('Build') {
      steps {
        sh 'bash scripts/build.sh'
      }
    }

    stage('Test') {
      steps {
        sh 'bash scripts/test.sh'
      }
    }

    stage('Docker Build') {
      steps {
        sh 'docker build -t ${IMAGE_NAME} .'
      }
    }

    stage('Docker Tag') {
      steps {
        sh 'docker tag ${IMAGE_NAME} ${DOCKERHUB_USER}/${IMAGE_NAME}:${IMAGE_TAG}'
      }
    }

    stage('Docker Push') {
      steps {
        sh 'docker push ${DOCKERHUB_USER}/${IMAGE_NAME}:${IMAGE_TAG}'
      }
    }
  }
}
