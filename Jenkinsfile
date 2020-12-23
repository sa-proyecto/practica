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
        stage('Chef') {
            steps {
                echo 'Preparing chef...'
                sh 'scp -r /var/lib/jenkins/workspace/pipeline/dist/practica-lab-sa root@workstation.medinillag.com:~/chef-repo/cookbooks/first_cookbook/files/default/'
                sh 'chmod +x /var/lib/jenkins/workspace/pipeline/chef-agent.sh'
                sh 'ssh root@workstation.medinillag.com < /var/lib/jenkins/workspace/pipeline/chef-agent.sh'
            }
        }
    }
}