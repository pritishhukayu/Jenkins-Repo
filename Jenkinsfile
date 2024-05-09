pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
        stage('Checkout Repo B') {
            steps {
                // Use the checkout scm step to clone repo B
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/pritishhukayu/jenkinstest.git']]])
            }
        }
        // Add more stages for building and testing repo B here
    }
}
