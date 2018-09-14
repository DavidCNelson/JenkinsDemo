pipeline {
  agent any
  stages {
    stage('build') {
      parallel {
        stage('build') {
          steps {
            echo 'Get the version of Java'
            sh 'java -version'
          }
        }
        stage('build tools') {
          steps {
            sh 'echo build tools here...'
            cmakeBuild(buildDir: 'cmake-debug-build', buildType: 'Debug', sourceDir: '.', installation: 'cmake')
          }
        }
      }
    }
    stage('Test') {
      parallel {
        stage('Test 1') {
          steps {
            echo 'Run failure test here...'
            sh './runtest.sh'
          }
        }
        stage('Test 2') {
          steps {
            echo 'Run success test here...'
            sh './runtest.sh 0'
          }
        }
      }
    }
    stage('Deploy') {
      steps {
        echo 'And we would deploy here.'
      }
    }
  }
}