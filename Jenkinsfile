pipeline {
  agent {
    docker {
      image 'node:18-alpine'
      // опционально: можно добавить args, но чаще хватает environment ниже
      // args '-u 1000:1000'
    }
  }

  environment {
    HOME = "${WORKSPACE}"
    NPM_CONFIG_CACHE = "${WORKSPACE}/.npm"
  }

  stages {
    stage('Build') {
      steps {
        sh '''
          set -eux
          mkdir -p "$NPM_CONFIG_CACHE"
          chmod -R u+rwX "$NPM_CONFIG_CACHE" || true
          sh scripts/build.sh
        '''
      }
    }
  }
}
