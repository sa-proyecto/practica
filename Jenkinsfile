#!/usr/bin/env groovy

pipeline {

    agent any

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
        stage('Deploy') {
            steps {
                echo 'Starting...'
                sh 'npm run start'
            }
        }
    }
}