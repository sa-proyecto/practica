node {
    stage('Build') {
        steps {
            echo 'Building...'
            sh 'npm install'
        }
    }
    stage('Test') {
        steps {
            echo 'Testing...'
            sh 'npm run test'
        }
    }
    stage('Deploy') {
        steps {
            echo 'Starting...'
            sh 'npm run start'
        }
    }
}