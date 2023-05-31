@Library('shared-lib2') _
import hudson.model.*
import hudson.EnvVars
import groovy.json.JsonSlurperClassic
import groovy.json.JsonBuilder
import groovy.json.JsonOutput
import groovy.json.*
import java.net.URL



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
          docker.build("17-alpine").run('-p 8009:3000').build()
        }
      }
    }
    }

}