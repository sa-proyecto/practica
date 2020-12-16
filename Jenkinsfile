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
                sh 'ssh medinillag@35.239.252.174 < /var/lib/jenkins/workspace/pipeline/puppet-agent.sh'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                sh 'scp -r /var/lib/jenkins/workspace/pipeline/dist medinillag@35.239.252.174:/var/www/html'
            }
        }
    }
}