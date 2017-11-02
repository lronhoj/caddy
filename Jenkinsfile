pipeline {
  agent none
  stages {
    stage('error') {
      parallel {
        stage('print') {
          steps {
            echo 'Hello world'
          }
        }
        stage('print 2') {
          steps {
            echo 'Hello 2'
          }
        }
      }
    }
  }
}