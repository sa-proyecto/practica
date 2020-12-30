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
        stage('Deploy') {
            steps {
                ansiblePlaybook installation: 'ansible2', inventory: 'dev.inv', playbook: 'ansible_config.yml'
            }
        }
    }
}