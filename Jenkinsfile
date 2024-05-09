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
        stage('Checkout Repo A') {
            steps {
                // Checkout Repo A (Jenkins-Repo)
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/pritishhukayu/Jenkins-Repo.git']]])
            }
        }
        stage('Checkout Repo B') {
            steps {
                // Use the checkout scm step to clone repo B
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/pritishhukayu/jenkinstest.git']]])
            }
        }
        stage('Build Docker Image') {
            steps {
                // Build the Docker image using the Dockerfile in Repo A
                sh 'docker build -t myrepo/myimage -f Jenkins-Repo/Dockerfile Jenkins-Repo'
            }
        }
        // Add more stages for testing or deploying repo B here
    }
}
