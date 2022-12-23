pipeline {
  agent any
  triggers {
    cron '''* H/12 * * *

    '''
  }
  stages {
    stage('version') {
      steps {
        sh 'python3 --version'
      }
    }
    stage('hello') {
      steps {
        sh 'robot .'
      }
    }
  }
}
