pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                git credentialsId: 'github-credentials', url: 'https://github.com/a-dhanush-007/httpd-deployment.git', branch: 'main'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-httpd-image .'
            }
        }
        stage('Deploy to Docker') {
            steps {
                sh 'docker run -d -p 80:80 --name my-httpd-container my-httpd-image'
            }
        }
    }
}
