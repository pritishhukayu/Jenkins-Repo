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
        stage('List Files Repo A') {
            steps {
                // List files in Repo A (Jenkins-Repo)
                sh 'ls -la'
            }
        }

        stage('Build Docker Image Repo A') {
            steps {
                // Build the Docker image using the Dockerfile in Repo A
                sh 'docker build -t myrepo/myimage .'
            }
        }
        stage('Checkout Repo B') {
            steps {
                // Use the checkout scm step to clone repo B
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/pritishhukayu/jenkinstest.git']]])
            }
        }
        stage('List Files Repo B') {
            steps {
                // List files in Repo B (jenkinstest)
                sh 'ls -la'
            }
        }

        // stage('Build Docker Image Repo B') {
        //     steps {
        //         // Build the Docker image using the Dockerfile in Repo B
        //         sh 'docker build -t myrepo/myimage .'
        //     }
        // }
        // Add more stages for testing or deploying repo B here
    }
}
