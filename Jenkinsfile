pipeline{
    agent any
    stages {
        stage('Build') {
            steps {
         checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/hariharan481/cosecants1.git']])
                bat 'npm install'
            }
        }
         stage('Build Docker image') {
     steps {
        script {
          docker.build("17-alpine").run('-p 8009:8282').build()
        }
      }
    }
    }

}