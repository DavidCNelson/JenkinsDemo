pipeline {
  agent any
  stages {
    stage('build') {
      parallel {
        stage('build') {
          steps {
            sh 'java -version'
          }
        }
        stage('build tools') {
          steps {
            sh 'echo build tools here...'
          }
        }
      }
    }
    stage('Test') {
      steps {
        echo 'Run tests here...'
	sh 'runtest.sh'
      }
    }
    stage('Deploy') {
      steps {
        echo 'And we would deploy here.'
      }
    }
  }
}
