pipeline {
  agent any
  triggers {
    cron '''H/3 * * * *

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
