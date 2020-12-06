#!/usr/bin/env groovy

pipeline {

    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                npm install
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
                npm run test
            }
        }
        stage('Deploy') {
            steps {
                echo 'Starting...'
                npm run start
            }
        }
    }
}