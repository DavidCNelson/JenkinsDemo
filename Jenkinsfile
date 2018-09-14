pipeline {
  agent any
  stages {
    stage('Build') {
      stages {
        stage('init build') {
          steps {
            echo 'Get the version of Java'
            sh 'java -version'
          }
        }
        stage('build lib') {
          steps {
            sh 'echo build library here...'
            // This seems to require cmake be installed, even it already is available on the machine.
            //cmakeBuild(buildDir: 'cmake-debug-build', buildType: 'Debug', sourceDir: '.', installation: 'cmake')
          }
        }
        stage('build exe') {
          steps {
            sh 'echo build the executable here...'
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
