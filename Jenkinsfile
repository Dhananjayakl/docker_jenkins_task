pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out the code...'
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/Dhananjayakl/docker_jenkins_task.git']]])
            }
        }

        stage('Build') {
            steps {
                echo 'Building the Docker image...'
                sh 'docker build -t nginx .'
                echo 'Creating and running the Docker container...'
                sh 'docker run -d --name nginx -p 80:80 nginx'
            }
        }
    }
}