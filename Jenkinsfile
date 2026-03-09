pipeline {
    agent any

    environment {
        GIT_REPO = 'https://github.com/Dhananjayakl/docker_jenkins_task.git'
        BRANCH = 'main'
    }


    stages {
        stage('Checkout repo') {
            steps {
                git branch: BRANCH,
                    url: GIT_REPO
            }
        }

        stage('Build') {
            steps {
                echo 'Building the Docker image...'
                sh 'sudo docker build -t nginx .'
                echo 'Creating and running the Docker container...'
                sh 'sudo docker run -d --name nginx -p 80:80 nginx'
            }
        }
    }
}