pipeline {
  agent {
    docker {
      image 'node:18-alpine'
      args '''agent {
    docker {
        image \'node:18\'
        args \'-u root\'
    }
}'''
      }

    }
    stages {
      stage('Build') {
        steps {
          sh '''
          set -eux
          export HOME="$WORKSPACE"
          export npm_config_cache="$WORKSPACE/.npm"
          mkdir -p "$npm_config_cache"
          npm install --cache "$npm_config_cache"
        '''
        }
      }

    }
  }