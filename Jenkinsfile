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
    stage('deploy') {
      steps {
        input 'Should we deploy?'
        echo 'Deployed!'
      }
    }
    stage('revert') {
      steps {
        input 'Should we revert?'
        echo 'Reverted!'
      }
    }
  }
}