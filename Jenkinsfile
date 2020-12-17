#!/usr/bin/env groovy

pipeline {

    agent any

    environment {
        CHROME_BIN = 'google-chrome'
    }

    stages {
        stage('Install') {
            steps {
                echo 'Installing...'
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'npm run test-headless'
            }
        }
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'npm run build'
            }
        }
        stage('Puppet') {
            steps {
                echo 'Preparing puppet agent...'
                sh 'ssh medinillag@agent.medinillag.com < /var/lib/jenkins/workspace/pipeline/puppet-agent.sh'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                sh 'chmod +x /var/lib/jenkins/workspace/pipeline/puppet-transfer.sh'
                sh '/var/lib/jenkins/workspace/pipeline/puppet-transfer.sh'
            }
        }
    }
}