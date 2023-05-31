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
          docker.build("18-alpine").run('-p 8009:3000').build()
        }
      }
    }
    }

}